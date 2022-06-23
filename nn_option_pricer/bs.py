import numpy as np
from numpy.random import default_rng
import matplotlib.pyplot as plt
import jax.numpy as jnp
from jax.scipy.stats import norm
from jax import grad, hessian
import seaborn as sns
import pandas as pd
from utils import plot_preds, diagnosis_grads, diagnosis_pde, diagnosis_pred
from typing import List


def jax_bs_call(SK, sigma_tau):
    """
    SK: Moneyness $log(S/K)$ , log(forward / strike)
    sigma_tau: Time-scaled implied volatility $\sigma \sqrt{\tau} = \sigma \sqrt{T - t}$

    return: jax numpy array of BS call price
    """
    d1 = (SK / sigma_tau) + 0.5 * sigma_tau
    d2 = d1 - sigma_tau
    return jnp.exp(SK) * norm.cdf(d1) - norm.cdf(d2)


def jax_bs_digital(SK, sigma_tau):
    d1 = (SK / sigma_tau) + 0.5 * sigma_tau
    d2 = d1 - sigma_tau
    return norm.cdf(d2)


def bs_pdf(SK, sigma_tau):
    d1 = (SK / sigma_tau) + 0.5 * sigma_tau
    d2 = d1 - sigma_tau
    return norm.pdf(d2)


def first_order_greeks(moneyness, ttm):
    vec_1 = lambda x, y: grad(jax_bs_call, argnums=(0, 1))(x, y)
    delta, vega = jnp.vectorize(vec_1)(moneyness, ttm)
    return delta, vega


def second_order_greek(moneyness, ttm):
    vec_2 = lambda x, y: grad(grad(jax_bs_call))(x, y)
    gamma = jnp.vectorize(vec_2)(moneyness, ttm)
    return gamma


def bs_log_pde_err(moneyness, ttm, d_ttm, d_x, d2_x):
    fig, ax = plt.subplots()
    PDE_err = -d_ttm + ttm * (-d_x + d2_x)
    ax.scatter(moneyness, PDE_err)
    ax.set_title("PDE Error")
    return PDE_err


def bs_pde_err(moneyness, ttm, d_ttm, d_x, d2_x):
    fig, ax = plt.subplots()
    PDE_err = -d_ttm + 0.5 * ttm * (moneyness**2) * d2_x
    ax.scatter(moneyness, PDE_err)
    ax.set_title("PDE Error")
    return PDE_err


def gbm_step(F: float, dt: float, sigma: float, Z: float) -> float:
    """
    Exact simulation of GBM via log-euler scheme

    Parameters
    -------------
    F: Current value of forward
    dt: Timestep increment
    sigma: Black-Scholes implied volatility
    Z: Standard Normal Random Variable

    :return: Next forward value
    """
    return F - (0.5 * (sigma**2) * dt) + sigma * Z


def bs_eval_wrapper(
    X_df: pd.DataFrame,
    true_val: np.array,
    preds: np.array,
    grads: np.array,
    hessian_moneyness: np.array,
    feat_names: List[str] = ["log(S/K)", "ttm"],
    lower_bound: np.array = None,
    upper_bound: np.array = None,
    METHOD: str = "standard_ffn",
):
    """
    Prediction Error
    """
    f_to_i = lambda x: feat_names.index(x)

    moneyness = X_df["log(S/K)"]
    ttm = X_df["ttm"]

    all_stats = []

    try:
        plot_preds(
            moneyness=moneyness,
            ttm=ttm,
            lower_bound=lower_bound,
            upper_bound=upper_bound,
            true=true_val,
            preds=preds,
            method=METHOD,
        )
        pred_stats = diagnosis_pred(
            true_val, preds, lower_bound, upper_bound, METHOD
        ).add_prefix("pred_")
        all_stats += [pred_stats]
    except:
        print("Failed to evaluate prediction errors")

    """
    Error in PDE operator (Dynamic Arbitrage)
    """
    try:
        PDE_err = bs_log_pde_err(
            moneyness,
            ttm,
            grads[:, f_to_i("ttm")],
            grads[:, f_to_i("log(S/K)")],
            hessian_moneyness[:, f_to_i("log(S/K)")],
        )
        pde_stats = diagnosis_pde(PDE_err, METHOD).add_prefix("PDE_")
        all_stats += [pde_stats]
    except:
        print("Failed to compute PDE statistics")

    try:
        """
        Error in Greeks
        """
        grad_stats = pd.DataFrame(
            diagnosis_grads(hessian_moneyness, grads, f_to_i, "ttm", "log(S/K)"),
            index=[METHOD],
        )
        all_stats += [grad_stats]

        # NN gradients
        N_FEATS = len(feat_names)
        fig, ax = plt.subplots(ncols=N_FEATS, figsize=(5 * N_FEATS, 10), nrows=2)
        for i in range(N_FEATS):
            sns.scatterplot(x=X_df[feat_names[i]], y=grads[:, i], ax=ax[0, i])
            ax[0, i].set_title(f"Sensitivity - {feat_names[i]} - {METHOD}")

        fig2, ax2 = plt.subplots(ncols=2, figsize=(10, 5))
        ax2[0].scatter(X_df["log(S/K)"], hessian_moneyness[:, f_to_i("log(S/K)")])
        ax2[0].set_title(f"Gamma - {METHOD}")

        # Diagnosis function might fail if no true labels for greeks
        true_first_order = X_df[[f"true_d_{x}" for x in feat_names]].values
        for i in range(N_FEATS):
            sns.scatterplot(
                x=X_df[feat_names[i]],
                y=true_first_order[:, i] - grads[:, i],
                ax=ax[1, i],
            )
            ax[1, i].set_title(f"Error - {feat_names[i]} - {METHOD}")

        true_second_order = X_df["true_d2_log(S/K)"].values
        ax2[1].scatter(
            X_df["log(S/K)"],
            true_second_order - hessian_moneyness[:, f_to_i("log(S/K)")],
        )
        ax2[1].set_title(f"Error - Gamma - {METHOD}")

    except:
        print("Failed to compute gradient errors")
    """
    Display Statistics
    """
    res = pd.concat(all_stats, axis=1)
    return res


def make_GBM_dataset(
    param_space: dict, n_samples: int, n_times: int, T: float, seed: int = 42
) -> pd.DataFrame:
    """
    A function that generates a dataset for
    :param T: time-to-maturity
    :param sigma: Black-Scholes implied-vol for the same scale as T
    :param n_samples: number of parameter points to sample
    :param n_times: number of timesteps to simulate for log-eulr scheme
    :param seed: Seed for reproducibility

    :return: A dataframe of the input parameters $F_{t}/K, \sigma \sqrt{T - t}$  and call payoffs
    """
    rng = default_rng(seed)

    # time increments
    dt = T / n_times
    ts = np.linspace(0, T, n_times + 1)
    SKs = rng.uniform(
        np.log(param_space["log(S/K)"][0]),
        np.log(param_space["log(S/K)"][1]),
        n_samples,
    )  # log-moneyness
    sigma = rng.uniform(
        param_space["sigma"][0], param_space["sigma"][1], n_samples
    )  # volatilty
    # state space
    W = rng.standard_normal((n_samples, n_times)) * np.sqrt(dt)

    """
    Simulate St paths
    """
    Sts = np.zeros((n_samples, n_times + 1))
    Sts[:, 0] = SKs
    deltas = np.zeros((n_samples, n_times + 1))
    vegas = np.zeros((n_samples, n_times + 1))
    for i in range(n_times):
        Sts[:, i + 1] = gbm_step(Sts[:, i], dt, sigma, W[:, i])
        vec_fun = lambda x, dt, sigma, w: grad(gbm_step, argnums=0)(x, dt, sigma, w)
        deltas[:, i] = jnp.vectorize(vec_fun)(Sts[:, i], dt, sigma, W[:, i])
    bs_call_payoff = lambda x: jnp.maximum(jnp.exp(x) - 1.0, 0)
    y = np.array(bs_call_payoff(Sts[:, -1]))
    deltas[:, -1] = jnp.vectorize(grad(bs_call_payoff))(Sts[:, -1])
    final_grad = jnp.vectorize(grad(bs_call_payoff))(Sts[:, -1])
    deltas = np.cumprod(deltas[:, ::-1], axis=1) * np.array(final_grad).reshape((-1, 1))

    """
    Combine to create dataset
    """

    feat_names = ["log(S/K)", "ttm", "sigma"]
    f_to_i = lambda x: feat_names.index(x)

    # Fix terminal payoff, go forward in time
    y = np.maximum(np.exp(Sts[:, -1]) - 1, 0)
    Xs = np.vstack(
        [
            Sts[:, :-1].reshape(-1),
            (sigma.reshape((-1, 1)) * np.sqrt(T - ts[:-1])).reshape(-1),
            np.repeat(sigma, n_times).reshape(-1),
        ]
    ).T
    Xs = Xs.astype(np.float32)
    ys = np.repeat(y, n_times)
    print(Xs.shape, ys.shape)
    assert Xs.shape[0] == ys.shape[0]

    """
    Writeout to csv
    """
    X_df = pd.DataFrame(Xs, columns=feat_names)
    X_df["pathwise_delta"] = deltas[:, :-1].reshape(-1)
    X_df["call_payoff"] = ys
    X_df["call_true"] = jax_bs_call(Xs[:, 0], Xs[:, 1])
    X_df["digital_payoff"] = (ys > 0) * 1
    X_df["digital_true"] = jax_bs_digital(Xs[:, 0], Xs[:, 1])
    X_df["true_d_log(S/K)"], X_df["true_d_ttm"] = first_order_greeks(
        moneyness=Xs[:, 0], ttm=Xs[:, 1]
    )
    X_df["true_d2_log(S/K)"] = second_order_greek(moneyness=Xs[:, 0], ttm=Xs[:, 1])
    X_df["path"] = X_df.index // n_times
    return X_df
