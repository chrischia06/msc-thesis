Υρ	
σΔ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
@
Softplus
features"T
activations"T"
Ttype:
2
Α
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68Σ

batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_24/gamma

0batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_24/gamma*
_output_shapes
:*
dtype0

batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_24/beta

/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes
:*
dtype0

"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_24/moving_mean

6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes
:*
dtype0
€
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_24/moving_variance

:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes
:*
dtype0
p

ttm/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name
ttm/kernel
i
ttm/kernel/Read/ReadVariableOpReadVariableOp
ttm/kernel*
_output_shapes

:*
dtype0
h
ttm/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
ttm/bias
a
ttm/bias/Read/ReadVariableOpReadVariableOpttm/bias*
_output_shapes
:*
dtype0
|
moneyness/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namemoneyness/kernel
u
$moneyness/kernel/Read/ReadVariableOpReadVariableOpmoneyness/kernel*
_output_shapes

:*
dtype0
t
moneyness/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemoneyness/bias
m
"moneyness/bias/Read/ReadVariableOpReadVariableOpmoneyness/bias*
_output_shapes
:*
dtype0
{
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_32/kernel
t
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel*
_output_shapes
:	
*
dtype0
s
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_32/bias
l
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes	
:
*
dtype0
{
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_33/kernel
t
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel*
_output_shapes
:	
*
dtype0
s
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_33/bias
l
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes	
:
*
dtype0
{
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
* 
shared_namedense_34/kernel
t
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes
:	
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0

#Adam/batch_normalization_24/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_24/gamma/m

7Adam/batch_normalization_24/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_24/gamma/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_24/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_24/beta/m

6Adam/batch_normalization_24/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_24/beta/m*
_output_shapes
:*
dtype0

Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_32/kernel/m

*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m*
_output_shapes
:	
*
dtype0

Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_32/bias/m
z
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes	
:
*
dtype0

Adam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_33/kernel/m

*Adam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/m*
_output_shapes
:	
*
dtype0

Adam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_33/bias/m
z
(Adam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/m*
_output_shapes	
:
*
dtype0

Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_34/kernel/m

*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m*
_output_shapes
:	
*
dtype0

#Adam/batch_normalization_24/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_24/gamma/v

7Adam/batch_normalization_24/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_24/gamma/v*
_output_shapes
:*
dtype0

"Adam/batch_normalization_24/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_24/beta/v

6Adam/batch_normalization_24/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_24/beta/v*
_output_shapes
:*
dtype0

Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_32/kernel/v

*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v*
_output_shapes
:	
*
dtype0

Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_32/bias/v
z
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes	
:
*
dtype0

Adam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_33/kernel/v

*Adam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/v*
_output_shapes
:	
*
dtype0

Adam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_33/bias/v
z
(Adam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/v*
_output_shapes	
:
*
dtype0

Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*'
shared_nameAdam/dense_34/kernel/v

*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v*
_output_shapes
:	
*
dtype0

NoOpNoOp
ΑI
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*όH
valueςHBοH BθH
Π
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
Υ
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*
¦

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*
¦

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
¦

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*

=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 


Ckernel
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses*
½
Jiter

Kbeta_1

Lbeta_2
	Mdecaymm-m.m5m6mCmvv-v.v5v6vCv*
b
0
1
2
3
4
5
%6
&7
-8
.9
510
611
C12*
5
0
1
-2
.3
54
65
C6*
* 
°
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Sserving_default* 
* 
ke
VARIABLE_VALUEbatch_normalization_24/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_24/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_24/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_24/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
0
1
2
3*

0
1*
* 

Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
ZT
VARIABLE_VALUE
ttm/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEttm/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*
* 
* 

Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEmoneyness/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEmoneyness/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*
* 
* 

^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_32/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_32/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1*

-0
.1*
* 

cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_33/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_33/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

50
61*

50
61*
* 

hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*

C0*

C0*
* 

rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
.
0
1
2
3
%4
&5*
<
0
1
2
3
4
5
6
7*

w0
x1
y2*
* 
* 
* 

0
1*
* 
* 
* 
* 

0
1*
* 
* 
* 
* 

%0
&1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	ztotal
	{count
|	variables
}	keras_api*
K
	~total
	count

_fn_kwargs
	variables
	keras_api*
<

total

count
	variables
	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

z0
{1*

|	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

~0
1*

	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*

VARIABLE_VALUE#Adam/batch_normalization_24/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_24/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_32/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_32/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_33/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_33/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_34/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_24/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_24/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_32/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_32/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_33/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_33/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_34/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_9Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
ά
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_9&batch_normalization_24/moving_variancebatch_normalization_24/gamma"batch_normalization_24/moving_meanbatch_normalization_24/betamoneyness/kernelmoneyness/bias
ttm/kernelttm/biasdense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_349195
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0batch_normalization_24/gamma/Read/ReadVariableOp/batch_normalization_24/beta/Read/ReadVariableOp6batch_normalization_24/moving_mean/Read/ReadVariableOp:batch_normalization_24/moving_variance/Read/ReadVariableOpttm/kernel/Read/ReadVariableOpttm/bias/Read/ReadVariableOp$moneyness/kernel/Read/ReadVariableOp"moneyness/bias/Read/ReadVariableOp#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp7Adam/batch_normalization_24/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_24/beta/m/Read/ReadVariableOp*Adam/dense_32/kernel/m/Read/ReadVariableOp(Adam/dense_32/bias/m/Read/ReadVariableOp*Adam/dense_33/kernel/m/Read/ReadVariableOp(Adam/dense_33/bias/m/Read/ReadVariableOp*Adam/dense_34/kernel/m/Read/ReadVariableOp7Adam/batch_normalization_24/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_24/beta/v/Read/ReadVariableOp*Adam/dense_32/kernel/v/Read/ReadVariableOp(Adam/dense_32/bias/v/Read/ReadVariableOp*Adam/dense_33/kernel/v/Read/ReadVariableOp(Adam/dense_33/bias/v/Read/ReadVariableOp*Adam/dense_34/kernel/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_349513
¨
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_variance
ttm/kernelttm/biasmoneyness/kernelmoneyness/biasdense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kernel	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotalcounttotal_1count_1total_2count_2#Adam/batch_normalization_24/gamma/m"Adam/batch_normalization_24/beta/mAdam/dense_32/kernel/mAdam/dense_32/bias/mAdam/dense_33/kernel/mAdam/dense_33/bias/mAdam/dense_34/kernel/m#Adam/batch_normalization_24/gamma/v"Adam/batch_normalization_24/beta/vAdam/dense_32/kernel/vAdam/dense_32/bias/vAdam/dense_33/kernel/vAdam/dense_33/bias/vAdam/dense_34/kernel/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_349634σ€
Θ	
φ
E__inference_moneyness_layer_call_and_return_conditional_losses_348618

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?%

C__inference_model_8_layer_call_and_return_conditional_losses_348945
input_9+
batch_normalization_24_348911:+
batch_normalization_24_348913:+
batch_normalization_24_348915:+
batch_normalization_24_348917:"
moneyness_348920:
moneyness_348922:

ttm_348925:

ttm_348927:"
dense_32_348930:	

dense_32_348932:	
"
dense_33_348935:	

dense_33_348937:	
"
dense_34_348941:	

identity’.batch_normalization_24/StatefulPartitionedCall’ dense_32/StatefulPartitionedCall’ dense_33/StatefulPartitionedCall’ dense_34/StatefulPartitionedCall’!moneyness/StatefulPartitionedCall’ttm/StatefulPartitionedCallλ
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCallinput_9batch_normalization_24_348911batch_normalization_24_348913batch_normalization_24_348915batch_normalization_24_348917*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_348534₯
!moneyness/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0moneyness_348920moneyness_348922*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_moneyness_layer_call_and_return_conditional_losses_348618
ttm/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0
ttm_348925
ttm_348927*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ttm_layer_call_and_return_conditional_losses_348634
 dense_32/StatefulPartitionedCallStatefulPartitionedCall$ttm/StatefulPartitionedCall:output:0dense_32_348930dense_32_348932*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_348651
 dense_33/StatefulPartitionedCallStatefulPartitionedCall*moneyness/StatefulPartitionedCall:output:0dense_33_348935dense_33_348937*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_348668
multiply_4/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_multiply_4_layer_call_and_return_conditional_losses_348680ϊ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#multiply_4/PartitionedCall:output:0dense_34_348941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_348689x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????’
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall"^moneyness/StatefulPartitionedCall^ttm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2F
!moneyness/StatefulPartitionedCall!moneyness/StatefulPartitionedCall2:
ttm/StatefulPartitionedCallttm/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
ίY
λ
C__inference_model_8_layer_call_and_return_conditional_losses_349162

inputsL
>batch_normalization_24_assignmovingavg_readvariableop_resource:N
@batch_normalization_24_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_24_batchnorm_mul_readvariableop_resource:F
8batch_normalization_24_batchnorm_readvariableop_resource::
(moneyness_matmul_readvariableop_resource:7
)moneyness_biasadd_readvariableop_resource:4
"ttm_matmul_readvariableop_resource:1
#ttm_biasadd_readvariableop_resource::
'dense_32_matmul_readvariableop_resource:	
7
(dense_32_biasadd_readvariableop_resource:	
:
'dense_33_matmul_readvariableop_resource:	
7
(dense_33_biasadd_readvariableop_resource:	
:
'dense_34_matmul_readvariableop_resource:	

identity’&batch_normalization_24/AssignMovingAvg’5batch_normalization_24/AssignMovingAvg/ReadVariableOp’(batch_normalization_24/AssignMovingAvg_1’7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp’/batch_normalization_24/batchnorm/ReadVariableOp’3batch_normalization_24/batchnorm/mul/ReadVariableOp’dense_32/BiasAdd/ReadVariableOp’dense_32/MatMul/ReadVariableOp’dense_33/BiasAdd/ReadVariableOp’dense_33/MatMul/ReadVariableOp’dense_34/MatMul/ReadVariableOp’ moneyness/BiasAdd/ReadVariableOp’moneyness/MatMul/ReadVariableOp’ttm/BiasAdd/ReadVariableOp’ttm/MatMul/ReadVariableOp
5batch_normalization_24/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ­
#batch_normalization_24/moments/meanMeaninputs>batch_normalization_24/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
+batch_normalization_24/moments/StopGradientStopGradient,batch_normalization_24/moments/mean:output:0*
T0*
_output_shapes

:΅
0batch_normalization_24/moments/SquaredDifferenceSquaredDifferenceinputs4batch_normalization_24/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????
9batch_normalization_24/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: γ
'batch_normalization_24/moments/varianceMean4batch_normalization_24/moments/SquaredDifference:z:0Bbatch_normalization_24/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
&batch_normalization_24/moments/SqueezeSqueeze,batch_normalization_24/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ‘
(batch_normalization_24/moments/Squeeze_1Squeeze0batch_normalization_24/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_24/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<°
5batch_normalization_24/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_24_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ζ
*batch_normalization_24/AssignMovingAvg/subSub=batch_normalization_24/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_24/moments/Squeeze:output:0*
T0*
_output_shapes
:½
*batch_normalization_24/AssignMovingAvg/mulMul.batch_normalization_24/AssignMovingAvg/sub:z:05batch_normalization_24/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_24/AssignMovingAvgAssignSubVariableOp>batch_normalization_24_assignmovingavg_readvariableop_resource.batch_normalization_24/AssignMovingAvg/mul:z:06^batch_normalization_24/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_24/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<΄
7batch_normalization_24/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_24_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Μ
,batch_normalization_24/AssignMovingAvg_1/subSub?batch_normalization_24/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_24/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Γ
,batch_normalization_24/AssignMovingAvg_1/mulMul0batch_normalization_24/AssignMovingAvg_1/sub:z:07batch_normalization_24/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_24/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_24_assignmovingavg_1_readvariableop_resource0batch_normalization_24/AssignMovingAvg_1/mul:z:08^batch_normalization_24/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ά
$batch_normalization_24/batchnorm/addAddV21batch_normalization_24/moments/Squeeze_1:output:0/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_24/batchnorm/RsqrtRsqrt(batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ή
$batch_normalization_24/batchnorm/mulMul*batch_normalization_24/batchnorm/Rsqrt:y:0;batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
&batch_normalization_24/batchnorm/mul_1Mulinputs(batch_normalization_24/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????­
&batch_normalization_24/batchnorm/mul_2Mul/batch_normalization_24/moments/Squeeze:output:0(batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes
:€
/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0΅
$batch_normalization_24/batchnorm/subSub7batch_normalization_24/batchnorm/ReadVariableOp:value:0*batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_24/batchnorm/add_1AddV2*batch_normalization_24/batchnorm/mul_1:z:0(batch_normalization_24/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????
moneyness/MatMul/ReadVariableOpReadVariableOp(moneyness_matmul_readvariableop_resource*
_output_shapes

:*
dtype0‘
moneyness/MatMulMatMul*batch_normalization_24/batchnorm/add_1:z:0'moneyness/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
 moneyness/BiasAdd/ReadVariableOpReadVariableOp)moneyness_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
moneyness/BiasAddBiasAddmoneyness/MatMul:product:0(moneyness/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
ttm/MatMul/ReadVariableOpReadVariableOp"ttm_matmul_readvariableop_resource*
_output_shapes

:*
dtype0

ttm/MatMulMatMul*batch_normalization_24/batchnorm/add_1:z:0!ttm/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
ttm/BiasAdd/ReadVariableOpReadVariableOp#ttm_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
ttm/BiasAddBiasAddttm/MatMul:product:0"ttm/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_32/MatMulMatMulttm/BiasAdd:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????

dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
i
dense_32/SigmoidSigmoiddense_32/BiasAdd:output:0*
T0*(
_output_shapes
:?????????

dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_33/MatMulMatMulmoneyness/BiasAdd:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????

dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
k
dense_33/SoftplusSoftplusdense_33/BiasAdd:output:0*
T0*(
_output_shapes
:?????????

multiply_4/mulMuldense_32/Sigmoid:y:0dense_33/Softplus:activations:0*
T0*(
_output_shapes
:?????????

dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_34/MatMulMatMulmultiply_4/mul:z:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_34/MatMul:product:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp'^batch_normalization_24/AssignMovingAvg6^batch_normalization_24/AssignMovingAvg/ReadVariableOp)^batch_normalization_24/AssignMovingAvg_18^batch_normalization_24/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_24/batchnorm/ReadVariableOp4^batch_normalization_24/batchnorm/mul/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp^dense_34/MatMul/ReadVariableOp!^moneyness/BiasAdd/ReadVariableOp ^moneyness/MatMul/ReadVariableOp^ttm/BiasAdd/ReadVariableOp^ttm/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2P
&batch_normalization_24/AssignMovingAvg&batch_normalization_24/AssignMovingAvg2n
5batch_normalization_24/AssignMovingAvg/ReadVariableOp5batch_normalization_24/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_24/AssignMovingAvg_1(batch_normalization_24/AssignMovingAvg_12r
7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp7batch_normalization_24/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_24/batchnorm/ReadVariableOp/batch_normalization_24/batchnorm/ReadVariableOp2j
3batch_normalization_24/batchnorm/mul/ReadVariableOp3batch_normalization_24/batchnorm/mul/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2D
 moneyness/BiasAdd/ReadVariableOp moneyness/BiasAdd/ReadVariableOp2B
moneyness/MatMul/ReadVariableOpmoneyness/MatMul/ReadVariableOp28
ttm/BiasAdd/ReadVariableOpttm/BiasAdd/ReadVariableOp26
ttm/MatMul/ReadVariableOpttm/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
ξ

Ό
$__inference_signature_wrapper_349195
input_9
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:	

	unknown_9:	


unknown_10:	


unknown_11:	

identity’StatefulPartitionedCallΘ
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_348510o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
¬%

C__inference_model_8_layer_call_and_return_conditional_losses_348982
input_9+
batch_normalization_24_348948:+
batch_normalization_24_348950:+
batch_normalization_24_348952:+
batch_normalization_24_348954:"
moneyness_348957:
moneyness_348959:

ttm_348962:

ttm_348964:"
dense_32_348967:	

dense_32_348969:	
"
dense_33_348972:	

dense_33_348974:	
"
dense_34_348978:	

identity’.batch_normalization_24/StatefulPartitionedCall’ dense_32/StatefulPartitionedCall’ dense_33/StatefulPartitionedCall’ dense_34/StatefulPartitionedCall’!moneyness/StatefulPartitionedCall’ttm/StatefulPartitionedCallι
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCallinput_9batch_normalization_24_348948batch_normalization_24_348950batch_normalization_24_348952batch_normalization_24_348954*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_348581₯
!moneyness/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0moneyness_348957moneyness_348959*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_moneyness_layer_call_and_return_conditional_losses_348618
ttm/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0
ttm_348962
ttm_348964*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ttm_layer_call_and_return_conditional_losses_348634
 dense_32/StatefulPartitionedCallStatefulPartitionedCall$ttm/StatefulPartitionedCall:output:0dense_32_348967dense_32_348969*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_348651
 dense_33/StatefulPartitionedCallStatefulPartitionedCall*moneyness/StatefulPartitionedCall:output:0dense_33_348972dense_33_348974*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_348668
multiply_4/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_multiply_4_layer_call_and_return_conditional_losses_348680ϊ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#multiply_4/PartitionedCall:output:0dense_34_348978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_348689x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????’
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall"^moneyness/StatefulPartitionedCall^ttm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2F
!moneyness/StatefulPartitionedCall!moneyness/StatefulPartitionedCall2:
ttm/StatefulPartitionedCallttm/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9

Ώ
(__inference_model_8_layer_call_fn_349017

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:	

	unknown_9:	


unknown_10:	


unknown_11:	

identity’StatefulPartitionedCallι
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_348694o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Δ

*__inference_moneyness_layer_call_fn_349303

inputs
unknown:
	unknown_0:
identity’StatefulPartitionedCallΪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_moneyness_layer_call_and_return_conditional_losses_348618o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Β	
π
?__inference_ttm_layer_call_and_return_conditional_losses_349294

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Η
r
F__inference_multiply_4_layer_call_and_return_conditional_losses_349365
inputs_0
inputs_1
identityQ
mulMulinputs_0inputs_1*
T0*(
_output_shapes
:?????????
P
IdentityIdentitymul:z:0*
T0*(
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????
:?????????
:R N
(
_output_shapes
:?????????

"
_user_specified_name
inputs/0:RN
(
_output_shapes
:?????????

"
_user_specified_name
inputs/1
%
λ
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_349275

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
¬
W
+__inference_multiply_4_layer_call_fn_349359
inputs_0
inputs_1
identityΏ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_multiply_4_layer_call_and_return_conditional_losses_348680a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????
:?????????
:R N
(
_output_shapes
:?????????

"
_user_specified_name
inputs/0:RN
(
_output_shapes
:?????????

"
_user_specified_name
inputs/1
Ζ

)__inference_dense_33_layer_call_fn_349342

inputs
unknown:	

	unknown_0:	

identity’StatefulPartitionedCallΪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_348668p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Β	
π
?__inference_ttm_layer_call_and_return_conditional_losses_348634

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Ο
±
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_348534

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
―

χ
D__inference_dense_33_layer_call_and_return_conditional_losses_349353

inputs1
matmul_readvariableop_resource:	
.
biasadd_readvariableop_resource:	

identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
Y
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:?????????
f
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
¨
?
7__inference_batch_normalization_24_layer_call_fn_349221

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_348581o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
M
Τ
__inference__traced_save_349513
file_prefix;
7savev2_batch_normalization_24_gamma_read_readvariableop:
6savev2_batch_normalization_24_beta_read_readvariableopA
=savev2_batch_normalization_24_moving_mean_read_readvariableopE
Asavev2_batch_normalization_24_moving_variance_read_readvariableop)
%savev2_ttm_kernel_read_readvariableop'
#savev2_ttm_bias_read_readvariableop/
+savev2_moneyness_kernel_read_readvariableop-
)savev2_moneyness_bias_read_readvariableop.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableopB
>savev2_adam_batch_normalization_24_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_24_beta_m_read_readvariableop5
1savev2_adam_dense_32_kernel_m_read_readvariableop3
/savev2_adam_dense_32_bias_m_read_readvariableop5
1savev2_adam_dense_33_kernel_m_read_readvariableop3
/savev2_adam_dense_33_bias_m_read_readvariableop5
1savev2_adam_dense_34_kernel_m_read_readvariableopB
>savev2_adam_batch_normalization_24_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_24_beta_v_read_readvariableop5
1savev2_adam_dense_32_kernel_v_read_readvariableop3
/savev2_adam_dense_32_bias_v_read_readvariableop5
1savev2_adam_dense_33_kernel_v_read_readvariableop3
/savev2_adam_dense_33_bias_v_read_readvariableop5
1savev2_adam_dense_34_kernel_v_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: δ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*
valueB&B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΉ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ©
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_batch_normalization_24_gamma_read_readvariableop6savev2_batch_normalization_24_beta_read_readvariableop=savev2_batch_normalization_24_moving_mean_read_readvariableopAsavev2_batch_normalization_24_moving_variance_read_readvariableop%savev2_ttm_kernel_read_readvariableop#savev2_ttm_bias_read_readvariableop+savev2_moneyness_kernel_read_readvariableop)savev2_moneyness_bias_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop>savev2_adam_batch_normalization_24_gamma_m_read_readvariableop=savev2_adam_batch_normalization_24_beta_m_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop1savev2_adam_dense_33_kernel_m_read_readvariableop/savev2_adam_dense_33_bias_m_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop>savev2_adam_batch_normalization_24_gamma_v_read_readvariableop=savev2_adam_batch_normalization_24_beta_v_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop1savev2_adam_dense_33_kernel_v_read_readvariableop/savev2_adam_dense_33_bias_v_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesψ
υ: :::::::::	
:
:	
:
:	
: : : : : : : : : : :::	
:
:	
:
:	
:::	
:
:	
:
:	
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%	!

_output_shapes
:	
:!


_output_shapes	
:
:%!

_output_shapes
:	
:!

_output_shapes	
:
:%!

_output_shapes
:	
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	
:!

_output_shapes	
:
:%!

_output_shapes
:	
:!

_output_shapes	
:
:%!

_output_shapes
:	
: 

_output_shapes
::  

_output_shapes
::%!!

_output_shapes
:	
:!"

_output_shapes	
:
:%#!

_output_shapes
:	
:!$

_output_shapes	
:
:%%!

_output_shapes
:	
:&

_output_shapes
: 
«%

C__inference_model_8_layer_call_and_return_conditional_losses_348694

inputs+
batch_normalization_24_348599:+
batch_normalization_24_348601:+
batch_normalization_24_348603:+
batch_normalization_24_348605:"
moneyness_348619:
moneyness_348621:

ttm_348635:

ttm_348637:"
dense_32_348652:	

dense_32_348654:	
"
dense_33_348669:	

dense_33_348671:	
"
dense_34_348690:	

identity’.batch_normalization_24/StatefulPartitionedCall’ dense_32/StatefulPartitionedCall’ dense_33/StatefulPartitionedCall’ dense_34/StatefulPartitionedCall’!moneyness/StatefulPartitionedCall’ttm/StatefulPartitionedCallκ
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_24_348599batch_normalization_24_348601batch_normalization_24_348603batch_normalization_24_348605*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_348534₯
!moneyness/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0moneyness_348619moneyness_348621*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_moneyness_layer_call_and_return_conditional_losses_348618
ttm/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0
ttm_348635
ttm_348637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ttm_layer_call_and_return_conditional_losses_348634
 dense_32/StatefulPartitionedCallStatefulPartitionedCall$ttm/StatefulPartitionedCall:output:0dense_32_348652dense_32_348654*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_348651
 dense_33/StatefulPartitionedCallStatefulPartitionedCall*moneyness/StatefulPartitionedCall:output:0dense_33_348669dense_33_348671*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_348668
multiply_4/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_multiply_4_layer_call_and_return_conditional_losses_348680ϊ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#multiply_4/PartitionedCall:output:0dense_34_348690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_348689x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????’
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall"^moneyness/StatefulPartitionedCall^ttm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2F
!moneyness/StatefulPartitionedCall!moneyness/StatefulPartitionedCall2:
ttm/StatefulPartitionedCallttm/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Ζ

)__inference_dense_32_layer_call_fn_349322

inputs
unknown:	

	unknown_0:	

identity’StatefulPartitionedCallΪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_348651p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
ͺ
?
7__inference_batch_normalization_24_layer_call_fn_349208

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_348534o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Ο
±
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_349241

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity’batchnorm/ReadVariableOp’batchnorm/ReadVariableOp_1’batchnorm/ReadVariableOp_2’batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????Ί
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
―

χ
D__inference_dense_33_layer_call_and_return_conditional_losses_348668

inputs1
matmul_readvariableop_resource:	
.
biasadd_readvariableop_resource:	

identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
Y
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:?????????
f
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs

ΐ
(__inference_model_8_layer_call_fn_348908
input_9
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:	

	unknown_9:	


unknown_10:	


unknown_11:	

identity’StatefulPartitionedCallθ
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_348848o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9

~
)__inference_dense_34_layer_call_fn_349372

inputs
unknown:	

identity’StatefulPartitionedCallΜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_348689o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:?????????
: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????

 
_user_specified_nameinputs
Κ
?
D__inference_dense_34_layer_call_and_return_conditional_losses_349379

inputs1
matmul_readvariableop_resource:	

identity’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:?????????^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:?????????
: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????

 
_user_specified_nameinputs
Κ
?
D__inference_dense_34_layer_call_and_return_conditional_losses_348689

inputs1
matmul_readvariableop_resource:	

identity’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityMatMul:product:0^NoOp*
T0*'
_output_shapes
:?????????^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:?????????
: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????

 
_user_specified_nameinputs
%
λ
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_348581

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity’AssignMovingAvg’AssignMovingAvg/ReadVariableOp’AssignMovingAvg_1’ AssignMovingAvg_1/ReadVariableOp’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
Χ#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:΄
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????κ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs

ΐ
(__inference_model_8_layer_call_fn_348723
input_9
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:	

	unknown_9:	


unknown_10:	


unknown_11:	

identity’StatefulPartitionedCallκ
StatefulPartitionedCallStatefulPartitionedCallinput_9unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_348694o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
’

χ
D__inference_dense_32_layer_call_and_return_conditional_losses_349333

inputs1
matmul_readvariableop_resource:	
.
biasadd_readvariableop_resource:	

identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:?????????
[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs

Ώ
(__inference_model_8_layer_call_fn_349048

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	

	unknown_8:	

	unknown_9:	


unknown_10:	


unknown_11:	

identity’StatefulPartitionedCallη
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_model_8_layer_call_and_return_conditional_losses_348848o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
’

χ
D__inference_dense_32_layer_call_and_return_conditional_losses_348651

inputs1
matmul_readvariableop_resource:	
.
biasadd_readvariableop_resource:	

identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
W
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:?????????
[
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Θ	
φ
E__inference_moneyness_layer_call_and_return_conditional_losses_349313

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
@

C__inference_model_8_layer_call_and_return_conditional_losses_349098

inputsF
8batch_normalization_24_batchnorm_readvariableop_resource:J
<batch_normalization_24_batchnorm_mul_readvariableop_resource:H
:batch_normalization_24_batchnorm_readvariableop_1_resource:H
:batch_normalization_24_batchnorm_readvariableop_2_resource::
(moneyness_matmul_readvariableop_resource:7
)moneyness_biasadd_readvariableop_resource:4
"ttm_matmul_readvariableop_resource:1
#ttm_biasadd_readvariableop_resource::
'dense_32_matmul_readvariableop_resource:	
7
(dense_32_biasadd_readvariableop_resource:	
:
'dense_33_matmul_readvariableop_resource:	
7
(dense_33_biasadd_readvariableop_resource:	
:
'dense_34_matmul_readvariableop_resource:	

identity’/batch_normalization_24/batchnorm/ReadVariableOp’1batch_normalization_24/batchnorm/ReadVariableOp_1’1batch_normalization_24/batchnorm/ReadVariableOp_2’3batch_normalization_24/batchnorm/mul/ReadVariableOp’dense_32/BiasAdd/ReadVariableOp’dense_32/MatMul/ReadVariableOp’dense_33/BiasAdd/ReadVariableOp’dense_33/MatMul/ReadVariableOp’dense_34/MatMul/ReadVariableOp’ moneyness/BiasAdd/ReadVariableOp’moneyness/MatMul/ReadVariableOp’ttm/BiasAdd/ReadVariableOp’ttm/MatMul/ReadVariableOp€
/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ό
$batch_normalization_24/batchnorm/addAddV27batch_normalization_24/batchnorm/ReadVariableOp:value:0/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_24/batchnorm/RsqrtRsqrt(batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ή
$batch_normalization_24/batchnorm/mulMul*batch_normalization_24/batchnorm/Rsqrt:y:0;batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
&batch_normalization_24/batchnorm/mul_1Mulinputs(batch_normalization_24/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????¨
1batch_normalization_24/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_24_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0·
&batch_normalization_24/batchnorm/mul_2Mul9batch_normalization_24/batchnorm/ReadVariableOp_1:value:0(batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes
:¨
1batch_normalization_24/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_24_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0·
$batch_normalization_24/batchnorm/subSub9batch_normalization_24/batchnorm/ReadVariableOp_2:value:0*batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_24/batchnorm/add_1AddV2*batch_normalization_24/batchnorm/mul_1:z:0(batch_normalization_24/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????
moneyness/MatMul/ReadVariableOpReadVariableOp(moneyness_matmul_readvariableop_resource*
_output_shapes

:*
dtype0‘
moneyness/MatMulMatMul*batch_normalization_24/batchnorm/add_1:z:0'moneyness/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
 moneyness/BiasAdd/ReadVariableOpReadVariableOp)moneyness_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
moneyness/BiasAddBiasAddmoneyness/MatMul:product:0(moneyness/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
ttm/MatMul/ReadVariableOpReadVariableOp"ttm_matmul_readvariableop_resource*
_output_shapes

:*
dtype0

ttm/MatMulMatMul*batch_normalization_24/batchnorm/add_1:z:0!ttm/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
ttm/BiasAdd/ReadVariableOpReadVariableOp#ttm_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
ttm/BiasAddBiasAddttm/MatMul:product:0"ttm/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_32/MatMulMatMulttm/BiasAdd:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????

dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
i
dense_32/SigmoidSigmoiddense_32/BiasAdd:output:0*
T0*(
_output_shapes
:?????????

dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_33/MatMulMatMulmoneyness/BiasAdd:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????

dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
k
dense_33/SoftplusSoftplusdense_33/BiasAdd:output:0*
T0*(
_output_shapes
:?????????

multiply_4/mulMuldense_32/Sigmoid:y:0dense_33/Softplus:activations:0*
T0*(
_output_shapes
:?????????

dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
dense_34/MatMulMatMulmultiply_4/mul:z:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_34/MatMul:product:0^NoOp*
T0*'
_output_shapes
:?????????»
NoOpNoOp0^batch_normalization_24/batchnorm/ReadVariableOp2^batch_normalization_24/batchnorm/ReadVariableOp_12^batch_normalization_24/batchnorm/ReadVariableOp_24^batch_normalization_24/batchnorm/mul/ReadVariableOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp^dense_34/MatMul/ReadVariableOp!^moneyness/BiasAdd/ReadVariableOp ^moneyness/MatMul/ReadVariableOp^ttm/BiasAdd/ReadVariableOp^ttm/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2b
/batch_normalization_24/batchnorm/ReadVariableOp/batch_normalization_24/batchnorm/ReadVariableOp2f
1batch_normalization_24/batchnorm/ReadVariableOp_11batch_normalization_24/batchnorm/ReadVariableOp_12f
1batch_normalization_24/batchnorm/ReadVariableOp_21batch_normalization_24/batchnorm/ReadVariableOp_22j
3batch_normalization_24/batchnorm/mul/ReadVariableOp3batch_normalization_24/batchnorm/mul/ReadVariableOp2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2D
 moneyness/BiasAdd/ReadVariableOp moneyness/BiasAdd/ReadVariableOp2B
moneyness/MatMul/ReadVariableOpmoneyness/MatMul/ReadVariableOp28
ttm/BiasAdd/ReadVariableOpttm/BiasAdd/ReadVariableOp26
ttm/MatMul/ReadVariableOpttm/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
I
²
!__inference__wrapped_model_348510
input_9N
@model_8_batch_normalization_24_batchnorm_readvariableop_resource:R
Dmodel_8_batch_normalization_24_batchnorm_mul_readvariableop_resource:P
Bmodel_8_batch_normalization_24_batchnorm_readvariableop_1_resource:P
Bmodel_8_batch_normalization_24_batchnorm_readvariableop_2_resource:B
0model_8_moneyness_matmul_readvariableop_resource:?
1model_8_moneyness_biasadd_readvariableop_resource:<
*model_8_ttm_matmul_readvariableop_resource:9
+model_8_ttm_biasadd_readvariableop_resource:B
/model_8_dense_32_matmul_readvariableop_resource:	
?
0model_8_dense_32_biasadd_readvariableop_resource:	
B
/model_8_dense_33_matmul_readvariableop_resource:	
?
0model_8_dense_33_biasadd_readvariableop_resource:	
B
/model_8_dense_34_matmul_readvariableop_resource:	

identity’7model_8/batch_normalization_24/batchnorm/ReadVariableOp’9model_8/batch_normalization_24/batchnorm/ReadVariableOp_1’9model_8/batch_normalization_24/batchnorm/ReadVariableOp_2’;model_8/batch_normalization_24/batchnorm/mul/ReadVariableOp’'model_8/dense_32/BiasAdd/ReadVariableOp’&model_8/dense_32/MatMul/ReadVariableOp’'model_8/dense_33/BiasAdd/ReadVariableOp’&model_8/dense_33/MatMul/ReadVariableOp’&model_8/dense_34/MatMul/ReadVariableOp’(model_8/moneyness/BiasAdd/ReadVariableOp’'model_8/moneyness/MatMul/ReadVariableOp’"model_8/ttm/BiasAdd/ReadVariableOp’!model_8/ttm/MatMul/ReadVariableOp΄
7model_8/batch_normalization_24/batchnorm/ReadVariableOpReadVariableOp@model_8_batch_normalization_24_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0s
.model_8/batch_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Τ
,model_8/batch_normalization_24/batchnorm/addAddV2?model_8/batch_normalization_24/batchnorm/ReadVariableOp:value:07model_8/batch_normalization_24/batchnorm/add/y:output:0*
T0*
_output_shapes
:
.model_8/batch_normalization_24/batchnorm/RsqrtRsqrt0model_8/batch_normalization_24/batchnorm/add:z:0*
T0*
_output_shapes
:Ό
;model_8/batch_normalization_24/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_8_batch_normalization_24_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ρ
,model_8/batch_normalization_24/batchnorm/mulMul2model_8/batch_normalization_24/batchnorm/Rsqrt:y:0Cmodel_8/batch_normalization_24/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:’
.model_8/batch_normalization_24/batchnorm/mul_1Mulinput_90model_8/batch_normalization_24/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????Έ
9model_8/batch_normalization_24/batchnorm/ReadVariableOp_1ReadVariableOpBmodel_8_batch_normalization_24_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ο
.model_8/batch_normalization_24/batchnorm/mul_2MulAmodel_8/batch_normalization_24/batchnorm/ReadVariableOp_1:value:00model_8/batch_normalization_24/batchnorm/mul:z:0*
T0*
_output_shapes
:Έ
9model_8/batch_normalization_24/batchnorm/ReadVariableOp_2ReadVariableOpBmodel_8_batch_normalization_24_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ο
,model_8/batch_normalization_24/batchnorm/subSubAmodel_8/batch_normalization_24/batchnorm/ReadVariableOp_2:value:02model_8/batch_normalization_24/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Ο
.model_8/batch_normalization_24/batchnorm/add_1AddV22model_8/batch_normalization_24/batchnorm/mul_1:z:00model_8/batch_normalization_24/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????
'model_8/moneyness/MatMul/ReadVariableOpReadVariableOp0model_8_moneyness_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ή
model_8/moneyness/MatMulMatMul2model_8/batch_normalization_24/batchnorm/add_1:z:0/model_8/moneyness/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
(model_8/moneyness/BiasAdd/ReadVariableOpReadVariableOp1model_8_moneyness_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
model_8/moneyness/BiasAddBiasAdd"model_8/moneyness/MatMul:product:00model_8/moneyness/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
!model_8/ttm/MatMul/ReadVariableOpReadVariableOp*model_8_ttm_matmul_readvariableop_resource*
_output_shapes

:*
dtype0­
model_8/ttm/MatMulMatMul2model_8/batch_normalization_24/batchnorm/add_1:z:0)model_8/ttm/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
"model_8/ttm/BiasAdd/ReadVariableOpReadVariableOp+model_8_ttm_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
model_8/ttm/BiasAddBiasAddmodel_8/ttm/MatMul:product:0*model_8/ttm/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
&model_8/dense_32/MatMul/ReadVariableOpReadVariableOp/model_8_dense_32_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0’
model_8/dense_32/MatMulMatMulmodel_8/ttm/BiasAdd:output:0.model_8/dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????

'model_8/dense_32/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_32_biasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0ͺ
model_8/dense_32/BiasAddBiasAdd!model_8/dense_32/MatMul:product:0/model_8/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
y
model_8/dense_32/SigmoidSigmoid!model_8/dense_32/BiasAdd:output:0*
T0*(
_output_shapes
:?????????

&model_8/dense_33/MatMul/ReadVariableOpReadVariableOp/model_8_dense_33_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0¨
model_8/dense_33/MatMulMatMul"model_8/moneyness/BiasAdd:output:0.model_8/dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????

'model_8/dense_33/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:
*
dtype0ͺ
model_8/dense_33/BiasAddBiasAdd!model_8/dense_33/MatMul:product:0/model_8/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
{
model_8/dense_33/SoftplusSoftplus!model_8/dense_33/BiasAdd:output:0*
T0*(
_output_shapes
:?????????

model_8/multiply_4/mulMulmodel_8/dense_32/Sigmoid:y:0'model_8/dense_33/Softplus:activations:0*
T0*(
_output_shapes
:?????????

&model_8/dense_34/MatMul/ReadVariableOpReadVariableOp/model_8_dense_34_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
model_8/dense_34/MatMulMatMulmodel_8/multiply_4/mul:z:0.model_8/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
IdentityIdentity!model_8/dense_34/MatMul:product:0^NoOp*
T0*'
_output_shapes
:?????????£
NoOpNoOp8^model_8/batch_normalization_24/batchnorm/ReadVariableOp:^model_8/batch_normalization_24/batchnorm/ReadVariableOp_1:^model_8/batch_normalization_24/batchnorm/ReadVariableOp_2<^model_8/batch_normalization_24/batchnorm/mul/ReadVariableOp(^model_8/dense_32/BiasAdd/ReadVariableOp'^model_8/dense_32/MatMul/ReadVariableOp(^model_8/dense_33/BiasAdd/ReadVariableOp'^model_8/dense_33/MatMul/ReadVariableOp'^model_8/dense_34/MatMul/ReadVariableOp)^model_8/moneyness/BiasAdd/ReadVariableOp(^model_8/moneyness/MatMul/ReadVariableOp#^model_8/ttm/BiasAdd/ReadVariableOp"^model_8/ttm/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2r
7model_8/batch_normalization_24/batchnorm/ReadVariableOp7model_8/batch_normalization_24/batchnorm/ReadVariableOp2v
9model_8/batch_normalization_24/batchnorm/ReadVariableOp_19model_8/batch_normalization_24/batchnorm/ReadVariableOp_12v
9model_8/batch_normalization_24/batchnorm/ReadVariableOp_29model_8/batch_normalization_24/batchnorm/ReadVariableOp_22z
;model_8/batch_normalization_24/batchnorm/mul/ReadVariableOp;model_8/batch_normalization_24/batchnorm/mul/ReadVariableOp2R
'model_8/dense_32/BiasAdd/ReadVariableOp'model_8/dense_32/BiasAdd/ReadVariableOp2P
&model_8/dense_32/MatMul/ReadVariableOp&model_8/dense_32/MatMul/ReadVariableOp2R
'model_8/dense_33/BiasAdd/ReadVariableOp'model_8/dense_33/BiasAdd/ReadVariableOp2P
&model_8/dense_33/MatMul/ReadVariableOp&model_8/dense_33/MatMul/ReadVariableOp2P
&model_8/dense_34/MatMul/ReadVariableOp&model_8/dense_34/MatMul/ReadVariableOp2T
(model_8/moneyness/BiasAdd/ReadVariableOp(model_8/moneyness/BiasAdd/ReadVariableOp2R
'model_8/moneyness/MatMul/ReadVariableOp'model_8/moneyness/MatMul/ReadVariableOp2H
"model_8/ttm/BiasAdd/ReadVariableOp"model_8/ttm/BiasAdd/ReadVariableOp2F
!model_8/ttm/MatMul/ReadVariableOp!model_8/ttm/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_9
Ώ
p
F__inference_multiply_4_layer_call_and_return_conditional_losses_348680

inputs
inputs_1
identityO
mulMulinputsinputs_1*
T0*(
_output_shapes
:?????????
P
IdentityIdentitymul:z:0*
T0*(
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:?????????
:?????????
:P L
(
_output_shapes
:?????????

 
_user_specified_nameinputs:PL
(
_output_shapes
:?????????

 
_user_specified_nameinputs
Έ

$__inference_ttm_layer_call_fn_349284

inputs
unknown:
	unknown_0:
identity’StatefulPartitionedCallΤ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ttm_layer_call_and_return_conditional_losses_348634o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
©%

C__inference_model_8_layer_call_and_return_conditional_losses_348848

inputs+
batch_normalization_24_348814:+
batch_normalization_24_348816:+
batch_normalization_24_348818:+
batch_normalization_24_348820:"
moneyness_348823:
moneyness_348825:

ttm_348828:

ttm_348830:"
dense_32_348833:	

dense_32_348835:	
"
dense_33_348838:	

dense_33_348840:	
"
dense_34_348844:	

identity’.batch_normalization_24/StatefulPartitionedCall’ dense_32/StatefulPartitionedCall’ dense_33/StatefulPartitionedCall’ dense_34/StatefulPartitionedCall’!moneyness/StatefulPartitionedCall’ttm/StatefulPartitionedCallθ
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_24_348814batch_normalization_24_348816batch_normalization_24_348818batch_normalization_24_348820*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_348581₯
!moneyness/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0moneyness_348823moneyness_348825*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_moneyness_layer_call_and_return_conditional_losses_348618
ttm/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0
ttm_348828
ttm_348830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_ttm_layer_call_and_return_conditional_losses_348634
 dense_32/StatefulPartitionedCallStatefulPartitionedCall$ttm/StatefulPartitionedCall:output:0dense_32_348833dense_32_348835*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_348651
 dense_33/StatefulPartitionedCallStatefulPartitionedCall*moneyness/StatefulPartitionedCall:output:0dense_33_348838dense_33_348840*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_348668
multiply_4/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_multiply_4_layer_call_and_return_conditional_losses_348680ϊ
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#multiply_4/PartitionedCall:output:0dense_34_348844*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_348689x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????’
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall"^moneyness/StatefulPartitionedCall^ttm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2F
!moneyness/StatefulPartitionedCall!moneyness/StatefulPartitionedCall2:
ttm/StatefulPartitionedCallttm/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
υ
Ι
"__inference__traced_restore_349634
file_prefix;
-assignvariableop_batch_normalization_24_gamma:<
.assignvariableop_1_batch_normalization_24_beta:C
5assignvariableop_2_batch_normalization_24_moving_mean:G
9assignvariableop_3_batch_normalization_24_moving_variance:/
assignvariableop_4_ttm_kernel:)
assignvariableop_5_ttm_bias:5
#assignvariableop_6_moneyness_kernel:/
!assignvariableop_7_moneyness_bias:5
"assignvariableop_8_dense_32_kernel:	
/
 assignvariableop_9_dense_32_bias:	
6
#assignvariableop_10_dense_33_kernel:	
0
!assignvariableop_11_dense_33_bias:	
6
#assignvariableop_12_dense_34_kernel:	
'
assignvariableop_13_adam_iter:	 )
assignvariableop_14_adam_beta_1: )
assignvariableop_15_adam_beta_2: (
assignvariableop_16_adam_decay: #
assignvariableop_17_total: #
assignvariableop_18_count: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: %
assignvariableop_21_total_2: %
assignvariableop_22_count_2: E
7assignvariableop_23_adam_batch_normalization_24_gamma_m:D
6assignvariableop_24_adam_batch_normalization_24_beta_m:=
*assignvariableop_25_adam_dense_32_kernel_m:	
7
(assignvariableop_26_adam_dense_32_bias_m:	
=
*assignvariableop_27_adam_dense_33_kernel_m:	
7
(assignvariableop_28_adam_dense_33_bias_m:	
=
*assignvariableop_29_adam_dense_34_kernel_m:	
E
7assignvariableop_30_adam_batch_normalization_24_gamma_v:D
6assignvariableop_31_adam_batch_normalization_24_beta_v:=
*assignvariableop_32_adam_dense_32_kernel_v:	
7
(assignvariableop_33_adam_dense_32_bias_v:	
=
*assignvariableop_34_adam_dense_33_kernel_v:	
7
(assignvariableop_35_adam_dense_33_bias_v:	
=
*assignvariableop_36_adam_dense_34_kernel_v:	

identity_38’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9η
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*
valueB&B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHΌ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ί
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes
::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp-assignvariableop_batch_normalization_24_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp.assignvariableop_1_batch_normalization_24_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:€
AssignVariableOp_2AssignVariableOp5assignvariableop_2_batch_normalization_24_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_3AssignVariableOp9assignvariableop_3_batch_normalization_24_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_ttm_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_ttm_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_moneyness_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_moneyness_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_32_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_32_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_33_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_33_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_34_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_iterIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_2Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_23AssignVariableOp7assignvariableop_23_adam_batch_normalization_24_gamma_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_24AssignVariableOp6assignvariableop_24_adam_batch_normalization_24_beta_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_32_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_32_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_33_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_33_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_34_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_30AssignVariableOp7assignvariableop_30_adam_batch_normalization_24_gamma_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_batch_normalization_24_beta_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_dense_32_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_dense_32_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_33_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_33_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_34_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ύ
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: κ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_90
serving_default_input_9:0?????????<
dense_340
StatefulPartitionedCall:0?????????tensorflow/serving/predict:μ
η
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
κ
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
»

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
»

-kernel
.bias
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
»

5kernel
6bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_layer
₯
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
±

Ckernel
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer
Μ
Jiter

Kbeta_1

Lbeta_2
	Mdecaymm-m.m5m6mCmvv-v.v5v6vCv"
	optimizer
~
0
1
2
3
4
5
%6
&7
-8
.9
510
611
C12"
trackable_list_wrapper
Q
0
1
-2
.3
54
65
C6"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ξ2λ
(__inference_model_8_layer_call_fn_348723
(__inference_model_8_layer_call_fn_349017
(__inference_model_8_layer_call_fn_349048
(__inference_model_8_layer_call_fn_348908ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ϊ2Χ
C__inference_model_8_layer_call_and_return_conditional_losses_349098
C__inference_model_8_layer_call_and_return_conditional_losses_349162
C__inference_model_8_layer_call_and_return_conditional_losses_348945
C__inference_model_8_layer_call_and_return_conditional_losses_348982ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΜBΙ
!__inference__wrapped_model_348510input_9"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
,
Sserving_default"
signature_map
 "
trackable_list_wrapper
*:(2batch_normalization_24/gamma
):'2batch_normalization_24/beta
2:0 (2"batch_normalization_24/moving_mean
6:4 (2&batch_normalization_24/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_24_layer_call_fn_349208
7__inference_batch_normalization_24_layer_call_fn_349221΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
β2ί
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_349241
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_349275΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
:2
ttm/kernel
:2ttm/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Ξ2Λ
$__inference_ttm_layer_call_fn_349284’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ι2ζ
?__inference_ttm_layer_call_and_return_conditional_losses_349294’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
": 2moneyness/kernel
:2moneyness/bias
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
Τ2Ρ
*__inference_moneyness_layer_call_fn_349303’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ο2μ
E__inference_moneyness_layer_call_and_return_conditional_losses_349313’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
": 	
2dense_32/kernel
:
2dense_32/bias
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
Σ2Π
)__inference_dense_32_layer_call_fn_349322’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξ2λ
D__inference_dense_32_layer_call_and_return_conditional_losses_349333’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
": 	
2dense_33/kernel
:
2dense_33/bias
.
50
61"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
Σ2Π
)__inference_dense_33_layer_call_fn_349342’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξ2λ
D__inference_dense_33_layer_call_and_return_conditional_losses_349353’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
Υ2?
+__inference_multiply_4_layer_call_fn_349359’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
π2ν
F__inference_multiply_4_layer_call_and_return_conditional_losses_349365’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
": 	
2dense_34/kernel
'
C0"
trackable_list_wrapper
'
C0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
Σ2Π
)__inference_dense_34_layer_call_fn_349372’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξ2λ
D__inference_dense_34_layer_call_and_return_conditional_losses_349379’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
J
0
1
2
3
%4
&5"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
5
w0
x1
y2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΛBΘ
$__inference_signature_wrapper_349195input_9"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ztotal
	{count
|	variables
}	keras_api"
_tf_keras_metric
a
	~total
	count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
R

total

count
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
/:-2#Adam/batch_normalization_24/gamma/m
.:,2"Adam/batch_normalization_24/beta/m
':%	
2Adam/dense_32/kernel/m
!:
2Adam/dense_32/bias/m
':%	
2Adam/dense_33/kernel/m
!:
2Adam/dense_33/bias/m
':%	
2Adam/dense_34/kernel/m
/:-2#Adam/batch_normalization_24/gamma/v
.:,2"Adam/batch_normalization_24/beta/v
':%	
2Adam/dense_32/kernel/v
!:
2Adam/dense_32/bias/v
':%	
2Adam/dense_33/kernel/v
!:
2Adam/dense_33/bias/v
':%	
2Adam/dense_34/kernel/v
!__inference__wrapped_model_348510v%&-.56C0’-
&’#
!
input_9?????????
ͺ "3ͺ0
.
dense_34"
dense_34?????????Έ
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_349241b3’0
)’&
 
inputs?????????
p 
ͺ "%’"

0?????????
 Έ
R__inference_batch_normalization_24_layer_call_and_return_conditional_losses_349275b3’0
)’&
 
inputs?????????
p
ͺ "%’"

0?????????
 
7__inference_batch_normalization_24_layer_call_fn_349208U3’0
)’&
 
inputs?????????
p 
ͺ "?????????
7__inference_batch_normalization_24_layer_call_fn_349221U3’0
)’&
 
inputs?????????
p
ͺ "?????????₯
D__inference_dense_32_layer_call_and_return_conditional_losses_349333]-./’,
%’"
 
inputs?????????
ͺ "&’#

0?????????

 }
)__inference_dense_32_layer_call_fn_349322P-./’,
%’"
 
inputs?????????
ͺ "?????????
₯
D__inference_dense_33_layer_call_and_return_conditional_losses_349353]56/’,
%’"
 
inputs?????????
ͺ "&’#

0?????????

 }
)__inference_dense_33_layer_call_fn_349342P56/’,
%’"
 
inputs?????????
ͺ "?????????
€
D__inference_dense_34_layer_call_and_return_conditional_losses_349379\C0’-
&’#
!
inputs?????????

ͺ "%’"

0?????????
 |
)__inference_dense_34_layer_call_fn_349372OC0’-
&’#
!
inputs?????????

ͺ "?????????·
C__inference_model_8_layer_call_and_return_conditional_losses_348945p%&-.56C8’5
.’+
!
input_9?????????
p 

 
ͺ "%’"

0?????????
 ·
C__inference_model_8_layer_call_and_return_conditional_losses_348982p%&-.56C8’5
.’+
!
input_9?????????
p

 
ͺ "%’"

0?????????
 Ά
C__inference_model_8_layer_call_and_return_conditional_losses_349098o%&-.56C7’4
-’*
 
inputs?????????
p 

 
ͺ "%’"

0?????????
 Ά
C__inference_model_8_layer_call_and_return_conditional_losses_349162o%&-.56C7’4
-’*
 
inputs?????????
p

 
ͺ "%’"

0?????????
 
(__inference_model_8_layer_call_fn_348723c%&-.56C8’5
.’+
!
input_9?????????
p 

 
ͺ "?????????
(__inference_model_8_layer_call_fn_348908c%&-.56C8’5
.’+
!
input_9?????????
p

 
ͺ "?????????
(__inference_model_8_layer_call_fn_349017b%&-.56C7’4
-’*
 
inputs?????????
p 

 
ͺ "?????????
(__inference_model_8_layer_call_fn_349048b%&-.56C7’4
-’*
 
inputs?????????
p

 
ͺ "?????????₯
E__inference_moneyness_layer_call_and_return_conditional_losses_349313\%&/’,
%’"
 
inputs?????????
ͺ "%’"

0?????????
 }
*__inference_moneyness_layer_call_fn_349303O%&/’,
%’"
 
inputs?????????
ͺ "?????????Ρ
F__inference_multiply_4_layer_call_and_return_conditional_losses_349365\’Y
R’O
MJ
# 
inputs/0?????????

# 
inputs/1?????????

ͺ "&’#

0?????????

 ¨
+__inference_multiply_4_layer_call_fn_349359y\’Y
R’O
MJ
# 
inputs/0?????????

# 
inputs/1?????????

ͺ "?????????
ͺ
$__inference_signature_wrapper_349195%&-.56C;’8
’ 
1ͺ.
,
input_9!
input_9?????????"3ͺ0
.
dense_34"
dense_34?????????
?__inference_ttm_layer_call_and_return_conditional_losses_349294\/’,
%’"
 
inputs?????????
ͺ "%’"

0?????????
 w
$__inference_ttm_layer_call_fn_349284O/’,
%’"
 
inputs?????????
ͺ "?????????