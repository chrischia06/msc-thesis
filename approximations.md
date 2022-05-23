Das and Culkin (2017)


+ Stock price (S) $10 – $500, Strike price (K) $7 – $650, Maturity (T ) 1 day to 3 years,, Dividend rate (q) 0% – 3%, Risk free rate (r) 1% – 3%, Volatility (σ) 5% – 90% (annualised?)
+ Use homogeneity of Black-Scholes
+ 4 hidden layers of 100 neurons eaach, LeakyReLU, ELU, ReLU, ELU, dropout 0.25
+ 240,000 option prices vs 60,000 prices

Supervised Deep Neural Networks (DNNs) for Pricing/Calibration of Vanilla/Exotic Options Under Various Different Processes (2019)

+ GBM, Heston, Variance Gamma, VGSA
+ Mean Squared Error
+ Moneyness S_{0} / K, Time to maturity T, risk-free rate, dividend rate
+ Quasi Monte Carlo sampling: Halton sequence
+ Train directly on closed-form prices
+ MSE
+ Suggest (but do not explore) ConvNets for Asian / Path-dependent Options
+ "Li and Yuan (2017) have introduced identity mapping, by which SGD always converges to
the global minimum for a 2-layered neural network with ReLU activation function un-
der the standard weight initialization scheme"
+ "Under similar realistic assumptions,
Kawaguchi’s studies showed that all local minima are global minima using nonlinear acti-
vation functions" K. Kawaguchi, Deep learning without poor local minima, arXiv:1605.07110v3
+ "M. Soltanolkotabi, A. Javanmard, J. D. Lee, Theoretical insights into the optimization landscape of over-parameterized shallow neural networks, arXiv preprint arXiv:1707.04926"
+ 4 different training sizes, which are 40,000, 80,000, 160,000, and 240,00
+ Barriers, Americans
+ Test Cases: Interpolation, (2) deep-out-of-the-money, and (3) longer maturity
+ Moneyness v Call prices look linear as opposed to convex


Derivatives Pricing via Machine Learning 	Tingting Ye, Liangliang Zhang (2019)
+ https://www.scirp.org/journal/paperinformation.aspx?paperid=94637
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3352688
+  BSDEs, PIDEs
+ Hilbert space formulation
+ Does a plot of prediction v price
+ Experiments: Heston for a single set of parameters

Function approximation for option pricing and risk management Methods, theory and applications.	Christian Potz	2020	https://qmro.qmul.ac.uk/xmlui/handle/123456789/71039

+ Chebyshev polynomial have certain useful properties


Zeron, M. and I. Ruiz (2017). Chebyshev Methods for Ultra - efficient Risk Calculations.
MoCaX Intelligence Working Paper.

Gaß, M., K. Glau, M. Mahlstedt, and M. Mair (2015, May). Chebyshev Interpolation for
Parametric Option Pricing. ArXiv e-prints

Deeply Learning Derivatives
+ Ryan Ferguson, Andrew Green
+ https://arxiv.org/abs/1809.02233
+ Basket option
+ Riskfuel, Scotiabank
+ https://www.linkedin.com/feed/update/urn:li:activity:6658758503500390400/
+ https://azure.microsoft.com/en-us/blog/azure-gpus-with-riskfuels-technology-offer-20-million-times-faster-valuation-of-derivatives/
+ https://www.youtube.com/watch?v=ewCDNokzzOU
+ Basket option


Pricing and hedging derivative securities with neural networks and a homogeneity hint, Rene Garcia, Ramazan Gencay (2000)
+ http://yoksis.bilkent.edu.tr/doi_getpdf/articles/10.1016-S0304-4076(99)00018-4.pdf
+ One set of parameters, GBM

Pricing and Hedging Derivative Securities with Neural Networks: Bayesian Regularization, Early Stopping, and Bagging, Ramazan Gençay and Min Qi (2001)

+ 


Option Pricing with Modular Neural Networks

+ http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.87.3384&rep=rep1&type=pdf
+ Nikola Gradojevic, Ramazan Geņcay, Dragan Kukolj
+ the modular neural network seems to be similar to a gated neural network or ensemble methods


"Learning Minimum Variance Discrete Hedging Directly from Market	Ke Nian, Thomas Coleman, Yuying Li	2017

+ Learning from market data
+ radial basis function , MSE



Option Pricing Using Artificial Neural Networks : an Australian Perspective	Tobias Hahn	2014	https://pure.bond.edu.au/ws/portalfiles/portal/18243185/Option_Pricing_Using_Artificial_Neural_Networks.pdf


A neural network approach to option pricing F. Mostafa & T. Dillon
+ https://www.witpress.com/Secure/elibrary/papers/CF08/CF08008FU1.pdf

Pricing and Hedging Derivative Securities with Neural Networks: Bayesian Regularization, Early Stopping, and Bagging Ramazan Gençay and Min Qi 2001
+ https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.379.4379&rep=rep1&type=pdf
+ "Modern" NN training techniques, but remarkable thing is the paper is dated 2001!



**Daniel Bloch Option Pricing With Machine Learning (2019)**

+ 

Karatas T., Oskoui A., Hirsa A., Supervised deep neural networks for pricing/calibration of vanilla/exotic
options under various different processes

+ Americans, Barriers

Brostrom A., Kristiansson R., Exotic derivatives and deep learning

+ Rainbow Options

Learning the random variables in Monte Carlo simulations with stochastic gradient descent: Machine learning for parametric PDEs and financial derivative pricing 

+ Authors present that in the BS case the Learning Random Variables (LRV) approach outperforms ANN approximation and (Q)MC methods in the L1 and Linfinity norms
+ However, the LRV approach appears to be much more slower

Alternatives to Deep Neural Networks for Function Approximations in Finance

+ Alexandre Antonov, Vladimir Piterbarg

Pricing

Efficient Computation of Exposure Profiles for Counterparty Credit Risk

+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2395183


Speed-up credit exposure calculations for pricing and risk management
+ https://arxiv.org/pdf/1912.01280.pdf

Neural Q-learning for solving elliptic PDEs
+ https://arxiv.org/pdf/2203.17128.pdf

Gamma and Vega Hedging Using Deep Distributional Reinforcement Learning
+ https://arxiv.org/abs/2205.05614v1



Deep Stochastic Optimization in Finance
+ https://arxiv.org/abs/2205.04604v1

Neural Optimal Stopping Boundary
+ https://arxiv.org/pdf/2205.04595v1.pdf

RLOP: RL Methods in Option Pricing from a Mathematical Perspective
+ https://github.com/owen8877/RLOP

On Multilevel and Control Variate Monte Carlo Methods for Option Pricing under the Rough Heston Model

+ https://mdpi-res.com/d_attachment/mathematics/mathematics-09-02930/article_deploy/mathematics-09-02930-v3.pdf


Stacked Monte Carlo for option pricing
+ https://www.arxiv-vanity.com/papers/1903.10795/

Deep calibration of the quadratic rough Heston model
+ https://arxiv.org/abs/2107.01611

the Performance of Artificial Neural Networks on Rough Heston Model
+ https://www.datasim.nl/application/files/3516/0614/0758/Finalthesis.pdf

LSM Reloaded - Differentiate xVA on your iPad Mini
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2966155

Optimally weighted loss functions for solving PDEs with Neural Networks
+ https://arxiv.org/abs/2002.06269

Deep Hedging: Learning Risk-Neutral Implied Volatility Dynamics
+ https://arxiv.org/pdf/2103.11948.pdf

Piecewise-Linear Activations or Analytic Activation Functions: Which Produce More Expressive Neural Networks?
+ https://www.researchgate.net/publication/360137104_Piecewise-Linear_Activations_or_Analytic_Activation_Functions_Which_Produce_More_Expressive_Neural_Networks

The Swap Market Model with Local Stochastic Volatility
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2912558
+ https://www.risk.net/our-take/5747001/swaptions-vol-modelling-tweak-opens-up-pricing-possibilities

Pricing Swaptions under the LIBOR Market Model
of Interest Rates with Local-Stochastic Volatility Models
+ https://core.ac.uk/download/pdf/6420484.pdf

 Code for the paper "Effective Markovian Projection: Application to CMS Spread Options and Mid-Curve Swaptions", Felpel, Kienitz, McWalter 

 A machine learning approach to portfolio pricing and risk
management for high-dimensional problems
+ https://arxiv.org/pdf/2004.14149v4.pdf

Introduction to Solving Quant Finance Problems with Time-Stepped FBSDE and Deep Learning
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3494359

Machine learning
techniques in interest
rate modelling
+ https://www.duo.uio.no/bitstream/handle/10852/78735/1/LIBOR.pdf

GP regression for arbitrage-free construction of the swaption
cube.
+ https://www.nexialog.com/wp-content/uploads/2022/03/Article-Kriging-swaption-cube.pdf

Deep Learning-Based BSDE Solver for Libor Market Model with Application to Bermudan Swaption Pricing and Hedging
+ https://arxiv.org/abs/1807.06622

The CV Makes the Difference – Control Variates for Neural Networks
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3527314
https://github.com/Lapsilago/EffectiveMarkovianProjection	


Learning Bermudans
+ https://arxiv.org/abs/2105.00655

Deep calibration of financial models: turning theory into practice
+ https://link.springer.com/article/10.1007/s11147-021-09183-7

Computing Sensitivities of CVA Using
Adjoint Algorithmic Differentiation
+ https://www.nag.com/market/articles/computing-sensitivities-of-cva-using-aad.pdf

Turbo Charging the Cheyette Model
+ https://papers.ssrn.com/sol3/papers.cfm?abstract_id=1719142

Swaption Pricing Approximations for
LIBOR Market Models
+ 

https://uk.mathworks.com/help/fininst/price-bermudan-swaptions-with-different-interest-rate-models.html
	

http://www.columbia.edu/~mh2078/market_models.pdf



MULTIVARIATE POLYNOMIAL APPROXIMATION
IN THE HYPERCUBE

+ https://people.maths.ox.ac.uk/trefethen/hypercube_published.pdf

NN for Cross-Currency Options
under the correlated SABR Mode
+ https://www.cqfinstitute.org/sites/default/files/3%20-%20Katia%20Babbar%20SABR_CrossSmile_NN_QuantInsights_2021_FINAL.pdf

CALIBRATION OF
LOCAL-STOCHASTIC
VOLATILITY MODELS
WITH NEURAL NETWORKS
+ https://amslaurea.unibo.it/23052/1/Calibration%20of%20local%20stochastic%20volatility%20models%20with%20neural%20networks%20-%20Tiziano%20todeschi.pdf


https://www.bloomberg.com/professional/blog/handling-extrapolation-with-asymptotic-controls-in-neural-nets/

Rough volatility models:
Monte Carlo, Asymptotics and
Deep Calibration
+ https://depositonce.tu-berlin.de/bitstream/11303/9364/4/stemper_benjamin.pdf

https://github.com/ikossaczky/DNN_for_American_Option_Pricing

https://github.com/ZewenShen/hdp

Hedging under rough volatility
+ https://arxiv.org/abs/2105.04073

Quantitative Finance Under
Rough Volatility
+ https://www.theses.fr/2018SORUS172.pdf

Optimally weighted loss functions for solving PDEs with Neural Networks
+ https://www.sciencedirect.com/science/article/abs/pii/S0377042721005100

Convergence of a robust deep FBSDE method for stochastic control
+ https://arxiv.org/abs/2201.06854

 The Seven-League Scheme: Deep Learning for Large Time Step Monte Carlo Simulations of Stochastic Differential Equations † 
 + https://www.mdpi.com/2227-9091/10/3/47

 Deep learning for CVA computations of large portfolios of financial derivatives
 + https://www.sciencedirect.com/science/article/pii/S0096300321004884


A deep learning approach for computations of exposure profiles for high-dimensional Bermudan options
+ https://www.sciencedirect.com/science/article/pii/S0096300321004215

The One Step Malliavin scheme: new discretization of BSDEs implemented with deep learning regressions
+ https://arxiv.org/abs/2110.05421

Reduced order modeling for parameterized time-dependent PDEs using spatially and memory aware deep learning
+ https://www.sciencedirect.com/science/article/pii/S1877750321000934

Financial Option Valuation by Unsupervised Learning with Artificial Neural Networks 
+ https://www.mdpi.com/2227-7390/9/1/46

A neural network-based framework for financial model calibration
+ https://link.springer.com/article/10.1186/s13362-019-0066-7

 Pricing Options and Computing Implied Volatilities using Neural Networks 
 + https://www.mdpi.com/2227-9091/7/1/16 

 https://github.com/DovaX/artificial-neural-networks-in-option-pricing/blob/master/Artifical%20Neural%20Networks%20in%20Option%20Pricing.pdf

+ https://calebmigosi.medium.com/build-the-heston-model-from-scratch-in-python-part-ii-5971b9971cbe
+ https://github.com/tcpedersen/anderson-lake-python
+ https://github.com/khrapovs/fangoosterlee/blob/master/fangoosterlee/heston.py
+ https://github.com/larsphilipp/AdvNum19_COS-FFT
+ https://alexrachnog.medium.com/meta-learning-in-finance-boosting-models-calibration-with-deep-learning-47c98d0d158c
+ https://github.com/wilsonfreitas/heston-model/blob/master/Python/heston.py
+ https://calebmigosi.medium.com/build-the-heston-model-from-scratch-in-python-part-ii-5971b9971cbe
+ https://perswww.kuleuven.be/~u0009713/HestonTrap.pdf

# Asymptotics

**Hideharu Funahashi, Artificial neural network for option pricing with and without asymptotic correction (2020)**
+ https://www.tandfonline.com/doi/abs/10.1080/14697688.2020.1812702?journalCode=rquf20
+ Funahashi, H., A chaos expansion approach under hybrid volatility models. Quant. Finance, 2014, "The residual term, D, is a smooth and infinitely differentiable function, which is a sum of the multiplication of polynomials by a CDF and PDF of the standard Brownian motion."