å¢0
Á
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
@
Softplus
features"T
activations"T"
Ttype:
2
Á
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68.

batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_10/gamma

0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
:*
dtype0

batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_10/beta

/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
:*
dtype0

"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_10/moving_mean

6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:*
dtype0
¤
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_10/moving_variance

:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:$*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:$*
dtype0

batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*-
shared_namebatch_normalization_11/gamma

0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes
:$*
dtype0

batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*,
shared_namebatch_normalization_11/beta

/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes
:$*
dtype0

"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"batch_normalization_11/moving_mean

6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes
:$*
dtype0
¤
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*7
shared_name(&batch_normalization_11/moving_variance

:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes
:$*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:$$*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:$*
dtype0

batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*-
shared_namebatch_normalization_12/gamma

0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes
:$*
dtype0

batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*,
shared_namebatch_normalization_12/beta

/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes
:$*
dtype0

"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"batch_normalization_12/moving_mean

6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
:$*
dtype0
¤
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*7
shared_name(&batch_normalization_12/moving_variance

:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:$*
dtype0
z
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$* 
shared_namedense_12/kernel
s
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes

:$$*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:$*
dtype0

batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*-
shared_namebatch_normalization_13/gamma

0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes
:$*
dtype0

batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*,
shared_namebatch_normalization_13/beta

/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes
:$*
dtype0

"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"batch_normalization_13/moving_mean

6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:$*
dtype0
¤
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*7
shared_name(&batch_normalization_13/moving_variance

:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:$*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:$$*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:$*
dtype0

batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*-
shared_namebatch_normalization_14/gamma

0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes
:$*
dtype0

batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*,
shared_namebatch_normalization_14/beta

/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes
:$*
dtype0

"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"batch_normalization_14/moving_mean

6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes
:$*
dtype0
¤
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*7
shared_name(&batch_normalization_14/moving_variance

:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes
:$*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:$*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
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
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0

#Adam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_10/gamma/m

7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_10/beta/m

6Adam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/m*
_output_shapes
:*
dtype0

Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*'
shared_nameAdam/dense_10/kernel/m

*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:$*
dtype0

Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_11/gamma/m

7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/m*
_output_shapes
:$*
dtype0

"Adam/batch_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_11/beta/m

6Adam/batch_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/m*
_output_shapes
:$*
dtype0

Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$*'
shared_nameAdam/dense_11/kernel/m

*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:$$*
dtype0

Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_12/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_12/gamma/m

7Adam/batch_normalization_12/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_12/gamma/m*
_output_shapes
:$*
dtype0

"Adam/batch_normalization_12/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_12/beta/m

6Adam/batch_normalization_12/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_12/beta/m*
_output_shapes
:$*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes

:$$*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_13/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_13/gamma/m

7Adam/batch_normalization_13/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_13/gamma/m*
_output_shapes
:$*
dtype0

"Adam/batch_normalization_13/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_13/beta/m

6Adam/batch_normalization_13/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_13/beta/m*
_output_shapes
:$*
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$*'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

:$$*
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_14/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_14/gamma/m

7Adam/batch_normalization_14/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_14/gamma/m*
_output_shapes
:$*
dtype0

"Adam/batch_normalization_14/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_14/beta/m

6Adam/batch_normalization_14/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_14/beta/m*
_output_shapes
:$*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes

:$*
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:*
dtype0

#Adam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_10/gamma/v

7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/v*
_output_shapes
:*
dtype0

"Adam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_10/beta/v

6Adam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/v*
_output_shapes
:*
dtype0

Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*'
shared_nameAdam/dense_10/kernel/v

*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:$*
dtype0

Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_11/gamma/v

7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/v*
_output_shapes
:$*
dtype0

"Adam/batch_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_11/beta/v

6Adam/batch_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/v*
_output_shapes
:$*
dtype0

Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$*'
shared_nameAdam/dense_11/kernel/v

*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:$$*
dtype0

Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_12/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_12/gamma/v

7Adam/batch_normalization_12/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_12/gamma/v*
_output_shapes
:$*
dtype0

"Adam/batch_normalization_12/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_12/beta/v

6Adam/batch_normalization_12/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_12/beta/v*
_output_shapes
:$*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes

:$$*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_13/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_13/gamma/v

7Adam/batch_normalization_13/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_13/gamma/v*
_output_shapes
:$*
dtype0

"Adam/batch_normalization_13/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_13/beta/v

6Adam/batch_normalization_13/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_13/beta/v*
_output_shapes
:$*
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$$*'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

:$$*
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_14/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*4
shared_name%#Adam/batch_normalization_14/gamma/v

7Adam/batch_normalization_14/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_14/gamma/v*
_output_shapes
:$*
dtype0

"Adam/batch_normalization_14/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*3
shared_name$"Adam/batch_normalization_14/beta/v

6Adam/batch_normalization_14/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_14/beta/v*
_output_shapes
:$*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:$*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

:$*
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ï
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*©
valueB B
¿
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
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
loss_tracker_grad
loss_tracker_pred
loss_tracker
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	test_step

train_step

signatures*
* 
Õ
axis
	gamma
beta
moving_mean
moving_variance
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
Õ
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses*
¦

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses*
Õ
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*
¦

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
Õ
Saxis
	Tgamma
Ubeta
Vmoving_mean
Wmoving_variance
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses*
¦

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses*
Õ
faxis
	ggamma
hbeta
imoving_mean
jmoving_variance
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses*
¦

qkernel
rbias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses*
8
	ytotal
	zcount
{	variables
|	keras_api*
9
	}total
	~count
	variables
	keras_api*
<

total

count
	variables
	keras_api*
Å
	iter
beta_1
beta_2

decaymÑmÒ%mÓ&mÔ.mÕ/mÖ8m×9mØAmÙBmÚKmÛLmÜTmÝUmÞ^mß_màgmáhmâqmãrmävåvæ%vç&vè.vé/vê8vë9vìAvíBvîKvïLvðTvñUvò^vó_vôgvõhvöqv÷rvø*

0
1
2
3
%4
&5
.6
/7
08
19
810
911
A12
B13
C14
D15
K16
L17
T18
U19
V20
W21
^22
_23
g24
h25
i26
j27
q28
r29
y30
z31
}32
~33
34
35*

0
1
%2
&3
.4
/5
86
97
A8
B9
K10
L11
T12
U13
^14
_15
g16
h17
q18
r19*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

serving_default* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
0
1
2
3*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

%0
&1*

%0
&1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
.0
/1
02
13*

.0
/1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 

non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
A0
B1
C2
D3*

A0
B1*
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
T0
U1
V2
W3*

T0
U1*
* 

­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

^0
_1*

^0
_1*
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_14/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_14/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_14/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_14/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
g0
h1
i2
j3*

g0
h1*
* 

·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

q0
r1*

q0
r1*
* 

¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*
* 
* 
QK
VARIABLE_VALUEtotal2loss_tracker_grad/total/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEcount2loss_tracker_grad/count/.ATTRIBUTES/VARIABLE_VALUE*

y0
z1*

{	variables*
SM
VARIABLE_VALUEtotal_12loss_tracker_pred/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount_12loss_tracker_pred/count/.ATTRIBUTES/VARIABLE_VALUE*

}0
~1*

	variables*
NH
VARIABLE_VALUEtotal_2-loss_tracker/total/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEcount_2-loss_tracker/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
|
0
1
02
13
C4
D5
V6
W7
i8
j9
y10
z11
}12
~13
14
15*
R
0
1
2
3
4
5
6
7
	8

9
10*
1
Á0
Â1
Ã2
3
4
5*
* 
,
	grad_loss
	pred_loss
loss*
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

00
11*
* 
* 
* 
* 
* 
* 
* 
* 
* 

C0
D1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

V0
W1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

i0
j1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Ätotal

Åcount
Æ	variables
Ç	keras_api*
M

Ètotal

Écount
Ê
_fn_kwargs
Ë	variables
Ì	keras_api*
<

Ítotal

Îcount
Ï	variables
Ð	keras_api*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ä0
Å1*

Æ	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

È0
É1*

Ë	variables*
UO
VARIABLE_VALUEtotal_54keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_54keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

Í0
Î1*

Ï	variables*

VARIABLE_VALUE#Adam/batch_normalization_10/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_10/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_11/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_11/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_12/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_12/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_13/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_13/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_14/gamma/mQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_14/beta/mPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_10/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_10/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_11/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_11/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_12/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_12/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_13/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_13/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_14/gamma/vQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_14/beta/vPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_3Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
±	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3&batch_normalization_10/moving_variancebatch_normalization_10/gamma"batch_normalization_10/moving_meanbatch_normalization_10/betadense_10/kerneldense_10/bias&batch_normalization_11/moving_variancebatch_normalization_11/gamma"batch_normalization_11/moving_meanbatch_normalization_11/betadense_11/kerneldense_11/bias&batch_normalization_12/moving_variancebatch_normalization_12/gamma"batch_normalization_12/moving_meanbatch_normalization_12/betadense_12/kerneldense_12/bias&batch_normalization_13/moving_variancebatch_normalization_13/gamma"batch_normalization_13/moving_meanbatch_normalization_13/betadense_13/kerneldense_13/bias&batch_normalization_14/moving_variancebatch_normalization_14/gamma"batch_normalization_14/moving_meanbatch_normalization_14/betadense_14/kerneldense_14/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_165900
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
«!
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp0batch_normalization_12/gamma/Read/ReadVariableOp/batch_normalization_12/beta/Read/ReadVariableOp6batch_normalization_12/moving_mean/Read/ReadVariableOp:batch_normalization_12/moving_variance/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp0batch_normalization_14/gamma/Read/ReadVariableOp/batch_normalization_14/beta/Read/ReadVariableOp6batch_normalization_14/moving_mean/Read/ReadVariableOp:batch_normalization_14/moving_variance/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_10/beta/m/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_11/beta/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp7Adam/batch_normalization_12/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_12/beta/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp7Adam/batch_normalization_13/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_13/beta/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp7Adam/batch_normalization_14/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_14/beta/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_10/beta/v/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_11/beta/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp7Adam/batch_normalization_12/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_12/beta/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp7Adam/batch_normalization_13/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_13/beta/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp7Adam/batch_normalization_14/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_14/beta/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOpConst*c
Tin\
Z2X	*
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
__inference__traced_save_166804
î
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_variancedense_10/kerneldense_10/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_variancedense_11/kerneldense_11/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_variancedense_12/kerneldense_12/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_variancedense_13/kerneldense_13/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_variancedense_14/kerneldense_14/biastotalcounttotal_1count_1total_2count_2	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotal_3count_3total_4count_4total_5count_5#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/mAdam/dense_10/kernel/mAdam/dense_10/bias/m#Adam/batch_normalization_11/gamma/m"Adam/batch_normalization_11/beta/mAdam/dense_11/kernel/mAdam/dense_11/bias/m#Adam/batch_normalization_12/gamma/m"Adam/batch_normalization_12/beta/mAdam/dense_12/kernel/mAdam/dense_12/bias/m#Adam/batch_normalization_13/gamma/m"Adam/batch_normalization_13/beta/mAdam/dense_13/kernel/mAdam/dense_13/bias/m#Adam/batch_normalization_14/gamma/m"Adam/batch_normalization_14/beta/mAdam/dense_14/kernel/mAdam/dense_14/bias/m#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/vAdam/dense_10/kernel/vAdam/dense_10/bias/v#Adam/batch_normalization_11/gamma/v"Adam/batch_normalization_11/beta/vAdam/dense_11/kernel/vAdam/dense_11/bias/v#Adam/batch_normalization_12/gamma/v"Adam/batch_normalization_12/beta/vAdam/dense_12/kernel/vAdam/dense_12/bias/v#Adam/batch_normalization_13/gamma/v"Adam/batch_normalization_13/beta/vAdam/dense_13/kernel/vAdam/dense_13/bias/v#Adam/batch_normalization_14/gamma/v"Adam/batch_normalization_14/beta/vAdam/dense_14/kernel/vAdam/dense_14/bias/v*b
Tin[
Y2W*
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
"__inference__traced_restore_167072+
%
ë
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_165980

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
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
:ÿÿÿÿÿÿÿÿÿl
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
×#<
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
×#<
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
:´
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
:ÿÿÿÿÿÿÿÿÿh
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
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_162928

inputs5
'assignmovingavg_readvariableop_resource:$7
)assignmovingavg_1_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$/
!batchnorm_readvariableop_resource:$
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:$
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:$x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:$~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$´
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:$v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
å

3__inference_differential_model_layer_call_fn_163540
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:$
	unknown_4:$
	unknown_5:$
	unknown_6:$
	unknown_7:$
	unknown_8:$
	unknown_9:$$

unknown_10:$

unknown_11:$

unknown_12:$

unknown_13:$

unknown_14:$

unknown_15:$$

unknown_16:$

unknown_17:$

unknown_18:$

unknown_19:$

unknown_20:$

unknown_21:$$

unknown_22:$

unknown_23:$

unknown_24:$

unknown_25:$

unknown_26:$

unknown_27:$

unknown_28:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_differential_model_layer_call_and_return_conditional_losses_163412o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
ª
Ò
7__inference_batch_normalization_12_layer_call_fn_166113

inputs
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:$
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_162799o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_163010

inputs5
'assignmovingavg_readvariableop_resource:$7
)assignmovingavg_1_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$/
!batchnorm_readvariableop_resource:$
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:$
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:$x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:$~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$´
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:$v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_162717

inputs/
!batchnorm_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$1
#batchnorm_readvariableop_1_resource:$1
#batchnorm_readvariableop_2_resource:$
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:$z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_162846

inputs5
'assignmovingavg_readvariableop_resource:$7
)assignmovingavg_1_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$/
!batchnorm_readvariableop_resource:$
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:$
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:$x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:$~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$´
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:$v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
ü
áX
__inference_train_step_165833

data_0
data_1_0
data_1_1Y
Kdifferential_model_batch_normalization_10_batchnorm_readvariableop_resource:]
Odifferential_model_batch_normalization_10_batchnorm_mul_readvariableop_resource:[
Mdifferential_model_batch_normalization_10_batchnorm_readvariableop_1_resource:[
Mdifferential_model_batch_normalization_10_batchnorm_readvariableop_2_resource:L
:differential_model_dense_10_matmul_readvariableop_resource:$I
;differential_model_dense_10_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_11_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_11_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_11_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_11_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_11_matmul_readvariableop_resource:$$I
;differential_model_dense_11_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_12_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_12_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_12_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_12_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_12_matmul_readvariableop_resource:$$I
;differential_model_dense_12_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_13_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_13_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_13_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_13_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_13_matmul_readvariableop_resource:$$I
;differential_model_dense_13_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_14_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_14_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_14_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_14_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_14_matmul_readvariableop_resource:$I
;differential_model_dense_14_biasadd_readvariableop_resource:&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: +
!adam_cast_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: 2
$adam_adam_update_resourceapplyadam_m:2
$adam_adam_update_resourceapplyadam_v:4
&adam_adam_update_1_resourceapplyadam_m:4
&adam_adam_update_1_resourceapplyadam_v:8
&adam_adam_update_2_resourceapplyadam_m:$8
&adam_adam_update_2_resourceapplyadam_v:$4
&adam_adam_update_3_resourceapplyadam_m:$4
&adam_adam_update_3_resourceapplyadam_v:$4
&adam_adam_update_4_resourceapplyadam_m:$4
&adam_adam_update_4_resourceapplyadam_v:$4
&adam_adam_update_5_resourceapplyadam_m:$4
&adam_adam_update_5_resourceapplyadam_v:$8
&adam_adam_update_6_resourceapplyadam_m:$$8
&adam_adam_update_6_resourceapplyadam_v:$$4
&adam_adam_update_7_resourceapplyadam_m:$4
&adam_adam_update_7_resourceapplyadam_v:$4
&adam_adam_update_8_resourceapplyadam_m:$4
&adam_adam_update_8_resourceapplyadam_v:$4
&adam_adam_update_9_resourceapplyadam_m:$4
&adam_adam_update_9_resourceapplyadam_v:$9
'adam_adam_update_10_resourceapplyadam_m:$$9
'adam_adam_update_10_resourceapplyadam_v:$$5
'adam_adam_update_11_resourceapplyadam_m:$5
'adam_adam_update_11_resourceapplyadam_v:$5
'adam_adam_update_12_resourceapplyadam_m:$5
'adam_adam_update_12_resourceapplyadam_v:$5
'adam_adam_update_13_resourceapplyadam_m:$5
'adam_adam_update_13_resourceapplyadam_v:$9
'adam_adam_update_14_resourceapplyadam_m:$$9
'adam_adam_update_14_resourceapplyadam_v:$$5
'adam_adam_update_15_resourceapplyadam_m:$5
'adam_adam_update_15_resourceapplyadam_v:$5
'adam_adam_update_16_resourceapplyadam_m:$5
'adam_adam_update_16_resourceapplyadam_v:$5
'adam_adam_update_17_resourceapplyadam_m:$5
'adam_adam_update_17_resourceapplyadam_v:$9
'adam_adam_update_18_resourceapplyadam_m:$9
'adam_adam_update_18_resourceapplyadam_v:$5
'adam_adam_update_19_resourceapplyadam_m:5
'adam_adam_update_19_resourceapplyadam_v:(
assignaddvariableop_2_resource: (
assignaddvariableop_3_resource: (
assignaddvariableop_4_resource: (
assignaddvariableop_5_resource: (
assignaddvariableop_6_resource: (
assignaddvariableop_7_resource: (
assignaddvariableop_8_resource: (
assignaddvariableop_9_resource: )
assignaddvariableop_10_resource: )
assignaddvariableop_11_resource: 

identity_9
identity_10
identity_11
identity_12
identity_13¢Adam/Adam/AssignAddVariableOp¢"Adam/Adam/update/ResourceApplyAdam¢$Adam/Adam/update_1/ResourceApplyAdam¢%Adam/Adam/update_10/ResourceApplyAdam¢%Adam/Adam/update_11/ResourceApplyAdam¢%Adam/Adam/update_12/ResourceApplyAdam¢%Adam/Adam/update_13/ResourceApplyAdam¢%Adam/Adam/update_14/ResourceApplyAdam¢%Adam/Adam/update_15/ResourceApplyAdam¢%Adam/Adam/update_16/ResourceApplyAdam¢%Adam/Adam/update_17/ResourceApplyAdam¢%Adam/Adam/update_18/ResourceApplyAdam¢%Adam/Adam/update_19/ResourceApplyAdam¢$Adam/Adam/update_2/ResourceApplyAdam¢$Adam/Adam/update_3/ResourceApplyAdam¢$Adam/Adam/update_4/ResourceApplyAdam¢$Adam/Adam/update_5/ResourceApplyAdam¢$Adam/Adam/update_6/ResourceApplyAdam¢$Adam/Adam/update_7/ResourceApplyAdam¢$Adam/Adam/update_8/ResourceApplyAdam¢$Adam/Adam/update_9/ResourceApplyAdam¢Adam/Cast/ReadVariableOp¢Adam/Cast_2/ReadVariableOp¢Adam/Cast_3/ReadVariableOp¢Adam/ReadVariableOp¢AssignAddVariableOp¢AssignAddVariableOp_1¢AssignAddVariableOp_10¢AssignAddVariableOp_11¢AssignAddVariableOp_2¢AssignAddVariableOp_3¢AssignAddVariableOp_4¢AssignAddVariableOp_5¢AssignAddVariableOp_6¢AssignAddVariableOp_7¢AssignAddVariableOp_8¢AssignAddVariableOp_9¢Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp¢Ddifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp¢Fdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_1¢Fdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_2¢Hdifferential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp¢Ddifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp¢Fdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_1¢Fdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_2¢Hdifferential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp¢Ddifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp¢Fdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_1¢Fdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_2¢Hdifferential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp¢Ddifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp¢Fdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_1¢Fdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_2¢Hdifferential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp¢Ddifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp¢Fdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_1¢Fdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_2¢Hdifferential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOp¢2differential_model/dense_10/BiasAdd/ReadVariableOp¢4differential_model/dense_10/BiasAdd_1/ReadVariableOp¢1differential_model/dense_10/MatMul/ReadVariableOp¢3differential_model/dense_10/MatMul_1/ReadVariableOp¢2differential_model/dense_11/BiasAdd/ReadVariableOp¢4differential_model/dense_11/BiasAdd_1/ReadVariableOp¢1differential_model/dense_11/MatMul/ReadVariableOp¢3differential_model/dense_11/MatMul_1/ReadVariableOp¢2differential_model/dense_12/BiasAdd/ReadVariableOp¢4differential_model/dense_12/BiasAdd_1/ReadVariableOp¢1differential_model/dense_12/MatMul/ReadVariableOp¢3differential_model/dense_12/MatMul_1/ReadVariableOp¢2differential_model/dense_13/BiasAdd/ReadVariableOp¢4differential_model/dense_13/BiasAdd_1/ReadVariableOp¢1differential_model/dense_13/MatMul/ReadVariableOp¢3differential_model/dense_13/MatMul_1/ReadVariableOp¢2differential_model/dense_14/BiasAdd/ReadVariableOp¢4differential_model/dense_14/BiasAdd_1/ReadVariableOp¢1differential_model/dense_14/MatMul/ReadVariableOp¢3differential_model/dense_14/MatMul_1/ReadVariableOp¢div_no_nan/ReadVariableOp¢div_no_nan/ReadVariableOp_1¢div_no_nan_1/ReadVariableOp¢div_no_nan_1/ReadVariableOp_1¢div_no_nan_2/ReadVariableOp¢div_no_nan_2/ReadVariableOp_1¢div_no_nan_3/ReadVariableOp¢div_no_nan_3/ReadVariableOp_1¢div_no_nan_4/ReadVariableOp¢div_no_nan_4/ReadVariableOp_1¢div_no_nan_5/ReadVariableOp¢div_no_nan_5/ReadVariableOp_1¢div_no_nan_6/ReadVariableOp¢div_no_nan_6/ReadVariableOp_1¢div_no_nan_7/ReadVariableOp¢div_no_nan_7/ReadVariableOp_1¢div_no_nan_8/ReadVariableOp¢div_no_nan_8/ReadVariableOp_1Ê
Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0~
9differential_model/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_10/batchnorm/addAddV2Jdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:¤
9differential_model/batch_normalization_10/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:Ò
Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ò
7differential_model/batch_normalization_10/batchnorm/mulMul=differential_model/batch_normalization_10/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:·
9differential_model/batch_normalization_10/batchnorm/mul_1Muldata_0;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0ð
9differential_model/batch_normalization_10/batchnorm/mul_2MulLdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:Î
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0ð
7differential_model/batch_normalization_10/batchnorm/subSubLdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ð
9differential_model/batch_normalization_10/batchnorm/add_1AddV2=differential_model/batch_normalization_10/batchnorm/mul_1:z:0;differential_model/batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
1differential_model/dense_10/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_10_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0Ø
"differential_model/dense_10/MatMulMatMul=differential_model/batch_normalization_10/batchnorm/add_1:z:09differential_model/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_10/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_10_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_10/BiasAddBiasAdd,differential_model/dense_10/MatMul:product:0:differential_model/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_10/SoftplusSoftplus,differential_model/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_11/batchnorm/addAddV2Jdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_11/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_11/batchnorm/mulMul=differential_model/batch_normalization_11/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_11/batchnorm/mul_1Mul2differential_model/dense_10/Softplus:activations:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_11/batchnorm/mul_2MulLdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_11/batchnorm/subSubLdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_11/batchnorm/add_1AddV2=differential_model/batch_normalization_11/batchnorm/mul_1:z:0;differential_model/batch_normalization_11/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_11/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_11_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_11/MatMulMatMul=differential_model/batch_normalization_11/batchnorm/add_1:z:09differential_model/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_11/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_11_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_11/BiasAddBiasAdd,differential_model/dense_11/MatMul:product:0:differential_model/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_11/SoftplusSoftplus,differential_model/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_12/batchnorm/addAddV2Jdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_12/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_12/batchnorm/mulMul=differential_model/batch_normalization_12/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_12/batchnorm/mul_1Mul2differential_model/dense_11/Softplus:activations:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_12/batchnorm/mul_2MulLdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_12/batchnorm/subSubLdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_12/batchnorm/add_1AddV2=differential_model/batch_normalization_12/batchnorm/mul_1:z:0;differential_model/batch_normalization_12/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_12/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_12_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_12/MatMulMatMul=differential_model/batch_normalization_12/batchnorm/add_1:z:09differential_model/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_12/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_12_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_12/BiasAddBiasAdd,differential_model/dense_12/MatMul:product:0:differential_model/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_12/SoftplusSoftplus,differential_model/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_13/batchnorm/addAddV2Jdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_13/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_13/batchnorm/mulMul=differential_model/batch_normalization_13/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_13/batchnorm/mul_1Mul2differential_model/dense_12/Softplus:activations:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_13/batchnorm/mul_2MulLdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_13/batchnorm/subSubLdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_13/batchnorm/add_1AddV2=differential_model/batch_normalization_13/batchnorm/mul_1:z:0;differential_model/batch_normalization_13/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_13/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_13_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_13/MatMulMatMul=differential_model/batch_normalization_13/batchnorm/add_1:z:09differential_model/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_13/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_13_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_13/BiasAddBiasAdd,differential_model/dense_13/MatMul:product:0:differential_model/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_13/SoftplusSoftplus,differential_model/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_14/batchnorm/addAddV2Jdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_14/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_14/batchnorm/mulMul=differential_model/batch_normalization_14/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_14/batchnorm/mul_1Mul2differential_model/dense_13/Softplus:activations:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_14/batchnorm/mul_2MulLdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_14/batchnorm/subSubLdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_14/batchnorm/add_1AddV2=differential_model/batch_normalization_14/batchnorm/mul_1:z:0;differential_model/batch_normalization_14/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_14/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_14_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0Ø
"differential_model/dense_14/MatMulMatMul=differential_model/batch_normalization_14/batchnorm/add_1:z:09differential_model/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2differential_model/dense_14/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ê
#differential_model/dense_14/BiasAddBiasAdd,differential_model/dense_14/MatMul:product:0:differential_model/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÌ
Ddifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
;differential_model/batch_normalization_10/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:û
9differential_model/batch_normalization_10/batchnorm_1/addAddV2Ldifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp:value:0Ddifferential_model/batch_normalization_10/batchnorm_1/add/y:output:0*
T0*
_output_shapes
:¨
;differential_model/batch_normalization_10/batchnorm_1/RsqrtRsqrt=differential_model/batch_normalization_10/batchnorm_1/add:z:0*
T0*
_output_shapes
:Ô
Hdifferential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ø
9differential_model/batch_normalization_10/batchnorm_1/mulMul?differential_model/batch_normalization_10/batchnorm_1/Rsqrt:y:0Pdifferential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:»
;differential_model/batch_normalization_10/batchnorm_1/mul_1Muldata_0=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
Fdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0ö
;differential_model/batch_normalization_10/batchnorm_1/mul_2MulNdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_1:value:0=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*
_output_shapes
:Ð
Fdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0ö
9differential_model/batch_normalization_10/batchnorm_1/subSubNdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_2:value:0?differential_model/batch_normalization_10/batchnorm_1/mul_2:z:0*
T0*
_output_shapes
:ö
;differential_model/batch_normalization_10/batchnorm_1/add_1AddV2?differential_model/batch_normalization_10/batchnorm_1/mul_1:z:0=differential_model/batch_normalization_10/batchnorm_1/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
3differential_model/dense_10/MatMul_1/ReadVariableOpReadVariableOp:differential_model_dense_10_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0Þ
$differential_model/dense_10/MatMul_1MatMul?differential_model/batch_normalization_10/batchnorm_1/add_1:z:0;differential_model/dense_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
4differential_model/dense_10/BiasAdd_1/ReadVariableOpReadVariableOp;differential_model_dense_10_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ð
%differential_model/dense_10/BiasAdd_1BiasAdd.differential_model/dense_10/MatMul_1:product:0<differential_model/dense_10/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
&differential_model/dense_10/Softplus_1Softplus.differential_model/dense_10/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ì
Ddifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0
;differential_model/batch_normalization_11/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:û
9differential_model/batch_normalization_11/batchnorm_1/addAddV2Ldifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp:value:0Ddifferential_model/batch_normalization_11/batchnorm_1/add/y:output:0*
T0*
_output_shapes
:$¨
;differential_model/batch_normalization_11/batchnorm_1/RsqrtRsqrt=differential_model/batch_normalization_11/batchnorm_1/add:z:0*
T0*
_output_shapes
:$Ô
Hdifferential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ø
9differential_model/batch_normalization_11/batchnorm_1/mulMul?differential_model/batch_normalization_11/batchnorm_1/Rsqrt:y:0Pdifferential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$é
;differential_model/batch_normalization_11/batchnorm_1/mul_1Mul4differential_model/dense_10/Softplus_1:activations:0=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ð
Fdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ö
;differential_model/batch_normalization_11/batchnorm_1/mul_2MulNdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_1:value:0=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$Ð
Fdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ö
9differential_model/batch_normalization_11/batchnorm_1/subSubNdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_2:value:0?differential_model/batch_normalization_11/batchnorm_1/mul_2:z:0*
T0*
_output_shapes
:$ö
;differential_model/batch_normalization_11/batchnorm_1/add_1AddV2?differential_model/batch_normalization_11/batchnorm_1/mul_1:z:0=differential_model/batch_normalization_11/batchnorm_1/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
3differential_model/dense_11/MatMul_1/ReadVariableOpReadVariableOp:differential_model_dense_11_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Þ
$differential_model/dense_11/MatMul_1MatMul?differential_model/batch_normalization_11/batchnorm_1/add_1:z:0;differential_model/dense_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
4differential_model/dense_11/BiasAdd_1/ReadVariableOpReadVariableOp;differential_model_dense_11_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ð
%differential_model/dense_11/BiasAdd_1BiasAdd.differential_model/dense_11/MatMul_1:product:0<differential_model/dense_11/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
&differential_model/dense_11/Softplus_1Softplus.differential_model/dense_11/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ì
Ddifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0
;differential_model/batch_normalization_12/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:û
9differential_model/batch_normalization_12/batchnorm_1/addAddV2Ldifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp:value:0Ddifferential_model/batch_normalization_12/batchnorm_1/add/y:output:0*
T0*
_output_shapes
:$¨
;differential_model/batch_normalization_12/batchnorm_1/RsqrtRsqrt=differential_model/batch_normalization_12/batchnorm_1/add:z:0*
T0*
_output_shapes
:$Ô
Hdifferential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ø
9differential_model/batch_normalization_12/batchnorm_1/mulMul?differential_model/batch_normalization_12/batchnorm_1/Rsqrt:y:0Pdifferential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$é
;differential_model/batch_normalization_12/batchnorm_1/mul_1Mul4differential_model/dense_11/Softplus_1:activations:0=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ð
Fdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ö
;differential_model/batch_normalization_12/batchnorm_1/mul_2MulNdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_1:value:0=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$Ð
Fdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ö
9differential_model/batch_normalization_12/batchnorm_1/subSubNdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_2:value:0?differential_model/batch_normalization_12/batchnorm_1/mul_2:z:0*
T0*
_output_shapes
:$ö
;differential_model/batch_normalization_12/batchnorm_1/add_1AddV2?differential_model/batch_normalization_12/batchnorm_1/mul_1:z:0=differential_model/batch_normalization_12/batchnorm_1/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
3differential_model/dense_12/MatMul_1/ReadVariableOpReadVariableOp:differential_model_dense_12_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Þ
$differential_model/dense_12/MatMul_1MatMul?differential_model/batch_normalization_12/batchnorm_1/add_1:z:0;differential_model/dense_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
4differential_model/dense_12/BiasAdd_1/ReadVariableOpReadVariableOp;differential_model_dense_12_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ð
%differential_model/dense_12/BiasAdd_1BiasAdd.differential_model/dense_12/MatMul_1:product:0<differential_model/dense_12/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
&differential_model/dense_12/Softplus_1Softplus.differential_model/dense_12/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ì
Ddifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0
;differential_model/batch_normalization_13/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:û
9differential_model/batch_normalization_13/batchnorm_1/addAddV2Ldifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp:value:0Ddifferential_model/batch_normalization_13/batchnorm_1/add/y:output:0*
T0*
_output_shapes
:$¨
;differential_model/batch_normalization_13/batchnorm_1/RsqrtRsqrt=differential_model/batch_normalization_13/batchnorm_1/add:z:0*
T0*
_output_shapes
:$Ô
Hdifferential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ø
9differential_model/batch_normalization_13/batchnorm_1/mulMul?differential_model/batch_normalization_13/batchnorm_1/Rsqrt:y:0Pdifferential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$é
;differential_model/batch_normalization_13/batchnorm_1/mul_1Mul4differential_model/dense_12/Softplus_1:activations:0=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ð
Fdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ö
;differential_model/batch_normalization_13/batchnorm_1/mul_2MulNdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_1:value:0=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$Ð
Fdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ö
9differential_model/batch_normalization_13/batchnorm_1/subSubNdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_2:value:0?differential_model/batch_normalization_13/batchnorm_1/mul_2:z:0*
T0*
_output_shapes
:$ö
;differential_model/batch_normalization_13/batchnorm_1/add_1AddV2?differential_model/batch_normalization_13/batchnorm_1/mul_1:z:0=differential_model/batch_normalization_13/batchnorm_1/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
3differential_model/dense_13/MatMul_1/ReadVariableOpReadVariableOp:differential_model_dense_13_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Þ
$differential_model/dense_13/MatMul_1MatMul?differential_model/batch_normalization_13/batchnorm_1/add_1:z:0;differential_model/dense_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
4differential_model/dense_13/BiasAdd_1/ReadVariableOpReadVariableOp;differential_model_dense_13_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ð
%differential_model/dense_13/BiasAdd_1BiasAdd.differential_model/dense_13/MatMul_1:product:0<differential_model/dense_13/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
&differential_model/dense_13/Softplus_1Softplus.differential_model/dense_13/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ì
Ddifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0
;differential_model/batch_normalization_14/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:û
9differential_model/batch_normalization_14/batchnorm_1/addAddV2Ldifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp:value:0Ddifferential_model/batch_normalization_14/batchnorm_1/add/y:output:0*
T0*
_output_shapes
:$¨
;differential_model/batch_normalization_14/batchnorm_1/RsqrtRsqrt=differential_model/batch_normalization_14/batchnorm_1/add:z:0*
T0*
_output_shapes
:$Ô
Hdifferential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ø
9differential_model/batch_normalization_14/batchnorm_1/mulMul?differential_model/batch_normalization_14/batchnorm_1/Rsqrt:y:0Pdifferential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$é
;differential_model/batch_normalization_14/batchnorm_1/mul_1Mul4differential_model/dense_13/Softplus_1:activations:0=differential_model/batch_normalization_14/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ð
Fdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ö
;differential_model/batch_normalization_14/batchnorm_1/mul_2MulNdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_1:value:0=differential_model/batch_normalization_14/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$Ð
Fdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ö
9differential_model/batch_normalization_14/batchnorm_1/subSubNdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_2:value:0?differential_model/batch_normalization_14/batchnorm_1/mul_2:z:0*
T0*
_output_shapes
:$ö
;differential_model/batch_normalization_14/batchnorm_1/add_1AddV2?differential_model/batch_normalization_14/batchnorm_1/mul_1:z:0=differential_model/batch_normalization_14/batchnorm_1/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
3differential_model/dense_14/MatMul_1/ReadVariableOpReadVariableOp:differential_model_dense_14_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0Þ
$differential_model/dense_14/MatMul_1MatMul?differential_model/batch_normalization_14/batchnorm_1/add_1:z:0;differential_model/dense_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
4differential_model/dense_14/BiasAdd_1/ReadVariableOpReadVariableOp;differential_model_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ð
%differential_model/dense_14/BiasAdd_1BiasAdd.differential_model/dense_14/MatMul_1:product:0<differential_model/dense_14/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
ones_like/ShapeShape.differential_model/dense_14/BiasAdd_1:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
?gradient_tape/differential_model/dense_14/BiasAdd_1/BiasAddGradBiasAddGradones_like:output:0*
T0*
_output_shapes
:Ù
9gradient_tape/differential_model/dense_14/MatMul_1/MatMulMatMulones_like:output:0;differential_model/dense_14/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(Ö
;gradient_tape/differential_model/dense_14/MatMul_1/MatMul_1MatMul?differential_model/batch_normalization_14/batchnorm_1/add_1:z:0ones_like:output:0*
T0*
_output_shapes

:$*
transpose_a(¾
Ogradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/ShapeShape?differential_model/batch_normalization_14/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1Shape=differential_model/batch_normalization_14/batchnorm_1/sub:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¢
Mgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/SumSumCgradient_tape/differential_model/dense_14/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¤
Ogradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Sum_1SumCgradient_tape/differential_model/dense_14/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1:output:0*
T0*
_output_shapes
:$³
Ogradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/ShapeShape4differential_model/dense_13/Softplus_1:activations:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1Shape=differential_model/batch_normalization_14/batchnorm_1/mul:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¡
Mgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/MulMulZgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape:output:0=differential_model/batch_normalization_14/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$°
Mgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/SumSumQgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Mul:z:0dgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Mul_1Mul4differential_model/dense_13/Softplus_1:activations:0Zgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$´
Ogradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Sum_1SumSgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Mul_1:z:0dgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Õ
Kgradient_tape/differential_model/batch_normalization_14/batchnorm_1/sub/NegNeg\gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$
1gradient_tape/differential_model/dense_13/SigmoidSigmoid.differential_model/dense_13/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ù
-gradient_tape/differential_model/dense_13/mulMulZgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape:output:05gradient_tape/differential_model/dense_13/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_2/MulMulOgradient_tape/differential_model/batch_normalization_14/batchnorm_1/sub/Neg:y:0=differential_model/batch_normalization_14/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$
Ogradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_2/Mul_1MulOgradient_tape/differential_model/batch_normalization_14/batchnorm_1/sub/Neg:y:0Ndifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$¦
?gradient_tape/differential_model/dense_13/BiasAdd_1/BiasAddGradBiasAddGrad1gradient_tape/differential_model/dense_13/mul:z:0*
T0*
_output_shapes
:$í
AddNAddN\gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_1:output:0Sgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Õ
Kgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul/MulMul
AddN:sum:0Pdifferential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Æ
Mgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul/Mul_1Mul
AddN:sum:0?differential_model/batch_normalization_14/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:$ø
9gradient_tape/differential_model/dense_13/MatMul_1/MatMulMatMul1gradient_tape/differential_model/dense_13/mul:z:0;differential_model/dense_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(õ
;gradient_tape/differential_model/dense_13/MatMul_1/MatMul_1MatMul?differential_model/batch_normalization_13/batchnorm_1/add_1:z:01gradient_tape/differential_model/dense_13/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(¾
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/ShapeShape?differential_model/batch_normalization_13/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1Shape=differential_model/batch_normalization_13/batchnorm_1/sub:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¢
Mgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/SumSumCgradient_tape/differential_model/dense_13/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¤
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Sum_1SumCgradient_tape/differential_model/dense_13/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1:output:0*
T0*
_output_shapes
:$³
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/ShapeShape4differential_model/dense_12/Softplus_1:activations:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1Shape=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¡
Mgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/MulMulZgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape:output:0=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$°
Mgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/SumSumQgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul:z:0dgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul_1Mul4differential_model/dense_12/Softplus_1:activations:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$´
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum_1SumSgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul_1:z:0dgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Õ
Kgradient_tape/differential_model/batch_normalization_13/batchnorm_1/sub/NegNeg\gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$
1gradient_tape/differential_model/dense_12/SigmoidSigmoid.differential_model/dense_12/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ù
-gradient_tape/differential_model/dense_12/mulMulZgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape:output:05gradient_tape/differential_model/dense_12/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_2/MulMulOgradient_tape/differential_model/batch_normalization_13/batchnorm_1/sub/Neg:y:0=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_2/Mul_1MulOgradient_tape/differential_model/batch_normalization_13/batchnorm_1/sub/Neg:y:0Ndifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$¦
?gradient_tape/differential_model/dense_12/BiasAdd_1/BiasAddGradBiasAddGrad1gradient_tape/differential_model/dense_12/mul:z:0*
T0*
_output_shapes
:$ï
AddN_1AddN\gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_1:output:0Sgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$×
Kgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul/MulMulAddN_1:sum:0Pdifferential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$È
Mgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul/Mul_1MulAddN_1:sum:0?differential_model/batch_normalization_13/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:$ø
9gradient_tape/differential_model/dense_12/MatMul_1/MatMulMatMul1gradient_tape/differential_model/dense_12/mul:z:0;differential_model/dense_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(õ
;gradient_tape/differential_model/dense_12/MatMul_1/MatMul_1MatMul?differential_model/batch_normalization_12/batchnorm_1/add_1:z:01gradient_tape/differential_model/dense_12/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(¾
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/ShapeShape?differential_model/batch_normalization_12/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1Shape=differential_model/batch_normalization_12/batchnorm_1/sub:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¢
Mgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/SumSumCgradient_tape/differential_model/dense_12/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¤
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Sum_1SumCgradient_tape/differential_model/dense_12/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1:output:0*
T0*
_output_shapes
:$³
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/ShapeShape4differential_model/dense_11/Softplus_1:activations:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1Shape=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¡
Mgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/MulMulZgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape:output:0=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$°
Mgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/SumSumQgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul:z:0dgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul_1Mul4differential_model/dense_11/Softplus_1:activations:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$´
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum_1SumSgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul_1:z:0dgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Õ
Kgradient_tape/differential_model/batch_normalization_12/batchnorm_1/sub/NegNeg\gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$
1gradient_tape/differential_model/dense_11/SigmoidSigmoid.differential_model/dense_11/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ù
-gradient_tape/differential_model/dense_11/mulMulZgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape:output:05gradient_tape/differential_model/dense_11/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_2/MulMulOgradient_tape/differential_model/batch_normalization_12/batchnorm_1/sub/Neg:y:0=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_2/Mul_1MulOgradient_tape/differential_model/batch_normalization_12/batchnorm_1/sub/Neg:y:0Ndifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$¦
?gradient_tape/differential_model/dense_11/BiasAdd_1/BiasAddGradBiasAddGrad1gradient_tape/differential_model/dense_11/mul:z:0*
T0*
_output_shapes
:$ï
AddN_2AddN\gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_1:output:0Sgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$×
Kgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul/MulMulAddN_2:sum:0Pdifferential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$È
Mgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul/Mul_1MulAddN_2:sum:0?differential_model/batch_normalization_12/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:$ø
9gradient_tape/differential_model/dense_11/MatMul_1/MatMulMatMul1gradient_tape/differential_model/dense_11/mul:z:0;differential_model/dense_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(õ
;gradient_tape/differential_model/dense_11/MatMul_1/MatMul_1MatMul?differential_model/batch_normalization_11/batchnorm_1/add_1:z:01gradient_tape/differential_model/dense_11/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(¾
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/ShapeShape?differential_model/batch_normalization_11/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1Shape=differential_model/batch_normalization_11/batchnorm_1/sub:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¢
Mgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/SumSumCgradient_tape/differential_model/dense_11/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¤
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Sum_1SumCgradient_tape/differential_model/dense_11/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1:output:0*
T0*
_output_shapes
:$³
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/ShapeShape4differential_model/dense_10/Softplus_1:activations:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1Shape=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¡
Mgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/MulMulZgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape:output:0=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$°
Mgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/SumSumQgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul:z:0dgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul_1Mul4differential_model/dense_10/Softplus_1:activations:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$´
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum_1SumSgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul_1:z:0dgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Õ
Kgradient_tape/differential_model/batch_normalization_11/batchnorm_1/sub/NegNeg\gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$
1gradient_tape/differential_model/dense_10/SigmoidSigmoid.differential_model/dense_10/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ù
-gradient_tape/differential_model/dense_10/mulMulZgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape:output:05gradient_tape/differential_model/dense_10/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_2/MulMulOgradient_tape/differential_model/batch_normalization_11/batchnorm_1/sub/Neg:y:0=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_2/Mul_1MulOgradient_tape/differential_model/batch_normalization_11/batchnorm_1/sub/Neg:y:0Ndifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$¦
?gradient_tape/differential_model/dense_10/BiasAdd_1/BiasAddGradBiasAddGrad1gradient_tape/differential_model/dense_10/mul:z:0*
T0*
_output_shapes
:$ï
AddN_3AddN\gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_1:output:0Sgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$×
Kgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul/MulMulAddN_3:sum:0Pdifferential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$È
Mgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul/Mul_1MulAddN_3:sum:0?differential_model/batch_normalization_11/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:$ø
9gradient_tape/differential_model/dense_10/MatMul_1/MatMulMatMul1gradient_tape/differential_model/dense_10/mul:z:0;differential_model/dense_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b(õ
;gradient_tape/differential_model/dense_10/MatMul_1/MatMul_1MatMul?differential_model/batch_normalization_10/batchnorm_1/add_1:z:01gradient_tape/differential_model/dense_10/mul:z:0*
T0*
_output_shapes

:$*
transpose_a(¾
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/ShapeShape?differential_model/batch_normalization_10/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1Shape=differential_model/batch_normalization_10/batchnorm_1/sub:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¢
Mgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/SumSumCgradient_tape/differential_model/dense_10/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Sum_1SumCgradient_tape/differential_model/dense_10/MatMul_1/MatMul:product:0dgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1:output:0*
T0*
_output_shapes
:
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/ShapeShapedata_0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1Shape=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*
_output_shapes
:â
_gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgsXgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¡
Mgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/MulMulZgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape:output:0=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
Mgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/SumSumQgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul:z:0dgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:À
Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/ReshapeReshapeVgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul_1Muldata_0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum_1SumSgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul_1:z:0dgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_1ReshapeXgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum_1:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1:output:0*
T0*
_output_shapes
:Õ
Kgradient_tape/differential_model/batch_normalization_10/batchnorm_1/sub/NegNeg\gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_1:output:0*
T0*
_output_shapes
:
Mgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_2/MulMulOgradient_tape/differential_model/batch_normalization_10/batchnorm_1/sub/Neg:y:0=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*
_output_shapes
:
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_2/Mul_1MulOgradient_tape/differential_model/batch_normalization_10/batchnorm_1/sub/Neg:y:0Ndifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:ï
AddN_4AddN\gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_1:output:0Sgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:×
Kgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul/MulMulAddN_4:sum:0Pdifferential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:È
Mgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul/Mul_1MulAddN_4:sum:0?differential_model/batch_normalization_10/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:j
mean_squared_error/CastCastdata_1_1*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
$mean_squared_error/SquaredDifferenceSquaredDifferenceZgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape:output:0mean_squared_error/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ«
mean_squared_error/MeanMean(mean_squared_error/SquaredDifference:z:02mean_squared_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
&mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¬
$mean_squared_error/weighted_loss/MulMul mean_squared_error/Mean:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
(mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ©
$mean_squared_error/weighted_loss/SumSum(mean_squared_error/weighted_loss/Mul:z:01mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: 
-mean_squared_error/weighted_loss/num_elementsSize(mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: ¢
2mean_squared_error/weighted_loss/num_elements/CastCast6mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: g
%mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ç
&mean_squared_error/weighted_loss/rangeRange5mean_squared_error/weighted_loss/range/start:output:0.mean_squared_error/weighted_loss/Rank:output:05mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: ®
&mean_squared_error/weighted_loss/Sum_1Sum-mean_squared_error/weighted_loss/Sum:output:0/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: ¼
&mean_squared_error/weighted_loss/valueDivNoNan/mean_squared_error/weighted_loss/Sum_1:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿm

ExpandDims
ExpandDimsdata_1_0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
&mean_squared_error_1/SquaredDifferenceSquaredDifference,differential_model/dense_14/BiasAdd:output:0ExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ±
mean_squared_error_1/MeanMean*mean_squared_error_1/SquaredDifference:z:04mean_squared_error_1/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
(mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?²
&mean_squared_error_1/weighted_loss/MulMul"mean_squared_error_1/Mean:output:01mean_squared_error_1/weighted_loss/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
*mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¯
&mean_squared_error_1/weighted_loss/SumSum*mean_squared_error_1/weighted_loss/Mul:z:03mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: 
/mean_squared_error_1/weighted_loss/num_elementsSize*mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: ¦
4mean_squared_error_1/weighted_loss/num_elements/CastCast8mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: i
'mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ï
(mean_squared_error_1/weighted_loss/rangeRange7mean_squared_error_1/weighted_loss/range/start:output:00mean_squared_error_1/weighted_loss/Rank:output:07mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: ´
(mean_squared_error_1/weighted_loss/Sum_1Sum/mean_squared_error_1/weighted_loss/Sum:output:01mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: Â
(mean_squared_error_1/weighted_loss/valueDivNoNan1mean_squared_error_1/weighted_loss/Sum_1:output:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: H
ShapeShapeExpandDims:output:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: c
MulMul,mean_squared_error_1/weighted_loss/value:z:0Cast:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: D
SumSumMul:z:0range:output:0*
T0*
_output_shapes
: y
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype0H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: I
Sum_1SumCast:y:0range_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceSum_1:output:0^AssignAddVariableOp*
_output_shapes
 *
dtype0L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
mul_1Mulmul_1/x:output:0*mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: f
addAddV2	mul_1:z:0,mean_squared_error_1/weighted_loss/value:z:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  ?z
gradient_tape/mul_1/MulMulones:output:0*mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: b
gradient_tape/mul_1/Mul_1Mulones:output:0mul_1/x:output:0*
T0*
_output_shapes
: 
<gradient_tape/mean_squared_error_1/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
>gradient_tape/mean_squared_error_1/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB ©
Lgradient_tape/mean_squared_error_1/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsEgradient_tape/mean_squared_error_1/weighted_loss/value/Shape:output:0Ggradient_tape/mean_squared_error_1/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ·
Agradient_tape/mean_squared_error_1/weighted_loss/value/div_no_nanDivNoNanones:output:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: ü
:gradient_tape/mean_squared_error_1/weighted_loss/value/SumSumEgradient_tape/mean_squared_error_1/weighted_loss/value/div_no_nan:z:0Qgradient_tape/mean_squared_error_1/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: ö
>gradient_tape/mean_squared_error_1/weighted_loss/value/ReshapeReshapeCgradient_tape/mean_squared_error_1/weighted_loss/value/Sum:output:0Egradient_tape/mean_squared_error_1/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: 
:gradient_tape/mean_squared_error_1/weighted_loss/value/NegNeg1mean_squared_error_1/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: ê
Cgradient_tape/mean_squared_error_1/weighted_loss/value/div_no_nan_1DivNoNan>gradient_tape/mean_squared_error_1/weighted_loss/value/Neg:y:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: ó
Cgradient_tape/mean_squared_error_1/weighted_loss/value/div_no_nan_2DivNoNanGgradient_tape/mean_squared_error_1/weighted_loss/value/div_no_nan_1:z:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: º
:gradient_tape/mean_squared_error_1/weighted_loss/value/mulMulones:output:0Ggradient_tape/mean_squared_error_1/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: ÷
<gradient_tape/mean_squared_error_1/weighted_loss/value/Sum_1Sum>gradient_tape/mean_squared_error_1/weighted_loss/value/mul:z:0Qgradient_tape/mean_squared_error_1/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: ü
@gradient_tape/mean_squared_error_1/weighted_loss/value/Reshape_1ReshapeEgradient_tape/mean_squared_error_1/weighted_loss/value/Sum_1:output:0Ggradient_tape/mean_squared_error_1/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/mean_squared_error/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
<gradient_tape/mean_squared_error/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB £
Jgradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsCgradient_tape/mean_squared_error/weighted_loss/value/Shape:output:0Egradient_tape/mean_squared_error/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÃ
?gradient_tape/mean_squared_error/weighted_loss/value/div_no_nanDivNoNangradient_tape/mul_1/Mul_1:z:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: ö
8gradient_tape/mean_squared_error/weighted_loss/value/SumSumCgradient_tape/mean_squared_error/weighted_loss/value/div_no_nan:z:0Ogradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: ð
<gradient_tape/mean_squared_error/weighted_loss/value/ReshapeReshapeAgradient_tape/mean_squared_error/weighted_loss/value/Sum:output:0Cgradient_tape/mean_squared_error/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: 
8gradient_tape/mean_squared_error/weighted_loss/value/NegNeg/mean_squared_error/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: ä
Agradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_1DivNoNan<gradient_tape/mean_squared_error/weighted_loss/value/Neg:y:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: í
Agradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_2DivNoNanEgradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_1:z:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: Æ
8gradient_tape/mean_squared_error/weighted_loss/value/mulMulgradient_tape/mul_1/Mul_1:z:0Egradient_tape/mean_squared_error/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: ñ
:gradient_tape/mean_squared_error/weighted_loss/value/Sum_1Sum<gradient_tape/mean_squared_error/weighted_loss/value/mul:z:0Ogradient_tape/mean_squared_error/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: ö
>gradient_tape/mean_squared_error/weighted_loss/value/Reshape_1ReshapeCgradient_tape/mean_squared_error/weighted_loss/value/Sum_1:output:0Egradient_tape/mean_squared_error/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: 
>gradient_tape/mean_squared_error_1/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
@gradient_tape/mean_squared_error_1/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB ø
8gradient_tape/mean_squared_error_1/weighted_loss/ReshapeReshapeGgradient_tape/mean_squared_error_1/weighted_loss/value/Reshape:output:0Igradient_tape/mean_squared_error_1/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: y
6gradient_tape/mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB â
5gradient_tape/mean_squared_error_1/weighted_loss/TileTileAgradient_tape/mean_squared_error_1/weighted_loss/Reshape:output:0?gradient_tape/mean_squared_error_1/weighted_loss/Const:output:0*
T0*
_output_shapes
: 
<gradient_tape/mean_squared_error/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
>gradient_tape/mean_squared_error/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB ò
6gradient_tape/mean_squared_error/weighted_loss/ReshapeReshapeEgradient_tape/mean_squared_error/weighted_loss/value/Reshape:output:0Ggradient_tape/mean_squared_error/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: w
4gradient_tape/mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB Ü
3gradient_tape/mean_squared_error/weighted_loss/TileTile?gradient_tape/mean_squared_error/weighted_loss/Reshape:output:0=gradient_tape/mean_squared_error/weighted_loss/Const:output:0*
T0*
_output_shapes
: 
@gradient_tape/mean_squared_error_1/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:õ
:gradient_tape/mean_squared_error_1/weighted_loss/Reshape_1Reshape>gradient_tape/mean_squared_error_1/weighted_loss/Tile:output:0Igradient_tape/mean_squared_error_1/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:
6gradient_tape/mean_squared_error_1/weighted_loss/ShapeShape*mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
:ó
7gradient_tape/mean_squared_error_1/weighted_loss/Tile_1TileCgradient_tape/mean_squared_error_1/weighted_loss/Reshape_1:output:0?gradient_tape/mean_squared_error_1/weighted_loss/Shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>gradient_tape/mean_squared_error/weighted_loss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:ï
8gradient_tape/mean_squared_error/weighted_loss/Reshape_1Reshape<gradient_tape/mean_squared_error/weighted_loss/Tile:output:0Ggradient_tape/mean_squared_error/weighted_loss/Reshape_1/shape:output:0*
T0*
_output_shapes
:
4gradient_tape/mean_squared_error/weighted_loss/ShapeShape(mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
:í
5gradient_tape/mean_squared_error/weighted_loss/Tile_1TileAgradient_tape/mean_squared_error/weighted_loss/Reshape_1:output:0=gradient_tape/mean_squared_error/weighted_loss/Shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
4gradient_tape/mean_squared_error_1/weighted_loss/MulMul@gradient_tape/mean_squared_error_1/weighted_loss/Tile_1:output:01mean_squared_error_1/weighted_loss/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
2gradient_tape/mean_squared_error/weighted_loss/MulMul>gradient_tape/mean_squared_error/weighted_loss/Tile_1:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(gradient_tape/mean_squared_error_1/ShapeShape*mean_squared_error_1/SquaredDifference:z:0*
T0*
_output_shapes
:¦
'gradient_tape/mean_squared_error_1/SizeConst*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
: *
dtype0*
value	B :õ
&gradient_tape/mean_squared_error_1/addAddV24mean_squared_error_1/Mean/reduction_indices:output:00gradient_tape/mean_squared_error_1/Size:output:0*
T0*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
: î
&gradient_tape/mean_squared_error_1/modFloorMod*gradient_tape/mean_squared_error_1/add:z:00gradient_tape/mean_squared_error_1/Size:output:0*
T0*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
: ª
*gradient_tape/mean_squared_error_1/Shape_1Const*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
: *
dtype0*
valueB ­
.gradient_tape/mean_squared_error_1/range/startConst*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
: *
dtype0*
value	B : ­
.gradient_tape/mean_squared_error_1/range/deltaConst*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
: *
dtype0*
value	B :®
(gradient_tape/mean_squared_error_1/rangeRange7gradient_tape/mean_squared_error_1/range/start:output:00gradient_tape/mean_squared_error_1/Size:output:07gradient_tape/mean_squared_error_1/range/delta:output:0*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
:¬
-gradient_tape/mean_squared_error_1/ones/ConstConst*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
: *
dtype0*
value	B :ú
'gradient_tape/mean_squared_error_1/onesFill3gradient_tape/mean_squared_error_1/Shape_1:output:06gradient_tape/mean_squared_error_1/ones/Const:output:0*
T0*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
: ð
0gradient_tape/mean_squared_error_1/DynamicStitchDynamicStitch1gradient_tape/mean_squared_error_1/range:output:0*gradient_tape/mean_squared_error_1/mod:z:01gradient_tape/mean_squared_error_1/Shape:output:00gradient_tape/mean_squared_error_1/ones:output:0*
N*
T0*;
_class1
/-loc:@gradient_tape/mean_squared_error_1/Shape*
_output_shapes
:å
*gradient_tape/mean_squared_error_1/ReshapeReshape8gradient_tape/mean_squared_error_1/weighted_loss/Mul:z:09gradient_tape/mean_squared_error_1/DynamicStitch:merged:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ×
.gradient_tape/mean_squared_error_1/BroadcastToBroadcastTo3gradient_tape/mean_squared_error_1/Reshape:output:01gradient_tape/mean_squared_error_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*gradient_tape/mean_squared_error_1/Shape_2Shape*mean_squared_error_1/SquaredDifference:z:0*
T0*
_output_shapes
:|
*gradient_tape/mean_squared_error_1/Shape_3Shape"mean_squared_error_1/Mean:output:0*
T0*
_output_shapes
:r
(gradient_tape/mean_squared_error_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¸
'gradient_tape/mean_squared_error_1/ProdProd3gradient_tape/mean_squared_error_1/Shape_2:output:01gradient_tape/mean_squared_error_1/Const:output:0*
T0*
_output_shapes
: t
*gradient_tape/mean_squared_error_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
)gradient_tape/mean_squared_error_1/Prod_1Prod3gradient_tape/mean_squared_error_1/Shape_3:output:03gradient_tape/mean_squared_error_1/Const_1:output:0*
T0*
_output_shapes
: n
,gradient_tape/mean_squared_error_1/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :Á
*gradient_tape/mean_squared_error_1/MaximumMaximum2gradient_tape/mean_squared_error_1/Prod_1:output:05gradient_tape/mean_squared_error_1/Maximum/y:output:0*
T0*
_output_shapes
: º
+gradient_tape/mean_squared_error_1/floordivFloorDiv0gradient_tape/mean_squared_error_1/Prod:output:0.gradient_tape/mean_squared_error_1/Maximum:z:0*
T0*
_output_shapes
: 
'gradient_tape/mean_squared_error_1/CastCast/gradient_tape/mean_squared_error_1/floordiv:z:0*

DstT0*

SrcT0*
_output_shapes
: Í
*gradient_tape/mean_squared_error_1/truedivRealDiv7gradient_tape/mean_squared_error_1/BroadcastTo:output:0+gradient_tape/mean_squared_error_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
&gradient_tape/mean_squared_error/ShapeShape(mean_squared_error/SquaredDifference:z:0*
T0*
_output_shapes
:¢
%gradient_tape/mean_squared_error/SizeConst*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
: *
dtype0*
value	B :í
$gradient_tape/mean_squared_error/addAddV22mean_squared_error/Mean/reduction_indices:output:0.gradient_tape/mean_squared_error/Size:output:0*
T0*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
: æ
$gradient_tape/mean_squared_error/modFloorMod(gradient_tape/mean_squared_error/add:z:0.gradient_tape/mean_squared_error/Size:output:0*
T0*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
: ¦
(gradient_tape/mean_squared_error/Shape_1Const*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
: *
dtype0*
valueB ©
,gradient_tape/mean_squared_error/range/startConst*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
: *
dtype0*
value	B : ©
,gradient_tape/mean_squared_error/range/deltaConst*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
: *
dtype0*
value	B :¤
&gradient_tape/mean_squared_error/rangeRange5gradient_tape/mean_squared_error/range/start:output:0.gradient_tape/mean_squared_error/Size:output:05gradient_tape/mean_squared_error/range/delta:output:0*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
:¨
+gradient_tape/mean_squared_error/ones/ConstConst*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
: *
dtype0*
value	B :ò
%gradient_tape/mean_squared_error/onesFill1gradient_tape/mean_squared_error/Shape_1:output:04gradient_tape/mean_squared_error/ones/Const:output:0*
T0*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
: ä
.gradient_tape/mean_squared_error/DynamicStitchDynamicStitch/gradient_tape/mean_squared_error/range:output:0(gradient_tape/mean_squared_error/mod:z:0/gradient_tape/mean_squared_error/Shape:output:0.gradient_tape/mean_squared_error/ones:output:0*
N*
T0*9
_class/
-+loc:@gradient_tape/mean_squared_error/Shape*
_output_shapes
:ß
(gradient_tape/mean_squared_error/ReshapeReshape6gradient_tape/mean_squared_error/weighted_loss/Mul:z:07gradient_tape/mean_squared_error/DynamicStitch:merged:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÑ
,gradient_tape/mean_squared_error/BroadcastToBroadcastTo1gradient_tape/mean_squared_error/Reshape:output:0/gradient_tape/mean_squared_error/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(gradient_tape/mean_squared_error/Shape_2Shape(mean_squared_error/SquaredDifference:z:0*
T0*
_output_shapes
:x
(gradient_tape/mean_squared_error/Shape_3Shape mean_squared_error/Mean:output:0*
T0*
_output_shapes
:p
&gradient_tape/mean_squared_error/ConstConst*
_output_shapes
:*
dtype0*
valueB: ²
%gradient_tape/mean_squared_error/ProdProd1gradient_tape/mean_squared_error/Shape_2:output:0/gradient_tape/mean_squared_error/Const:output:0*
T0*
_output_shapes
: r
(gradient_tape/mean_squared_error/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¶
'gradient_tape/mean_squared_error/Prod_1Prod1gradient_tape/mean_squared_error/Shape_3:output:01gradient_tape/mean_squared_error/Const_1:output:0*
T0*
_output_shapes
: l
*gradient_tape/mean_squared_error/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :»
(gradient_tape/mean_squared_error/MaximumMaximum0gradient_tape/mean_squared_error/Prod_1:output:03gradient_tape/mean_squared_error/Maximum/y:output:0*
T0*
_output_shapes
: ´
)gradient_tape/mean_squared_error/floordivFloorDiv.gradient_tape/mean_squared_error/Prod:output:0,gradient_tape/mean_squared_error/Maximum:z:0*
T0*
_output_shapes
: 
%gradient_tape/mean_squared_error/CastCast-gradient_tape/mean_squared_error/floordiv:z:0*

DstT0*

SrcT0*
_output_shapes
: Ç
(gradient_tape/mean_squared_error/truedivRealDiv5gradient_tape/mean_squared_error/BroadcastTo:output:0)gradient_tape/mean_squared_error/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)gradient_tape/mean_squared_error_1/scalarConst+^gradient_tape/mean_squared_error_1/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @Ã
&gradient_tape/mean_squared_error_1/MulMul2gradient_tape/mean_squared_error_1/scalar:output:0.gradient_tape/mean_squared_error_1/truediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
&gradient_tape/mean_squared_error_1/subSub,differential_model/dense_14/BiasAdd:output:0ExpandDims:output:0+^gradient_tape/mean_squared_error_1/truediv*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
(gradient_tape/mean_squared_error_1/mul_1Mul*gradient_tape/mean_squared_error_1/Mul:z:0*gradient_tape/mean_squared_error_1/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*gradient_tape/mean_squared_error_1/Shape_4Shape,differential_model/dense_14/BiasAdd:output:0*
T0*
_output_shapes
:m
*gradient_tape/mean_squared_error_1/Shape_5ShapeExpandDims:output:0*
T0*
_output_shapes
:ï
8gradient_tape/mean_squared_error_1/BroadcastGradientArgsBroadcastGradientArgs3gradient_tape/mean_squared_error_1/Shape_4:output:03gradient_tape/mean_squared_error_1/Shape_5:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ½
&gradient_tape/mean_squared_error_1/SumSum,gradient_tape/mean_squared_error_1/mul_1:z:0=gradient_tape/mean_squared_error_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:Ï
,gradient_tape/mean_squared_error_1/Reshape_1Reshape/gradient_tape/mean_squared_error_1/Sum:output:03gradient_tape/mean_squared_error_1/Shape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'gradient_tape/mean_squared_error/scalarConst)^gradient_tape/mean_squared_error/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @½
$gradient_tape/mean_squared_error/MulMul0gradient_tape/mean_squared_error/scalar:output:0,gradient_tape/mean_squared_error/truediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$gradient_tape/mean_squared_error/subSubZgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape:output:0mean_squared_error/Cast:y:0)^gradient_tape/mean_squared_error/truediv*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
&gradient_tape/mean_squared_error/mul_1Mul(gradient_tape/mean_squared_error/Mul:z:0(gradient_tape/mean_squared_error/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
(gradient_tape/mean_squared_error/Shape_4ShapeZgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape:output:0*
T0*
_output_shapes
:s
(gradient_tape/mean_squared_error/Shape_5Shapemean_squared_error/Cast:y:0*
T0*
_output_shapes
:é
6gradient_tape/mean_squared_error/BroadcastGradientArgsBroadcastGradientArgs1gradient_tape/mean_squared_error/Shape_4:output:01gradient_tape/mean_squared_error/Shape_5:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ·
$gradient_tape/mean_squared_error/SumSum*gradient_tape/mean_squared_error/mul_1:z:0;gradient_tape/mean_squared_error/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:É
*gradient_tape/mean_squared_error/Reshape_1Reshape-gradient_tape/mean_squared_error/Sum:output:01gradient_tape/mean_squared_error/Shape_4:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
=gradient_tape/differential_model/dense_14/BiasAdd/BiasAddGradBiasAddGrad5gradient_tape/mean_squared_error_1/Reshape_1:output:0*
T0*
_output_shapes
:ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/ReshapeReshape3gradient_tape/mean_squared_error/Reshape_1:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape:output:0*
T0*
_output_shapes
:ø
7gradient_tape/differential_model/dense_14/MatMul/MatMulMatMul5gradient_tape/mean_squared_error_1/Reshape_1:output:09differential_model/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(õ
9gradient_tape/differential_model/dense_14/MatMul/MatMul_1MatMul=differential_model/batch_normalization_14/batchnorm/add_1:z:05gradient_tape/mean_squared_error_1/Reshape_1:output:0*
T0*
_output_shapes

:$*
transpose_a(à
_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1ShapeQgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul:z:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/addAddV2dgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_14/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_14/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_14/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_14/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:$é
_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_3ShapeZgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape:output:0*
T0*
_output_shapes
:Ì
_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_4Shape=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*
_output_shapes
:
mgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgshgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_3:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_4:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÁ
[gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/MulMullgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastTo:output:0=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
[gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/SumSum_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:î
agradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_2Reshapedgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
]gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul_1MulZgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastTo:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞ
]gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum_1Sumagradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul_1:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:ã
agradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_3Reshapefgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_4:output:0*
T0*
_output_shapes
:¯
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/ShapeShape2differential_model/dense_13/Softplus:activations:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Mul_1Mul2differential_model/dense_13/Softplus:activations:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_14/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/ReshapeReshapejgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_2:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape:output:0*
T0*
_output_shapes
:
3gradient_tape/differential_model/dense_13/Sigmoid_1Sigmoid,differential_model/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$û
/gradient_tape/differential_model/dense_13/mul_1MulXgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Reshape:output:07gradient_tape/differential_model/dense_13/Sigmoid_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_14/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:$
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_14/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$Ò
_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1ShapeCgradient_tape/differential_model/dense_10/MatMul_1/MatMul:product:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/addAddV2dgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
=gradient_tape/differential_model/dense_13/BiasAdd/BiasAddGradBiasAddGrad3gradient_tape/differential_model/dense_13/mul_1:z:0*
T0*
_output_shapes
:$ë
AddN_5AddNZgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Ó
Igradient_tape/differential_model/batch_normalization_14/batchnorm/mul/MulMulAddN_5:sum:0Ndifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Ä
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/mul/Mul_1MulAddN_5:sum:0=differential_model/batch_normalization_14/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:$®
Ggradient_tape/gradient_tape/differential_model/dense_10/MatMul_1/MatMulMatMullgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastTo:output:0;differential_model/dense_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$°
Igradient_tape/gradient_tape/differential_model/dense_10/MatMul_1/MatMul_1MatMullgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastTo:output:01gradient_tape/differential_model/dense_10/mul:z:0*
T0*
_output_shapes

:$*
transpose_a(ö
7gradient_tape/differential_model/dense_13/MatMul/MatMulMatMul3gradient_tape/differential_model/dense_13/mul_1:z:09differential_model/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(ó
9gradient_tape/differential_model/dense_13/MatMul/MatMul_1MatMul=differential_model/batch_normalization_13/batchnorm/add_1:z:03gradient_tape/differential_model/dense_13/mul_1:z:0*
T0*
_output_shapes

:$$*
transpose_a(Ë
Agradient_tape/gradient_tape/differential_model/dense_10/mul/ShapeShapeZgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape:output:0*
T0*
_output_shapes
:¨
Cgradient_tape/gradient_tape/differential_model/dense_10/mul/Shape_1Shape5gradient_tape/differential_model/dense_10/Sigmoid:y:0*
T0*
_output_shapes
:¸
Qgradient_tape/gradient_tape/differential_model/dense_10/mul/BroadcastGradientArgsBroadcastGradientArgsJgradient_tape/gradient_tape/differential_model/dense_10/mul/Shape:output:0Lgradient_tape/gradient_tape/differential_model/dense_10/mul/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
?gradient_tape/gradient_tape/differential_model/dense_10/mul/MulMulQgradient_tape/gradient_tape/differential_model/dense_10/MatMul_1/MatMul:product:05gradient_tape/differential_model/dense_10/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
?gradient_tape/gradient_tape/differential_model/dense_10/mul/SumSumCgradient_tape/gradient_tape/differential_model/dense_10/mul/Mul:z:0Vgradient_tape/gradient_tape/differential_model/dense_10/mul/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:
Cgradient_tape/gradient_tape/differential_model/dense_10/mul/ReshapeReshapeHgradient_tape/gradient_tape/differential_model/dense_10/mul/Sum:output:0Jgradient_tape/gradient_tape/differential_model/dense_10/mul/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$©
Agradient_tape/gradient_tape/differential_model/dense_10/mul/Mul_1MulZgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape:output:0Qgradient_tape/gradient_tape/differential_model/dense_10/MatMul_1/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Agradient_tape/gradient_tape/differential_model/dense_10/mul/Sum_1SumEgradient_tape/gradient_tape/differential_model/dense_10/mul/Mul_1:z:0Vgradient_tape/gradient_tape/differential_model/dense_10/mul/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:
Egradient_tape/gradient_tape/differential_model/dense_10/mul/Reshape_1ReshapeJgradient_tape/gradient_tape/differential_model/dense_10/mul/Sum_1:output:0Lgradient_tape/gradient_tape/differential_model/dense_10/mul/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_13/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_13/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_13/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_13/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:$ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/ReshapeReshapeLgradient_tape/gradient_tape/differential_model/dense_10/mul/Reshape:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape:output:0*
T0*
_output_shapes
:
Kgradient_tape/gradient_tape/differential_model/dense_10/Sigmoid/SigmoidGradSigmoidGrad5gradient_tape/differential_model/dense_10/Sigmoid:y:0Ngradient_tape/gradient_tape/differential_model/dense_10/mul/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¯
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/ShapeShape2differential_model/dense_12/Softplus:activations:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Mul_1Mul2differential_model/dense_12/Softplus:activations:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_13/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$à
_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1ShapeQgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul:z:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/addAddV2dgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
3gradient_tape/differential_model/dense_12/Sigmoid_1Sigmoid,differential_model/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$û
/gradient_tape/differential_model/dense_12/mul_1MulXgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Reshape:output:07gradient_tape/differential_model/dense_12/Sigmoid_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_13/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:$
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_13/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$é
_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_3ShapeZgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape:output:0*
T0*
_output_shapes
:Ì
_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_4Shape=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*
_output_shapes
:
mgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgshgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_3:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_4:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÁ
[gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/MulMullgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastTo:output:0=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ú
[gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/SumSum_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:î
agradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_2Reshapedgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$à
]gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul_1MulZgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastTo:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Þ
]gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum_1Sumagradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul_1:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:ã
agradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_3Reshapefgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_4:output:0*
T0*
_output_shapes
:$¦
=gradient_tape/differential_model/dense_12/BiasAdd/BiasAddGradBiasAddGrad3gradient_tape/differential_model/dense_12/mul_1:z:0*
T0*
_output_shapes
:$ë
AddN_6AddNZgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Ó
Igradient_tape/differential_model/batch_normalization_13/batchnorm/mul/MulMulAddN_6:sum:0Ndifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Ä
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/mul/Mul_1MulAddN_6:sum:0=differential_model/batch_normalization_13/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:$ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/ReshapeReshapejgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_2:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape:output:0*
T0*
_output_shapes
:ö
7gradient_tape/differential_model/dense_12/MatMul/MatMulMatMul3gradient_tape/differential_model/dense_12/mul_1:z:09differential_model/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(ó
9gradient_tape/differential_model/dense_12/MatMul/MatMul_1MatMul=differential_model/batch_normalization_12/batchnorm/add_1:z:03gradient_tape/differential_model/dense_12/mul_1:z:0*
T0*
_output_shapes

:$$*
transpose_a(Ò
_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1ShapeCgradient_tape/differential_model/dense_11/MatMul_1/MatMul:product:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/addAddV2dgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_12/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_12/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_12/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_12/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:$®
Ggradient_tape/gradient_tape/differential_model/dense_11/MatMul_1/MatMulMatMullgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastTo:output:0;differential_model/dense_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$°
Igradient_tape/gradient_tape/differential_model/dense_11/MatMul_1/MatMul_1MatMullgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastTo:output:01gradient_tape/differential_model/dense_11/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(¯
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/ShapeShape2differential_model/dense_11/Softplus:activations:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Mul_1Mul2differential_model/dense_11/Softplus:activations:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_12/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$Ë
Agradient_tape/gradient_tape/differential_model/dense_11/mul/ShapeShapeZgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape:output:0*
T0*
_output_shapes
:¨
Cgradient_tape/gradient_tape/differential_model/dense_11/mul/Shape_1Shape5gradient_tape/differential_model/dense_11/Sigmoid:y:0*
T0*
_output_shapes
:¸
Qgradient_tape/gradient_tape/differential_model/dense_11/mul/BroadcastGradientArgsBroadcastGradientArgsJgradient_tape/gradient_tape/differential_model/dense_11/mul/Shape:output:0Lgradient_tape/gradient_tape/differential_model/dense_11/mul/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
?gradient_tape/gradient_tape/differential_model/dense_11/mul/MulMulQgradient_tape/gradient_tape/differential_model/dense_11/MatMul_1/MatMul:product:05gradient_tape/differential_model/dense_11/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
?gradient_tape/gradient_tape/differential_model/dense_11/mul/SumSumCgradient_tape/gradient_tape/differential_model/dense_11/mul/Mul:z:0Vgradient_tape/gradient_tape/differential_model/dense_11/mul/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:
Cgradient_tape/gradient_tape/differential_model/dense_11/mul/ReshapeReshapeHgradient_tape/gradient_tape/differential_model/dense_11/mul/Sum:output:0Jgradient_tape/gradient_tape/differential_model/dense_11/mul/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$©
Agradient_tape/gradient_tape/differential_model/dense_11/mul/Mul_1MulZgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape:output:0Qgradient_tape/gradient_tape/differential_model/dense_11/MatMul_1/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Agradient_tape/gradient_tape/differential_model/dense_11/mul/Sum_1SumEgradient_tape/gradient_tape/differential_model/dense_11/mul/Mul_1:z:0Vgradient_tape/gradient_tape/differential_model/dense_11/mul/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:
Egradient_tape/gradient_tape/differential_model/dense_11/mul/Reshape_1ReshapeJgradient_tape/gradient_tape/differential_model/dense_11/mul/Sum_1:output:0Lgradient_tape/gradient_tape/differential_model/dense_11/mul/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
3gradient_tape/differential_model/dense_11/Sigmoid_1Sigmoid,differential_model/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$û
/gradient_tape/differential_model/dense_11/mul_1MulXgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Reshape:output:07gradient_tape/differential_model/dense_11/Sigmoid_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_12/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:$
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_12/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/ReshapeReshapeLgradient_tape/gradient_tape/differential_model/dense_11/mul/Reshape:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape:output:0*
T0*
_output_shapes
:
Kgradient_tape/gradient_tape/differential_model/dense_11/Sigmoid/SigmoidGradSigmoidGrad5gradient_tape/differential_model/dense_11/Sigmoid:y:0Ngradient_tape/gradient_tape/differential_model/dense_11/mul/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¦
=gradient_tape/differential_model/dense_11/BiasAdd/BiasAddGradBiasAddGrad3gradient_tape/differential_model/dense_11/mul_1:z:0*
T0*
_output_shapes
:$ë
AddN_7AddNZgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Ó
Igradient_tape/differential_model/batch_normalization_12/batchnorm/mul/MulMulAddN_7:sum:0Ndifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Ä
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/mul/Mul_1MulAddN_7:sum:0=differential_model/batch_normalization_12/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:$à
_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1ShapeQgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul:z:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/addAddV2dgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ö
7gradient_tape/differential_model/dense_11/MatMul/MatMulMatMul3gradient_tape/differential_model/dense_11/mul_1:z:09differential_model/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(ó
9gradient_tape/differential_model/dense_11/MatMul/MatMul_1MatMul=differential_model/batch_normalization_11/batchnorm/add_1:z:03gradient_tape/differential_model/dense_11/mul_1:z:0*
T0*
_output_shapes

:$$*
transpose_a(é
_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_3ShapeZgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape:output:0*
T0*
_output_shapes
:Ì
_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_4Shape=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*
_output_shapes
:
mgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgshgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_3:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_4:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÁ
[gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/MulMullgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastTo:output:0=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ú
[gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/SumSum_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:î
agradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_2Reshapedgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$à
]gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul_1MulZgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastTo:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Þ
]gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum_1Sumagradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul_1:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:ã
agradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_3Reshapefgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_4:output:0*
T0*
_output_shapes
:$º
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_11/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_11/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_11/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_11/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:$ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/ReshapeReshapejgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_2:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape:output:0*
T0*
_output_shapes
:¯
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/ShapeShape2differential_model/dense_10/Softplus:activations:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Mul_1Mul2differential_model/dense_10/Softplus:activations:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_11/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$Ò
_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1ShapeCgradient_tape/differential_model/dense_12/MatMul_1/MatMul:product:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/addAddV2dgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
3gradient_tape/differential_model/dense_10/Sigmoid_1Sigmoid,differential_model/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$û
/gradient_tape/differential_model/dense_10/mul_1MulXgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Reshape:output:07gradient_tape/differential_model/dense_10/Sigmoid_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_11/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:$
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_11/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$®
Ggradient_tape/gradient_tape/differential_model/dense_12/MatMul_1/MatMulMatMullgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastTo:output:0;differential_model/dense_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$°
Igradient_tape/gradient_tape/differential_model/dense_12/MatMul_1/MatMul_1MatMullgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastTo:output:01gradient_tape/differential_model/dense_12/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(¦
=gradient_tape/differential_model/dense_10/BiasAdd/BiasAddGradBiasAddGrad3gradient_tape/differential_model/dense_10/mul_1:z:0*
T0*
_output_shapes
:$ë
AddN_8AddNZgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Ó
Igradient_tape/differential_model/batch_normalization_11/batchnorm/mul/MulMulAddN_8:sum:0Ndifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Ä
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/mul/Mul_1MulAddN_8:sum:0=differential_model/batch_normalization_11/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:$Ë
Agradient_tape/gradient_tape/differential_model/dense_12/mul/ShapeShapeZgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape:output:0*
T0*
_output_shapes
:¨
Cgradient_tape/gradient_tape/differential_model/dense_12/mul/Shape_1Shape5gradient_tape/differential_model/dense_12/Sigmoid:y:0*
T0*
_output_shapes
:¸
Qgradient_tape/gradient_tape/differential_model/dense_12/mul/BroadcastGradientArgsBroadcastGradientArgsJgradient_tape/gradient_tape/differential_model/dense_12/mul/Shape:output:0Lgradient_tape/gradient_tape/differential_model/dense_12/mul/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
?gradient_tape/gradient_tape/differential_model/dense_12/mul/MulMulQgradient_tape/gradient_tape/differential_model/dense_12/MatMul_1/MatMul:product:05gradient_tape/differential_model/dense_12/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
?gradient_tape/gradient_tape/differential_model/dense_12/mul/SumSumCgradient_tape/gradient_tape/differential_model/dense_12/mul/Mul:z:0Vgradient_tape/gradient_tape/differential_model/dense_12/mul/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:
Cgradient_tape/gradient_tape/differential_model/dense_12/mul/ReshapeReshapeHgradient_tape/gradient_tape/differential_model/dense_12/mul/Sum:output:0Jgradient_tape/gradient_tape/differential_model/dense_12/mul/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$©
Agradient_tape/gradient_tape/differential_model/dense_12/mul/Mul_1MulZgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape:output:0Qgradient_tape/gradient_tape/differential_model/dense_12/MatMul_1/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Agradient_tape/gradient_tape/differential_model/dense_12/mul/Sum_1SumEgradient_tape/gradient_tape/differential_model/dense_12/mul/Mul_1:z:0Vgradient_tape/gradient_tape/differential_model/dense_12/mul/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:
Egradient_tape/gradient_tape/differential_model/dense_12/mul/Reshape_1ReshapeJgradient_tape/gradient_tape/differential_model/dense_12/mul/Sum_1:output:0Lgradient_tape/gradient_tape/differential_model/dense_12/mul/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ö
7gradient_tape/differential_model/dense_10/MatMul/MatMulMatMul3gradient_tape/differential_model/dense_10/mul_1:z:09differential_model/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b(ó
9gradient_tape/differential_model/dense_10/MatMul/MatMul_1MatMul=differential_model/batch_normalization_10/batchnorm/add_1:z:03gradient_tape/differential_model/dense_10/mul_1:z:0*
T0*
_output_shapes

:$*
transpose_a(ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/ReshapeReshapeLgradient_tape/gradient_tape/differential_model/dense_12/mul/Reshape:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape:output:0*
T0*
_output_shapes
:
Kgradient_tape/gradient_tape/differential_model/dense_12/Sigmoid/SigmoidGradSigmoidGrad5gradient_tape/differential_model/dense_12/Sigmoid:y:0Ngradient_tape/gradient_tape/differential_model/dense_12/mul/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_10/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_10/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_10/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_10/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:à
_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1ShapeQgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul:z:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/addAddV2dgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/ShapeShapedata_0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿæ
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/MulMuldata_0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:¯
Ogradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Sum:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:Ñ
Igradient_tape/differential_model/batch_normalization_10/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:é
_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_3ShapeZgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape:output:0*
T0*
_output_shapes
:Ì
_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_4Shape=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*
_output_shapes
:
mgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgshgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_3:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_4:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÁ
[gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/MulMullgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastTo:output:0=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ú
[gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/SumSum_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:î
agradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_2Reshapedgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$à
]gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul_1MulZgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastTo:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Þ
]gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum_1Sumagradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul_1:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:ã
agradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_3Reshapefgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_4:output:0*
T0*
_output_shapes
:$
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_10/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_10/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/ReshapeReshapejgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_2:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape:output:0*
T0*
_output_shapes
:é
AddN_9AddNXgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Reshape:output:0Qgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:Ó
Igradient_tape/differential_model/batch_normalization_10/batchnorm/mul/MulMulAddN_9:sum:0Ndifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ä
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/mul/Mul_1MulAddN_9:sum:0=differential_model/batch_normalization_10/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:Ò
_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1ShapeCgradient_tape/differential_model/dense_13/MatMul_1/MatMul:product:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/addAddV2dgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Ggradient_tape/gradient_tape/differential_model/dense_13/MatMul_1/MatMulMatMullgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastTo:output:0;differential_model/dense_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$°
Igradient_tape/gradient_tape/differential_model/dense_13/MatMul_1/MatMul_1MatMullgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastTo:output:01gradient_tape/differential_model/dense_13/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(Ë
Agradient_tape/gradient_tape/differential_model/dense_13/mul/ShapeShapeZgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape:output:0*
T0*
_output_shapes
:¨
Cgradient_tape/gradient_tape/differential_model/dense_13/mul/Shape_1Shape5gradient_tape/differential_model/dense_13/Sigmoid:y:0*
T0*
_output_shapes
:¸
Qgradient_tape/gradient_tape/differential_model/dense_13/mul/BroadcastGradientArgsBroadcastGradientArgsJgradient_tape/gradient_tape/differential_model/dense_13/mul/Shape:output:0Lgradient_tape/gradient_tape/differential_model/dense_13/mul/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
?gradient_tape/gradient_tape/differential_model/dense_13/mul/MulMulQgradient_tape/gradient_tape/differential_model/dense_13/MatMul_1/MatMul:product:05gradient_tape/differential_model/dense_13/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
?gradient_tape/gradient_tape/differential_model/dense_13/mul/SumSumCgradient_tape/gradient_tape/differential_model/dense_13/mul/Mul:z:0Vgradient_tape/gradient_tape/differential_model/dense_13/mul/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:
Cgradient_tape/gradient_tape/differential_model/dense_13/mul/ReshapeReshapeHgradient_tape/gradient_tape/differential_model/dense_13/mul/Sum:output:0Jgradient_tape/gradient_tape/differential_model/dense_13/mul/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$©
Agradient_tape/gradient_tape/differential_model/dense_13/mul/Mul_1MulZgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape:output:0Qgradient_tape/gradient_tape/differential_model/dense_13/MatMul_1/MatMul:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Agradient_tape/gradient_tape/differential_model/dense_13/mul/Sum_1SumEgradient_tape/gradient_tape/differential_model/dense_13/mul/Mul_1:z:0Vgradient_tape/gradient_tape/differential_model/dense_13/mul/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:
Egradient_tape/gradient_tape/differential_model/dense_13/mul/Reshape_1ReshapeJgradient_tape/gradient_tape/differential_model/dense_13/mul/Sum_1:output:0Lgradient_tape/gradient_tape/differential_model/dense_13/mul/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/ReshapeReshapeLgradient_tape/gradient_tape/differential_model/dense_13/mul/Reshape:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape:output:0*
T0*
_output_shapes
:
Kgradient_tape/gradient_tape/differential_model/dense_13/Sigmoid/SigmoidGradSigmoidGrad5gradient_tape/differential_model/dense_13/Sigmoid:y:0Ngradient_tape/gradient_tape/differential_model/dense_13/mul/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$à
_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1ShapeQgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Mul:z:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/addAddV2dgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$é
_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_3ShapeZgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape:output:0*
T0*
_output_shapes
:Ì
_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_4Shape=differential_model/batch_normalization_14/batchnorm_1/mul:z:0*
T0*
_output_shapes
:
mgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastGradientArgsBroadcastGradientArgshgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_3:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_4:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÁ
[gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/MulMullgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastTo:output:0=differential_model/batch_normalization_14/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ú
[gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/SumSum_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Mul:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:î
agradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_2Reshapedgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Sum:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$à
]gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Mul_1MulZgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastTo:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Þ
]gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Sum_1Sumagradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Mul_1:z:0rgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:ã
agradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_3Reshapefgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Sum_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Shape_4:output:0*
T0*
_output_shapes
:$ì
]gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/ShapeShapeVgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Sum:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿá
_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/ReshapeReshapejgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_2:output:0fgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape:output:0*
T0*
_output_shapes
:Ò
_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1ShapeCgradient_tape/differential_model/dense_14/MatMul_1/MatMul:product:0*
T0*
_output_shapes
:
\gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/SizeConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ó
[gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/addAddV2dgradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/BroadcastGradientArgs:r0:0egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
[gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/modFloorMod_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/add:z:0egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Size:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_2Shape_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/mod:z:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*
_output_shapes
:
cgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/range/startConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B : 
cgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/range/deltaConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :¹
]gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/rangeRangelgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/range/start:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Size:output:0lgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/range/delta:output:0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*
_output_shapes
:
bgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/ones/ConstConst*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*
_output_shapes
: *
dtype0*
value	B :Ý
\gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/onesFillhgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_2:output:0kgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/ones/Const:output:0*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/DynamicStitchDynamicStitchfgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/range:output:0_gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/mod:z:0hgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1:output:0egradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/ones:output:0*
N*
T0*r
_classh
fdloc:@gradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
agradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape_1Reshapehgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape:output:0ngradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/DynamicStitch:merged:0*
T0*
_output_shapes
:ú
cgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/BroadcastToBroadcastTojgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Reshape_1:output:0hgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/Shape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ggradient_tape/gradient_tape/differential_model/dense_14/MatMul_1/MatMulMatMullgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/add_1/BroadcastTo:output:0ones_like:output:0*
T0*
_output_shapes

:$*
transpose_a(·
Mgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul/Mul_2Muljgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_3:output:0Pdifferential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$¦
Mgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul/Mul_3Muljgradient_tape/gradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul_1/Reshape_3:output:0?differential_model/batch_normalization_14/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:$Æ
Agradient_tape/differential_model/dense_13/BiasAdd_1/BiasAddGrad_1BiasAddGradOgradient_tape/gradient_tape/differential_model/dense_13/Sigmoid/SigmoidGrad:z:0*
T0*
_output_shapes
:$
;gradient_tape/differential_model/dense_13/MatMul_1/MatMul_2MatMulOgradient_tape/gradient_tape/differential_model/dense_13/Sigmoid/SigmoidGrad:z:0;differential_model/dense_13/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(
;gradient_tape/differential_model/dense_13/MatMul_1/MatMul_3MatMul?differential_model/batch_normalization_13/batchnorm_1/add_1:z:0Ogradient_tape/gradient_tape/differential_model/dense_13/Sigmoid/SigmoidGrad:z:0*
T0*
_output_shapes

:$$*
transpose_a(À
Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_2Shape?differential_model/batch_normalization_13/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_3Shape=differential_model/batch_normalization_13/batchnorm_1/sub:z:0*
T0*
_output_shapes
:æ
agradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastGradientArgs_1BroadcastGradientArgsZgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_2:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_3:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¨
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Sum_2SumEgradient_tape/differential_model/dense_13/MatMul_1/MatMul_2:product:0fgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastGradientArgs_1:r0:0*
T0*
_output_shapes
:Æ
Sgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_2ReshapeXgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Sum_2:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¨
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Sum_3SumEgradient_tape/differential_model/dense_13/MatMul_1/MatMul_2:product:0fgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/BroadcastGradientArgs_1:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_3ReshapeXgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Sum_3:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Shape_3:output:0*
T0*
_output_shapes
:$Ý
AddN_10AddNSgradient_tape/gradient_tape/differential_model/dense_13/MatMul_1/MatMul_1:product:0Egradient_tape/differential_model/dense_13/MatMul_1/MatMul_3:product:0*
N*
T0*
_output_shapes

:$$µ
Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_2Shape4differential_model/dense_12/Softplus_1:activations:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_3Shape=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*
_output_shapes
:æ
agradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgs_1BroadcastGradientArgsZgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_2:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_3:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¥
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul_2Mul\gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_2:output:0=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¶
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum_2SumSgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul_2:z:0fgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgs_1:r0:0*
T0*
_output_shapes
:Æ
Sgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_2ReshapeXgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum_2:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul_3Mul4differential_model/dense_12/Softplus_1:activations:0\gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¶
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum_3SumSgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Mul_3:z:0fgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/BroadcastGradientArgs_1:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_3ReshapeXgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Sum_3:output:0Zgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Shape_3:output:0*
T0*
_output_shapes
:$×
Mgradient_tape/differential_model/batch_normalization_13/batchnorm_1/sub/Neg_1Neg\gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_3:output:0*
T0*
_output_shapes
:$ 
3gradient_tape/differential_model/dense_12/Sigmoid_2Sigmoid.differential_model/dense_12/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ÿ
/gradient_tape/differential_model/dense_12/mul_2Mul\gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_2:output:07gradient_tape/differential_model/dense_12/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_2/Mul_2MulQgradient_tape/differential_model/batch_normalization_13/batchnorm_1/sub/Neg_1:y:0=differential_model/batch_normalization_13/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$
Ogradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_2/Mul_3MulQgradient_tape/differential_model/batch_normalization_13/batchnorm_1/sub/Neg_1:y:0Ndifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$Ð
AddN_11AddNOgradient_tape/gradient_tape/differential_model/dense_12/Sigmoid/SigmoidGrad:z:03gradient_tape/differential_model/dense_12/mul_2:z:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Agradient_tape/differential_model/dense_12/BiasAdd_1/BiasAddGrad_1BiasAddGradAddN_11:sum:0*
T0*
_output_shapes
:$Ü
AddN_12AddNjgradient_tape/gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_3:output:0\gradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_1/Reshape_3:output:0Sgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul_2/Mul_3:z:0*
N*
T0*
_output_shapes
:$Ú
Mgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul/Mul_2MulAddN_12:sum:0Pdifferential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$É
Mgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul/Mul_3MulAddN_12:sum:0?differential_model/batch_normalization_13/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:$Ö
;gradient_tape/differential_model/dense_12/MatMul_1/MatMul_2MatMulAddN_11:sum:0;differential_model/dense_12/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(Ñ
;gradient_tape/differential_model/dense_12/MatMul_1/MatMul_3MatMul?differential_model/batch_normalization_12/batchnorm_1/add_1:z:0AddN_11:sum:0*
T0*
_output_shapes

:$$*
transpose_a(À
Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_2Shape?differential_model/batch_normalization_12/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_3Shape=differential_model/batch_normalization_12/batchnorm_1/sub:z:0*
T0*
_output_shapes
:æ
agradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastGradientArgs_1BroadcastGradientArgsZgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_2:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_3:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¨
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Sum_2SumEgradient_tape/differential_model/dense_12/MatMul_1/MatMul_2:product:0fgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastGradientArgs_1:r0:0*
T0*
_output_shapes
:Æ
Sgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_2ReshapeXgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Sum_2:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¨
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Sum_3SumEgradient_tape/differential_model/dense_12/MatMul_1/MatMul_2:product:0fgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/BroadcastGradientArgs_1:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_3ReshapeXgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Sum_3:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Shape_3:output:0*
T0*
_output_shapes
:$Ý
AddN_13AddNSgradient_tape/gradient_tape/differential_model/dense_12/MatMul_1/MatMul_1:product:0Egradient_tape/differential_model/dense_12/MatMul_1/MatMul_3:product:0*
N*
T0*
_output_shapes

:$$µ
Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_2Shape4differential_model/dense_11/Softplus_1:activations:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_3Shape=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*
_output_shapes
:æ
agradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgs_1BroadcastGradientArgsZgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_2:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_3:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¥
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul_2Mul\gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_2:output:0=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¶
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum_2SumSgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul_2:z:0fgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgs_1:r0:0*
T0*
_output_shapes
:Æ
Sgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_2ReshapeXgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum_2:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul_3Mul4differential_model/dense_11/Softplus_1:activations:0\gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¶
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum_3SumSgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Mul_3:z:0fgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/BroadcastGradientArgs_1:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_3ReshapeXgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Sum_3:output:0Zgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Shape_3:output:0*
T0*
_output_shapes
:$×
Mgradient_tape/differential_model/batch_normalization_12/batchnorm_1/sub/Neg_1Neg\gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_3:output:0*
T0*
_output_shapes
:$ 
3gradient_tape/differential_model/dense_11/Sigmoid_2Sigmoid.differential_model/dense_11/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ÿ
/gradient_tape/differential_model/dense_11/mul_2Mul\gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_2:output:07gradient_tape/differential_model/dense_11/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_2/Mul_2MulQgradient_tape/differential_model/batch_normalization_12/batchnorm_1/sub/Neg_1:y:0=differential_model/batch_normalization_12/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$
Ogradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_2/Mul_3MulQgradient_tape/differential_model/batch_normalization_12/batchnorm_1/sub/Neg_1:y:0Ndifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$Ð
AddN_14AddNOgradient_tape/gradient_tape/differential_model/dense_11/Sigmoid/SigmoidGrad:z:03gradient_tape/differential_model/dense_11/mul_2:z:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Agradient_tape/differential_model/dense_11/BiasAdd_1/BiasAddGrad_1BiasAddGradAddN_14:sum:0*
T0*
_output_shapes
:$Ü
AddN_15AddNjgradient_tape/gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_3:output:0\gradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_1/Reshape_3:output:0Sgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul_2/Mul_3:z:0*
N*
T0*
_output_shapes
:$Ú
Mgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul/Mul_2MulAddN_15:sum:0Pdifferential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$É
Mgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul/Mul_3MulAddN_15:sum:0?differential_model/batch_normalization_12/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:$Ö
;gradient_tape/differential_model/dense_11/MatMul_1/MatMul_2MatMulAddN_14:sum:0;differential_model/dense_11/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(Ñ
;gradient_tape/differential_model/dense_11/MatMul_1/MatMul_3MatMul?differential_model/batch_normalization_11/batchnorm_1/add_1:z:0AddN_14:sum:0*
T0*
_output_shapes

:$$*
transpose_a(À
Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_2Shape?differential_model/batch_normalization_11/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_3Shape=differential_model/batch_normalization_11/batchnorm_1/sub:z:0*
T0*
_output_shapes
:æ
agradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastGradientArgs_1BroadcastGradientArgsZgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_2:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_3:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¨
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Sum_2SumEgradient_tape/differential_model/dense_11/MatMul_1/MatMul_2:product:0fgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastGradientArgs_1:r0:0*
T0*
_output_shapes
:Æ
Sgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_2ReshapeXgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Sum_2:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¨
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Sum_3SumEgradient_tape/differential_model/dense_11/MatMul_1/MatMul_2:product:0fgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/BroadcastGradientArgs_1:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_3ReshapeXgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Sum_3:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Shape_3:output:0*
T0*
_output_shapes
:$Ý
AddN_16AddNSgradient_tape/gradient_tape/differential_model/dense_11/MatMul_1/MatMul_1:product:0Egradient_tape/differential_model/dense_11/MatMul_1/MatMul_3:product:0*
N*
T0*
_output_shapes

:$$µ
Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_2Shape4differential_model/dense_10/Softplus_1:activations:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_3Shape=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*
_output_shapes
:æ
agradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgs_1BroadcastGradientArgsZgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_2:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_3:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¥
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul_2Mul\gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_2:output:0=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¶
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum_2SumSgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul_2:z:0fgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgs_1:r0:0*
T0*
_output_shapes
:Æ
Sgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_2ReshapeXgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum_2:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul_3Mul4differential_model/dense_10/Softplus_1:activations:0\gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¶
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum_3SumSgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Mul_3:z:0fgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/BroadcastGradientArgs_1:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_3ReshapeXgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Sum_3:output:0Zgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Shape_3:output:0*
T0*
_output_shapes
:$×
Mgradient_tape/differential_model/batch_normalization_11/batchnorm_1/sub/Neg_1Neg\gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_3:output:0*
T0*
_output_shapes
:$ 
3gradient_tape/differential_model/dense_10/Sigmoid_2Sigmoid.differential_model/dense_10/BiasAdd_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ÿ
/gradient_tape/differential_model/dense_10/mul_2Mul\gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_2:output:07gradient_tape/differential_model/dense_10/Sigmoid_2:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_2/Mul_2MulQgradient_tape/differential_model/batch_normalization_11/batchnorm_1/sub/Neg_1:y:0=differential_model/batch_normalization_11/batchnorm_1/mul:z:0*
T0*
_output_shapes
:$
Ogradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_2/Mul_3MulQgradient_tape/differential_model/batch_normalization_11/batchnorm_1/sub/Neg_1:y:0Ndifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$Ð
AddN_17AddNOgradient_tape/gradient_tape/differential_model/dense_10/Sigmoid/SigmoidGrad:z:03gradient_tape/differential_model/dense_10/mul_2:z:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Agradient_tape/differential_model/dense_10/BiasAdd_1/BiasAddGrad_1BiasAddGradAddN_17:sum:0*
T0*
_output_shapes
:$Ü
AddN_18AddNjgradient_tape/gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_3:output:0\gradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_1/Reshape_3:output:0Sgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul_2/Mul_3:z:0*
N*
T0*
_output_shapes
:$Ú
Mgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul/Mul_2MulAddN_18:sum:0Pdifferential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$É
Mgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul/Mul_3MulAddN_18:sum:0?differential_model/batch_normalization_11/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:$Ö
;gradient_tape/differential_model/dense_10/MatMul_1/MatMul_2MatMulAddN_17:sum:0;differential_model/dense_10/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b(Ñ
;gradient_tape/differential_model/dense_10/MatMul_1/MatMul_3MatMul?differential_model/batch_normalization_10/batchnorm_1/add_1:z:0AddN_17:sum:0*
T0*
_output_shapes

:$*
transpose_a(À
Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_2Shape?differential_model/batch_normalization_10/batchnorm_1/mul_1:z:0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_3Shape=differential_model/batch_normalization_10/batchnorm_1/sub:z:0*
T0*
_output_shapes
:æ
agradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastGradientArgs_1BroadcastGradientArgsZgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_2:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_3:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ¨
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Sum_2SumEgradient_tape/differential_model/dense_10/MatMul_1/MatMul_2:product:0fgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastGradientArgs_1:r0:0*
T0*
_output_shapes
:Æ
Sgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_2ReshapeXgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Sum_2:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Sum_3SumEgradient_tape/differential_model/dense_10/MatMul_1/MatMul_2:product:0fgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/BroadcastGradientArgs_1:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_3ReshapeXgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Sum_3:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Shape_3:output:0*
T0*
_output_shapes
:Ý
AddN_19AddNSgradient_tape/gradient_tape/differential_model/dense_10/MatMul_1/MatMul_1:product:0Egradient_tape/differential_model/dense_10/MatMul_1/MatMul_3:product:0*
N*
T0*
_output_shapes

:$
Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_2Shapedata_0*
T0*
_output_shapes
:¾
Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_3Shape=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*
_output_shapes
:æ
agradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgs_1BroadcastGradientArgsZgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_2:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_3:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿî
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul_2Muldata_0\gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum_2SumSgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Mul_2:z:0fgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/BroadcastGradientArgs_1:r1:0*
T0*
_output_shapes
:¹
Sgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_2ReshapeXgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Sum_2:output:0Zgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Shape_3:output:0*
T0*
_output_shapes
:×
Mgradient_tape/differential_model/batch_normalization_10/batchnorm_1/sub/Neg_1Neg\gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_3:output:0*
T0*
_output_shapes
:
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_2/Mul_2MulQgradient_tape/differential_model/batch_normalization_10/batchnorm_1/sub/Neg_1:y:0=differential_model/batch_normalization_10/batchnorm_1/mul:z:0*
T0*
_output_shapes
:
Ogradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_2/Mul_3MulQgradient_tape/differential_model/batch_normalization_10/batchnorm_1/sub/Neg_1:y:0Ndifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
:Ü
AddN_20AddNjgradient_tape/gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_3:output:0\gradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_1/Reshape_2:output:0Sgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul_2/Mul_3:z:0*
N*
T0*
_output_shapes
:Ú
Mgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul/Mul_2MulAddN_20:sum:0Pdifferential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:É
Mgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul/Mul_3MulAddN_20:sum:0?differential_model/batch_normalization_10/batchnorm_1/Rsqrt:y:0*
T0*
_output_shapes
:á
AddN_21AddNOgradient_tape/differential_model/batch_normalization_10/batchnorm/mul/Mul_1:z:0Qgradient_tape/differential_model/batch_normalization_10/batchnorm_1/mul/Mul_3:z:0*
N*
T0*
_output_shapes
:÷
AddN_22AddNZgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Reshape_1:output:0\gradient_tape/differential_model/batch_normalization_10/batchnorm_1/add_1/Reshape_3:output:0*
N*
T0*
_output_shapes
:
AddN_23AddNCgradient_tape/differential_model/dense_10/MatMul/MatMul_1:product:0AddN_19:sum:0*
N*
T0*
_output_shapes

:$Ñ
AddN_24AddNFgradient_tape/differential_model/dense_10/BiasAdd/BiasAddGrad:output:0Jgradient_tape/differential_model/dense_10/BiasAdd_1/BiasAddGrad_1:output:0*
N*
T0*
_output_shapes
:$á
AddN_25AddNOgradient_tape/differential_model/batch_normalization_11/batchnorm/mul/Mul_1:z:0Qgradient_tape/differential_model/batch_normalization_11/batchnorm_1/mul/Mul_3:z:0*
N*
T0*
_output_shapes
:$÷
AddN_26AddNZgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape_1:output:0\gradient_tape/differential_model/batch_normalization_11/batchnorm_1/add_1/Reshape_3:output:0*
N*
T0*
_output_shapes
:$
AddN_27AddNCgradient_tape/differential_model/dense_11/MatMul/MatMul_1:product:0AddN_16:sum:0*
N*
T0*
_output_shapes

:$$Ñ
AddN_28AddNFgradient_tape/differential_model/dense_11/BiasAdd/BiasAddGrad:output:0Jgradient_tape/differential_model/dense_11/BiasAdd_1/BiasAddGrad_1:output:0*
N*
T0*
_output_shapes
:$á
AddN_29AddNOgradient_tape/differential_model/batch_normalization_12/batchnorm/mul/Mul_1:z:0Qgradient_tape/differential_model/batch_normalization_12/batchnorm_1/mul/Mul_3:z:0*
N*
T0*
_output_shapes
:$÷
AddN_30AddNZgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape_1:output:0\gradient_tape/differential_model/batch_normalization_12/batchnorm_1/add_1/Reshape_3:output:0*
N*
T0*
_output_shapes
:$
AddN_31AddNCgradient_tape/differential_model/dense_12/MatMul/MatMul_1:product:0AddN_13:sum:0*
N*
T0*
_output_shapes

:$$Ñ
AddN_32AddNFgradient_tape/differential_model/dense_12/BiasAdd/BiasAddGrad:output:0Jgradient_tape/differential_model/dense_12/BiasAdd_1/BiasAddGrad_1:output:0*
N*
T0*
_output_shapes
:$á
AddN_33AddNOgradient_tape/differential_model/batch_normalization_13/batchnorm/mul/Mul_1:z:0Qgradient_tape/differential_model/batch_normalization_13/batchnorm_1/mul/Mul_3:z:0*
N*
T0*
_output_shapes
:$÷
AddN_34AddNZgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape_1:output:0\gradient_tape/differential_model/batch_normalization_13/batchnorm_1/add_1/Reshape_3:output:0*
N*
T0*
_output_shapes
:$
AddN_35AddNCgradient_tape/differential_model/dense_13/MatMul/MatMul_1:product:0AddN_10:sum:0*
N*
T0*
_output_shapes

:$$Ñ
AddN_36AddNFgradient_tape/differential_model/dense_13/BiasAdd/BiasAddGrad:output:0Jgradient_tape/differential_model/dense_13/BiasAdd_1/BiasAddGrad_1:output:0*
N*
T0*
_output_shapes
:$á
AddN_37AddNOgradient_tape/differential_model/batch_normalization_14/batchnorm/mul/Mul_1:z:0Qgradient_tape/differential_model/batch_normalization_14/batchnorm_1/mul/Mul_3:z:0*
N*
T0*
_output_shapes
:$Ù
AddN_38AddNCgradient_tape/differential_model/dense_14/MatMul/MatMul_1:product:0Qgradient_tape/gradient_tape/differential_model/dense_14/MatMul_1/MatMul:product:0*
N*
T0*
_output_shapes

:$r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0	
	Adam/CastCast Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0	*
_output_shapes
: 
+Adam/ExponentialDecay/initial_learning_rateConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *·Ñ8
Adam/ExponentialDecay/Cast/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
value
B :Ð§
Adam/ExponentialDecay/CastCast%Adam/ExponentialDecay/Cast/x:output:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0*
_output_shapes
: 
Adam/ExponentialDecay/Cast_1/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *33s?¦
Adam/ExponentialDecay/truedivRealDivAdam/Cast:y:0Adam/ExponentialDecay/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: »
Adam/ExponentialDecay/PowPow'Adam/ExponentialDecay/Cast_1/x:output:0!Adam/ExponentialDecay/truediv:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: À
Adam/ExponentialDecayMul4Adam/ExponentialDecay/initial_learning_rate:output:0Adam/ExponentialDecay/Pow:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/IdentityIdentityAdam/ExponentialDecay:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: m
Adam/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0	*
value	B	 R
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *¿Ö3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: O
Adam/Identity_3IdentityAddN_21:sum:0*
T0*
_output_shapes
:O
Adam/Identity_4IdentityAddN_22:sum:0*
T0*
_output_shapes
:S
Adam/Identity_5IdentityAddN_23:sum:0*
T0*
_output_shapes

:$O
Adam/Identity_6IdentityAddN_24:sum:0*
T0*
_output_shapes
:$O
Adam/Identity_7IdentityAddN_25:sum:0*
T0*
_output_shapes
:$O
Adam/Identity_8IdentityAddN_26:sum:0*
T0*
_output_shapes
:$S
Adam/Identity_9IdentityAddN_27:sum:0*
T0*
_output_shapes

:$$P
Adam/Identity_10IdentityAddN_28:sum:0*
T0*
_output_shapes
:$P
Adam/Identity_11IdentityAddN_29:sum:0*
T0*
_output_shapes
:$P
Adam/Identity_12IdentityAddN_30:sum:0*
T0*
_output_shapes
:$T
Adam/Identity_13IdentityAddN_31:sum:0*
T0*
_output_shapes

:$$P
Adam/Identity_14IdentityAddN_32:sum:0*
T0*
_output_shapes
:$P
Adam/Identity_15IdentityAddN_33:sum:0*
T0*
_output_shapes
:$P
Adam/Identity_16IdentityAddN_34:sum:0*
T0*
_output_shapes
:$T
Adam/Identity_17IdentityAddN_35:sum:0*
T0*
_output_shapes

:$$P
Adam/Identity_18IdentityAddN_36:sum:0*
T0*
_output_shapes
:$P
Adam/Identity_19IdentityAddN_37:sum:0*
T0*
_output_shapes
:$
Adam/Identity_20IdentityZgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$T
Adam/Identity_21IdentityAddN_38:sum:0*
T0*
_output_shapes

:$
Adam/Identity_22IdentityFgradient_tape/differential_model/dense_14/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:

Adam/IdentityN	IdentityNAddN_21:sum:0AddN_22:sum:0AddN_23:sum:0AddN_24:sum:0AddN_25:sum:0AddN_26:sum:0AddN_27:sum:0AddN_28:sum:0AddN_29:sum:0AddN_30:sum:0AddN_31:sum:0AddN_32:sum:0AddN_33:sum:0AddN_34:sum:0AddN_35:sum:0AddN_36:sum:0AddN_37:sum:0Zgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape_1:output:0AddN_38:sum:0Fgradient_tape/differential_model/dense_14/BiasAdd/BiasAddGrad:output:0AddN_21:sum:0AddN_22:sum:0AddN_23:sum:0AddN_24:sum:0AddN_25:sum:0AddN_26:sum:0AddN_27:sum:0AddN_28:sum:0AddN_29:sum:0AddN_30:sum:0AddN_31:sum:0AddN_32:sum:0AddN_33:sum:0AddN_34:sum:0AddN_35:sum:0AddN_36:sum:0AddN_37:sum:0Zgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape_1:output:0AddN_38:sum:0Fgradient_tape/differential_model/dense_14/BiasAdd/BiasAddGrad:output:0*1
T,
*2(*,
_gradient_op_typeCustomGradient-165623*®
_output_shapes
:::$:$:$:$:$$:$:$:$:$$:$:$:$:$$:$:$:$:$::::$:$:$:$:$$:$:$:$:$$:$:$:$:$$:$:$:$:$:Ä
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdamOdifferential_model_batch_normalization_10_batchnorm_mul_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:0G^differential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpI^differential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*b
_classX
VTloc:@differential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Â
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdamMdifferential_model_batch_normalization_10_batchnorm_readvariableop_2_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1E^differential_model/batch_normalization_10/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_2",/job:localhost/replica:0/task:0/device:CPU:0*
T0*`
_classV
TRloc:@differential_model/batch_normalization_10/batchnorm/ReadVariableOp_2/resource*
_output_shapes
 *
use_locking(ö
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam:differential_model_dense_10_matmul_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:22^differential_model/dense_10/MatMul/ReadVariableOp4^differential_model/dense_10/MatMul_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*M
_classC
A?loc:@differential_model/dense_10/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(ú
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam;differential_model_dense_10_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:33^differential_model/dense_10/BiasAdd/ReadVariableOp5^differential_model/dense_10/BiasAdd_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*N
_classD
B@loc:@differential_model/dense_10/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Ê
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamOdifferential_model_batch_normalization_11_batchnorm_mul_readvariableop_resource&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:4G^differential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpI^differential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*b
_classX
VTloc:@differential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Â
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdamMdifferential_model_batch_normalization_11_batchnorm_readvariableop_2_resource&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:5E^differential_model/batch_normalization_11/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_2",/job:localhost/replica:0/task:0/device:CPU:0*
T0*`
_classV
TRloc:@differential_model/batch_normalization_11/batchnorm/ReadVariableOp_2/resource*
_output_shapes
 *
use_locking(ö
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam:differential_model_dense_11_matmul_readvariableop_resource&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:62^differential_model/dense_11/MatMul/ReadVariableOp4^differential_model/dense_11/MatMul_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*M
_classC
A?loc:@differential_model/dense_11/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(ú
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam;differential_model_dense_11_biasadd_readvariableop_resource&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:73^differential_model/dense_11/BiasAdd/ReadVariableOp5^differential_model/dense_11/BiasAdd_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*N
_classD
B@loc:@differential_model/dense_11/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Ê
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdamOdifferential_model_batch_normalization_12_batchnorm_mul_readvariableop_resource&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:8G^differential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpI^differential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*b
_classX
VTloc:@differential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Â
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdamMdifferential_model_batch_normalization_12_batchnorm_readvariableop_2_resource&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:9E^differential_model/batch_normalization_12/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_2",/job:localhost/replica:0/task:0/device:CPU:0*
T0*`
_classV
TRloc:@differential_model/batch_normalization_12/batchnorm/ReadVariableOp_2/resource*
_output_shapes
 *
use_locking(ú
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam:differential_model_dense_12_matmul_readvariableop_resource'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:102^differential_model/dense_12/MatMul/ReadVariableOp4^differential_model/dense_12/MatMul_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*M
_classC
A?loc:@differential_model/dense_12/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(þ
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam;differential_model_dense_12_biasadd_readvariableop_resource'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:113^differential_model/dense_12/BiasAdd/ReadVariableOp5^differential_model/dense_12/BiasAdd_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*N
_classD
B@loc:@differential_model/dense_12/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Î
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdamOdifferential_model_batch_normalization_13_batchnorm_mul_readvariableop_resource'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:12G^differential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpI^differential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*b
_classX
VTloc:@differential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Æ
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdamMdifferential_model_batch_normalization_13_batchnorm_readvariableop_2_resource'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:13E^differential_model/batch_normalization_13/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_2",/job:localhost/replica:0/task:0/device:CPU:0*
T0*`
_classV
TRloc:@differential_model/batch_normalization_13/batchnorm/ReadVariableOp_2/resource*
_output_shapes
 *
use_locking(ú
%Adam/Adam/update_14/ResourceApplyAdamResourceApplyAdam:differential_model_dense_13_matmul_readvariableop_resource'adam_adam_update_14_resourceapplyadam_m'adam_adam_update_14_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:142^differential_model/dense_13/MatMul/ReadVariableOp4^differential_model/dense_13/MatMul_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*M
_classC
A?loc:@differential_model/dense_13/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(þ
%Adam/Adam/update_15/ResourceApplyAdamResourceApplyAdam;differential_model_dense_13_biasadd_readvariableop_resource'adam_adam_update_15_resourceapplyadam_m'adam_adam_update_15_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:153^differential_model/dense_13/BiasAdd/ReadVariableOp5^differential_model/dense_13/BiasAdd_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*N
_classD
B@loc:@differential_model/dense_13/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Î
%Adam/Adam/update_16/ResourceApplyAdamResourceApplyAdamOdifferential_model_batch_normalization_14_batchnorm_mul_readvariableop_resource'adam_adam_update_16_resourceapplyadam_m'adam_adam_update_16_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:16G^differential_model/batch_normalization_14/batchnorm/mul/ReadVariableOpI^differential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*b
_classX
VTloc:@differential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(Æ
%Adam/Adam/update_17/ResourceApplyAdamResourceApplyAdamMdifferential_model_batch_normalization_14_batchnorm_readvariableop_2_resource'adam_adam_update_17_resourceapplyadam_m'adam_adam_update_17_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:17E^differential_model/batch_normalization_14/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_2",/job:localhost/replica:0/task:0/device:CPU:0*
T0*`
_classV
TRloc:@differential_model/batch_normalization_14/batchnorm/ReadVariableOp_2/resource*
_output_shapes
 *
use_locking(ú
%Adam/Adam/update_18/ResourceApplyAdamResourceApplyAdam:differential_model_dense_14_matmul_readvariableop_resource'adam_adam_update_18_resourceapplyadam_m'adam_adam_update_18_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:182^differential_model/dense_14/MatMul/ReadVariableOp4^differential_model/dense_14/MatMul_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*M
_classC
A?loc:@differential_model/dense_14/MatMul/ReadVariableOp/resource*
_output_shapes
 *
use_locking(þ
%Adam/Adam/update_19/ResourceApplyAdamResourceApplyAdam;differential_model_dense_14_biasadd_readvariableop_resource'adam_adam_update_19_resourceapplyadam_m'adam_adam_update_19_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:193^differential_model/dense_14/BiasAdd/ReadVariableOp5^differential_model/dense_14/BiasAdd_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*N
_classD
B@loc:@differential_model/dense_14/BiasAdd/ReadVariableOp/resource*
_output_shapes
 *
use_locking(ô
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 RÅ
Adam/Adam/AssignAddVariableOpAssignAddVariableOp!adam_cast_readvariableop_resourceAdam/Adam/Const:output:0^Adam/Cast/ReadVariableOp^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	[
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿq
ExpandDims_1
ExpandDimsdata_1_0ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
subSub,differential_model/dense_14/BiasAdd:output:0ExpandDims_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
AbsAbssub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿd
MeanMeanAbs:y:0Mean/reduction_indices:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ConstConst*
_output_shapes
:*
dtype0*
valueB: L
Sum_2SumMean:output:0Const:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_2AssignAddVariableOpassignaddvariableop_2_resourceSum_2:output:0*
_output_shapes
 *
dtype0<
SizeSizeMean:output:0*
T0*
_output_shapes
: M
Cast_1CastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_3AssignAddVariableOpassignaddvariableop_3_resource
Cast_1:y:0^AssignAddVariableOp_2*
_output_shapes
 *
dtype0
SquaredDifferenceSquaredDifference,differential_model/dense_14/BiasAdd:output:0ExpandDims_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Const_1Const*
_output_shapes
:*
dtype0*
valueB"       V
Sum_3SumSquaredDifference:z:0Const_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_4AssignAddVariableOpassignaddvariableop_4_resourceSum_3:output:0*
_output_shapes
 *
dtype0F
Size_1SizeSquaredDifference:z:0*
T0*
_output_shapes
: O
Cast_2CastSize_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_5AssignAddVariableOpassignaddvariableop_5_resource
Cast_2:y:0^AssignAddVariableOp_4*
_output_shapes
 *
dtype0H
Rank_2Const*
_output_shapes
: *
dtype0*
value	B : O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_2Rangerange_2/start:output:0Rank_2:output:0range_2/delta:output:0*
_output_shapes
: H
Sum_4Sumadd:z:0range_2:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_6AssignAddVariableOpassignaddvariableop_6_resourceSum_4:output:0*
_output_shapes
 *
dtype0H
Size_2Const*
_output_shapes
: *
dtype0*
value	B :O
Cast_3CastSize_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_7AssignAddVariableOpassignaddvariableop_7_resource
Cast_3:y:0^AssignAddVariableOp_6*
_output_shapes
 *
dtype0H
Rank_3Const*
_output_shapes
: *
dtype0*
value	B : O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_3Rangerange_3/start:output:0Rank_3:output:0range_3/delta:output:0*
_output_shapes
: k
Sum_5Sum*mean_squared_error/weighted_loss/value:z:0range_3:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_8AssignAddVariableOpassignaddvariableop_8_resourceSum_5:output:0*
_output_shapes
 *
dtype0H
Size_3Const*
_output_shapes
: *
dtype0*
value	B :O
Cast_4CastSize_3:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_9AssignAddVariableOpassignaddvariableop_9_resource
Cast_4:y:0^AssignAddVariableOp_8*
_output_shapes
 *
dtype0H
Rank_4Const*
_output_shapes
: *
dtype0*
value	B : O
range_4/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_4Rangerange_4/start:output:0Rank_4:output:0range_4/delta:output:0*
_output_shapes
: m
Sum_6Sum,mean_squared_error_1/weighted_loss/value:z:0range_4:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_10AssignAddVariableOpassignaddvariableop_10_resourceSum_6:output:0*
_output_shapes
 *
dtype0H
Size_4Const*
_output_shapes
: *
dtype0*
value	B :O
Cast_5CastSize_4:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_11AssignAddVariableOpassignaddvariableop_11_resource
Cast_5:y:0^AssignAddVariableOp_10*
_output_shapes
 *
dtype0
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp*
_output_shapes
: *
dtype0
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: 
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_2_resource^AssignAddVariableOp_2*
_output_shapes
: *
dtype0
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_3_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype0
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_1Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: 
div_no_nan_2/ReadVariableOpReadVariableOpassignaddvariableop_4_resource^AssignAddVariableOp_4*
_output_shapes
: *
dtype0
div_no_nan_2/ReadVariableOp_1ReadVariableOpassignaddvariableop_5_resource^AssignAddVariableOp_5*
_output_shapes
: *
dtype0
div_no_nan_2DivNoNan#div_no_nan_2/ReadVariableOp:value:0%div_no_nan_2/ReadVariableOp_1:value:0*
T0*
_output_shapes
: ?
SqrtSqrtdiv_no_nan_2:z:0*
T0*
_output_shapes
: A

Identity_2IdentitySqrt:y:0*
T0*
_output_shapes
: 
div_no_nan_3/ReadVariableOpReadVariableOpassignaddvariableop_8_resource^AssignAddVariableOp_8*
_output_shapes
: *
dtype0
div_no_nan_3/ReadVariableOp_1ReadVariableOpassignaddvariableop_9_resource^AssignAddVariableOp_9*
_output_shapes
: *
dtype0
div_no_nan_3DivNoNan#div_no_nan_3/ReadVariableOp:value:0%div_no_nan_3/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_3Identitydiv_no_nan_3:z:0*
T0*
_output_shapes
: 
div_no_nan_4/ReadVariableOpReadVariableOpassignaddvariableop_10_resource^AssignAddVariableOp_10*
_output_shapes
: *
dtype0
div_no_nan_4/ReadVariableOp_1ReadVariableOpassignaddvariableop_11_resource^AssignAddVariableOp_11*
_output_shapes
: *
dtype0
div_no_nan_4DivNoNan#div_no_nan_4/ReadVariableOp:value:0%div_no_nan_4/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_4Identitydiv_no_nan_4:z:0*
T0*
_output_shapes
: 
div_no_nan_5/ReadVariableOpReadVariableOpassignaddvariableop_6_resource^AssignAddVariableOp_6*
_output_shapes
: *
dtype0
div_no_nan_5/ReadVariableOp_1ReadVariableOpassignaddvariableop_7_resource^AssignAddVariableOp_7*
_output_shapes
: *
dtype0
div_no_nan_5DivNoNan#div_no_nan_5/ReadVariableOp:value:0%div_no_nan_5/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_5Identitydiv_no_nan_5:z:0*
T0*
_output_shapes
: 
div_no_nan_6/ReadVariableOpReadVariableOpassignaddvariableop_6_resource^AssignAddVariableOp_6*
_output_shapes
: *
dtype0
div_no_nan_6/ReadVariableOp_1ReadVariableOpassignaddvariableop_7_resource^AssignAddVariableOp_7*
_output_shapes
: *
dtype0
div_no_nan_6DivNoNan#div_no_nan_6/ReadVariableOp:value:0%div_no_nan_6/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_6Identitydiv_no_nan_6:z:0*
T0*
_output_shapes
: 
div_no_nan_7/ReadVariableOpReadVariableOpassignaddvariableop_10_resource^AssignAddVariableOp_10*
_output_shapes
: *
dtype0
div_no_nan_7/ReadVariableOp_1ReadVariableOpassignaddvariableop_11_resource^AssignAddVariableOp_11*
_output_shapes
: *
dtype0
div_no_nan_7DivNoNan#div_no_nan_7/ReadVariableOp:value:0%div_no_nan_7/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_7Identitydiv_no_nan_7:z:0*
T0*
_output_shapes
: 
div_no_nan_8/ReadVariableOpReadVariableOpassignaddvariableop_8_resource^AssignAddVariableOp_8*
_output_shapes
: *
dtype0
div_no_nan_8/ReadVariableOp_1ReadVariableOpassignaddvariableop_9_resource^AssignAddVariableOp_9*
_output_shapes
: *
dtype0
div_no_nan_8DivNoNan#div_no_nan_8/ReadVariableOp:value:0%div_no_nan_8/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_8Identitydiv_no_nan_8:z:0*
T0*
_output_shapes
: S

Identity_9IdentityIdentity_1:output:0^NoOp*
T0*
_output_shapes
: T
Identity_10IdentityIdentity_2:output:0^NoOp*
T0*
_output_shapes
: T
Identity_11IdentityIdentity_8:output:0^NoOp*
T0*
_output_shapes
: T
Identity_12IdentityIdentity_6:output:0^NoOp*
T0*
_output_shapes
: T
Identity_13IdentityIdentity_7:output:0^NoOp*
T0*
_output_shapes
: -
NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam&^Adam/Adam/update_14/ResourceApplyAdam&^Adam/Adam/update_15/ResourceApplyAdam&^Adam/Adam/update_16/ResourceApplyAdam&^Adam/Adam/update_17/ResourceApplyAdam&^Adam/Adam/update_18/ResourceApplyAdam&^Adam/Adam/update_19/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_10^AssignAddVariableOp_11^AssignAddVariableOp_2^AssignAddVariableOp_3^AssignAddVariableOp_4^AssignAddVariableOp_5^AssignAddVariableOp_6^AssignAddVariableOp_7^AssignAddVariableOp_8^AssignAddVariableOp_9C^differential_model/batch_normalization_10/batchnorm/ReadVariableOpE^differential_model/batch_normalization_10/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_10/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpE^differential_model/batch_normalization_10/batchnorm_1/ReadVariableOpG^differential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_1G^differential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_2I^differential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOpC^differential_model/batch_normalization_11/batchnorm/ReadVariableOpE^differential_model/batch_normalization_11/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_11/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpE^differential_model/batch_normalization_11/batchnorm_1/ReadVariableOpG^differential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_1G^differential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_2I^differential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOpC^differential_model/batch_normalization_12/batchnorm/ReadVariableOpE^differential_model/batch_normalization_12/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_12/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpE^differential_model/batch_normalization_12/batchnorm_1/ReadVariableOpG^differential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_1G^differential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_2I^differential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOpC^differential_model/batch_normalization_13/batchnorm/ReadVariableOpE^differential_model/batch_normalization_13/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_13/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpE^differential_model/batch_normalization_13/batchnorm_1/ReadVariableOpG^differential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_1G^differential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_2I^differential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOpC^differential_model/batch_normalization_14/batchnorm/ReadVariableOpE^differential_model/batch_normalization_14/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_14/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_14/batchnorm/mul/ReadVariableOpE^differential_model/batch_normalization_14/batchnorm_1/ReadVariableOpG^differential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_1G^differential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_2I^differential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOp3^differential_model/dense_10/BiasAdd/ReadVariableOp5^differential_model/dense_10/BiasAdd_1/ReadVariableOp2^differential_model/dense_10/MatMul/ReadVariableOp4^differential_model/dense_10/MatMul_1/ReadVariableOp3^differential_model/dense_11/BiasAdd/ReadVariableOp5^differential_model/dense_11/BiasAdd_1/ReadVariableOp2^differential_model/dense_11/MatMul/ReadVariableOp4^differential_model/dense_11/MatMul_1/ReadVariableOp3^differential_model/dense_12/BiasAdd/ReadVariableOp5^differential_model/dense_12/BiasAdd_1/ReadVariableOp2^differential_model/dense_12/MatMul/ReadVariableOp4^differential_model/dense_12/MatMul_1/ReadVariableOp3^differential_model/dense_13/BiasAdd/ReadVariableOp5^differential_model/dense_13/BiasAdd_1/ReadVariableOp2^differential_model/dense_13/MatMul/ReadVariableOp4^differential_model/dense_13/MatMul_1/ReadVariableOp3^differential_model/dense_14/BiasAdd/ReadVariableOp5^differential_model/dense_14/BiasAdd_1/ReadVariableOp2^differential_model/dense_14/MatMul/ReadVariableOp4^differential_model/dense_14/MatMul_1/ReadVariableOp^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_1^div_no_nan_2/ReadVariableOp^div_no_nan_2/ReadVariableOp_1^div_no_nan_3/ReadVariableOp^div_no_nan_3/ReadVariableOp_1^div_no_nan_4/ReadVariableOp^div_no_nan_4/ReadVariableOp_1^div_no_nan_5/ReadVariableOp^div_no_nan_5/ReadVariableOp_1^div_no_nan_6/ReadVariableOp^div_no_nan_6/ReadVariableOp_1^div_no_nan_7/ReadVariableOp^div_no_nan_7/ReadVariableOp_1^div_no_nan_8/ReadVariableOp^div_no_nan_8/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*ô
_input_shapesâ
ß:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2N
%Adam/Adam/update_10/ResourceApplyAdam%Adam/Adam/update_10/ResourceApplyAdam2N
%Adam/Adam/update_11/ResourceApplyAdam%Adam/Adam/update_11/ResourceApplyAdam2N
%Adam/Adam/update_12/ResourceApplyAdam%Adam/Adam/update_12/ResourceApplyAdam2N
%Adam/Adam/update_13/ResourceApplyAdam%Adam/Adam/update_13/ResourceApplyAdam2N
%Adam/Adam/update_14/ResourceApplyAdam%Adam/Adam/update_14/ResourceApplyAdam2N
%Adam/Adam/update_15/ResourceApplyAdam%Adam/Adam/update_15/ResourceApplyAdam2N
%Adam/Adam/update_16/ResourceApplyAdam%Adam/Adam/update_16/ResourceApplyAdam2N
%Adam/Adam/update_17/ResourceApplyAdam%Adam/Adam/update_17/ResourceApplyAdam2N
%Adam/Adam/update_18/ResourceApplyAdam%Adam/Adam/update_18/ResourceApplyAdam2N
%Adam/Adam/update_19/ResourceApplyAdam%Adam/Adam/update_19/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam2L
$Adam/Adam/update_4/ResourceApplyAdam$Adam/Adam/update_4/ResourceApplyAdam2L
$Adam/Adam/update_5/ResourceApplyAdam$Adam/Adam/update_5/ResourceApplyAdam2L
$Adam/Adam/update_6/ResourceApplyAdam$Adam/Adam/update_6/ResourceApplyAdam2L
$Adam/Adam/update_7/ResourceApplyAdam$Adam/Adam/update_7/ResourceApplyAdam2L
$Adam/Adam/update_8/ResourceApplyAdam$Adam/Adam/update_8/ResourceApplyAdam2L
$Adam/Adam/update_9/ResourceApplyAdam$Adam/Adam/update_9/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_120
AssignAddVariableOp_10AssignAddVariableOp_1020
AssignAddVariableOp_11AssignAddVariableOp_112.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32.
AssignAddVariableOp_4AssignAddVariableOp_42.
AssignAddVariableOp_5AssignAddVariableOp_52.
AssignAddVariableOp_6AssignAddVariableOp_62.
AssignAddVariableOp_7AssignAddVariableOp_72.
AssignAddVariableOp_8AssignAddVariableOp_82.
AssignAddVariableOp_9AssignAddVariableOp_92
Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp2
Ddifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOpDdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp2
Fdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_1Fdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_12
Fdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_2Fdifferential_model/batch_normalization_10/batchnorm_1/ReadVariableOp_22
Hdifferential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOpHdifferential_model/batch_normalization_10/batchnorm_1/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp2
Ddifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOpDdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp2
Fdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_1Fdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_12
Fdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_2Fdifferential_model/batch_normalization_11/batchnorm_1/ReadVariableOp_22
Hdifferential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOpHdifferential_model/batch_normalization_11/batchnorm_1/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp2
Ddifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOpDdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp2
Fdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_1Fdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_12
Fdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_2Fdifferential_model/batch_normalization_12/batchnorm_1/ReadVariableOp_22
Hdifferential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOpHdifferential_model/batch_normalization_12/batchnorm_1/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp2
Ddifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOpDdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp2
Fdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_1Fdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_12
Fdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_2Fdifferential_model/batch_normalization_13/batchnorm_1/ReadVariableOp_22
Hdifferential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOpHdifferential_model/batch_normalization_13/batchnorm_1/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp2
Ddifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOpDdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp2
Fdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_1Fdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_12
Fdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_2Fdifferential_model/batch_normalization_14/batchnorm_1/ReadVariableOp_22
Hdifferential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOpHdifferential_model/batch_normalization_14/batchnorm_1/mul/ReadVariableOp2h
2differential_model/dense_10/BiasAdd/ReadVariableOp2differential_model/dense_10/BiasAdd/ReadVariableOp2l
4differential_model/dense_10/BiasAdd_1/ReadVariableOp4differential_model/dense_10/BiasAdd_1/ReadVariableOp2f
1differential_model/dense_10/MatMul/ReadVariableOp1differential_model/dense_10/MatMul/ReadVariableOp2j
3differential_model/dense_10/MatMul_1/ReadVariableOp3differential_model/dense_10/MatMul_1/ReadVariableOp2h
2differential_model/dense_11/BiasAdd/ReadVariableOp2differential_model/dense_11/BiasAdd/ReadVariableOp2l
4differential_model/dense_11/BiasAdd_1/ReadVariableOp4differential_model/dense_11/BiasAdd_1/ReadVariableOp2f
1differential_model/dense_11/MatMul/ReadVariableOp1differential_model/dense_11/MatMul/ReadVariableOp2j
3differential_model/dense_11/MatMul_1/ReadVariableOp3differential_model/dense_11/MatMul_1/ReadVariableOp2h
2differential_model/dense_12/BiasAdd/ReadVariableOp2differential_model/dense_12/BiasAdd/ReadVariableOp2l
4differential_model/dense_12/BiasAdd_1/ReadVariableOp4differential_model/dense_12/BiasAdd_1/ReadVariableOp2f
1differential_model/dense_12/MatMul/ReadVariableOp1differential_model/dense_12/MatMul/ReadVariableOp2j
3differential_model/dense_12/MatMul_1/ReadVariableOp3differential_model/dense_12/MatMul_1/ReadVariableOp2h
2differential_model/dense_13/BiasAdd/ReadVariableOp2differential_model/dense_13/BiasAdd/ReadVariableOp2l
4differential_model/dense_13/BiasAdd_1/ReadVariableOp4differential_model/dense_13/BiasAdd_1/ReadVariableOp2f
1differential_model/dense_13/MatMul/ReadVariableOp1differential_model/dense_13/MatMul/ReadVariableOp2j
3differential_model/dense_13/MatMul_1/ReadVariableOp3differential_model/dense_13/MatMul_1/ReadVariableOp2h
2differential_model/dense_14/BiasAdd/ReadVariableOp2differential_model/dense_14/BiasAdd/ReadVariableOp2l
4differential_model/dense_14/BiasAdd_1/ReadVariableOp4differential_model/dense_14/BiasAdd_1/ReadVariableOp2f
1differential_model/dense_14/MatMul/ReadVariableOp1differential_model/dense_14/MatMul/ReadVariableOp2j
3differential_model/dense_14/MatMul_1/ReadVariableOp3differential_model/dense_14/MatMul_1/ReadVariableOp26
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_12:
div_no_nan_2/ReadVariableOpdiv_no_nan_2/ReadVariableOp2>
div_no_nan_2/ReadVariableOp_1div_no_nan_2/ReadVariableOp_12:
div_no_nan_3/ReadVariableOpdiv_no_nan_3/ReadVariableOp2>
div_no_nan_3/ReadVariableOp_1div_no_nan_3/ReadVariableOp_12:
div_no_nan_4/ReadVariableOpdiv_no_nan_4/ReadVariableOp2>
div_no_nan_4/ReadVariableOp_1div_no_nan_4/ReadVariableOp_12:
div_no_nan_5/ReadVariableOpdiv_no_nan_5/ReadVariableOp2>
div_no_nan_5/ReadVariableOp_1div_no_nan_5/ReadVariableOp_12:
div_no_nan_6/ReadVariableOpdiv_no_nan_6/ReadVariableOp2>
div_no_nan_6/ReadVariableOp_1div_no_nan_6/ReadVariableOp_12:
div_no_nan_7/ReadVariableOpdiv_no_nan_7/ReadVariableOp2>
div_no_nan_7/ReadVariableOp_1div_no_nan_7/ReadVariableOp_12:
div_no_nan_8/ReadVariableOpdiv_no_nan_8/ReadVariableOp2>
div_no_nan_8/ReadVariableOp_1div_no_nan_8/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namedata/0:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
data/1/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
data/1/1:h&d
b
_classX
VTloc:@differential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp/resource:h'd
b
_classX
VTloc:@differential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp/resource:f(b
`
_classV
TRloc:@differential_model/batch_normalization_10/batchnorm/ReadVariableOp_2/resource:f)b
`
_classV
TRloc:@differential_model/batch_normalization_10/batchnorm/ReadVariableOp_2/resource:S*O
M
_classC
A?loc:@differential_model/dense_10/MatMul/ReadVariableOp/resource:S+O
M
_classC
A?loc:@differential_model/dense_10/MatMul/ReadVariableOp/resource:T,P
N
_classD
B@loc:@differential_model/dense_10/BiasAdd/ReadVariableOp/resource:T-P
N
_classD
B@loc:@differential_model/dense_10/BiasAdd/ReadVariableOp/resource:h.d
b
_classX
VTloc:@differential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp/resource:h/d
b
_classX
VTloc:@differential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp/resource:f0b
`
_classV
TRloc:@differential_model/batch_normalization_11/batchnorm/ReadVariableOp_2/resource:f1b
`
_classV
TRloc:@differential_model/batch_normalization_11/batchnorm/ReadVariableOp_2/resource:S2O
M
_classC
A?loc:@differential_model/dense_11/MatMul/ReadVariableOp/resource:S3O
M
_classC
A?loc:@differential_model/dense_11/MatMul/ReadVariableOp/resource:T4P
N
_classD
B@loc:@differential_model/dense_11/BiasAdd/ReadVariableOp/resource:T5P
N
_classD
B@loc:@differential_model/dense_11/BiasAdd/ReadVariableOp/resource:h6d
b
_classX
VTloc:@differential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp/resource:h7d
b
_classX
VTloc:@differential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp/resource:f8b
`
_classV
TRloc:@differential_model/batch_normalization_12/batchnorm/ReadVariableOp_2/resource:f9b
`
_classV
TRloc:@differential_model/batch_normalization_12/batchnorm/ReadVariableOp_2/resource:S:O
M
_classC
A?loc:@differential_model/dense_12/MatMul/ReadVariableOp/resource:S;O
M
_classC
A?loc:@differential_model/dense_12/MatMul/ReadVariableOp/resource:T<P
N
_classD
B@loc:@differential_model/dense_12/BiasAdd/ReadVariableOp/resource:T=P
N
_classD
B@loc:@differential_model/dense_12/BiasAdd/ReadVariableOp/resource:h>d
b
_classX
VTloc:@differential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp/resource:h?d
b
_classX
VTloc:@differential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp/resource:f@b
`
_classV
TRloc:@differential_model/batch_normalization_13/batchnorm/ReadVariableOp_2/resource:fAb
`
_classV
TRloc:@differential_model/batch_normalization_13/batchnorm/ReadVariableOp_2/resource:SBO
M
_classC
A?loc:@differential_model/dense_13/MatMul/ReadVariableOp/resource:SCO
M
_classC
A?loc:@differential_model/dense_13/MatMul/ReadVariableOp/resource:TDP
N
_classD
B@loc:@differential_model/dense_13/BiasAdd/ReadVariableOp/resource:TEP
N
_classD
B@loc:@differential_model/dense_13/BiasAdd/ReadVariableOp/resource:hFd
b
_classX
VTloc:@differential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp/resource:hGd
b
_classX
VTloc:@differential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp/resource:fHb
`
_classV
TRloc:@differential_model/batch_normalization_14/batchnorm/ReadVariableOp_2/resource:fIb
`
_classV
TRloc:@differential_model/batch_normalization_14/batchnorm/ReadVariableOp_2/resource:SJO
M
_classC
A?loc:@differential_model/dense_14/MatMul/ReadVariableOp/resource:SKO
M
_classC
A?loc:@differential_model/dense_14/MatMul/ReadVariableOp/resource:TLP
N
_classD
B@loc:@differential_model/dense_14/BiasAdd/ReadVariableOp/resource:TMP
N
_classD
B@loc:@differential_model/dense_14/BiasAdd/ReadVariableOp/resource
§

õ
D__inference_dense_10_layer_call_and_return_conditional_losses_166000

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ?
ß
N__inference_differential_model_layer_call_and_return_conditional_losses_163412

inputs+
batch_normalization_10_163341:+
batch_normalization_10_163343:+
batch_normalization_10_163345:+
batch_normalization_10_163347:!
dense_10_163350:$
dense_10_163352:$+
batch_normalization_11_163355:$+
batch_normalization_11_163357:$+
batch_normalization_11_163359:$+
batch_normalization_11_163361:$!
dense_11_163364:$$
dense_11_163366:$+
batch_normalization_12_163369:$+
batch_normalization_12_163371:$+
batch_normalization_12_163373:$+
batch_normalization_12_163375:$!
dense_12_163378:$$
dense_12_163380:$+
batch_normalization_13_163383:$+
batch_normalization_13_163385:$+
batch_normalization_13_163387:$+
batch_normalization_13_163389:$!
dense_13_163392:$$
dense_13_163394:$+
batch_normalization_14_163397:$+
batch_normalization_14_163399:$+
batch_normalization_14_163401:$+
batch_normalization_14_163403:$!
dense_14_163406:$
dense_14_163408:
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢.batch_normalization_12/StatefulPartitionedCall¢.batch_normalization_13/StatefulPartitionedCall¢.batch_normalization_14/StatefulPartitionedCall¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallè
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_10_163341batch_normalization_10_163343batch_normalization_10_163345batch_normalization_10_163347*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_162682¡
 dense_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_10_163350dense_10_163352*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_163048
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_11_163355batch_normalization_11_163357batch_normalization_11_163359batch_normalization_11_163361*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_162764¡
 dense_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_11_163364dense_11_163366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_163074
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0batch_normalization_12_163369batch_normalization_12_163371batch_normalization_12_163373batch_normalization_12_163375*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_162846¡
 dense_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0dense_12_163378dense_12_163380*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_163100
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_13_163383batch_normalization_13_163385batch_normalization_13_163387batch_normalization_13_163389*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_162928¡
 dense_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_13_163392dense_13_163394*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_163126
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0batch_normalization_14_163397batch_normalization_14_163399batch_normalization_14_163401batch_normalization_14_163403*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_163010¡
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0dense_14_163406dense_14_163408*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_163151x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
ñ
$__inference_signature_wrapper_165900
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:$
	unknown_4:$
	unknown_5:$
	unknown_6:$
	unknown_7:$
	unknown_8:$
	unknown_9:$$

unknown_10:$

unknown_11:$

unknown_12:$

unknown_13:$

unknown_14:$

unknown_15:$$

unknown_16:$

unknown_17:$

unknown_18:$

unknown_19:$

unknown_20:$

unknown_21:$$

unknown_22:$

unknown_23:$

unknown_24:$

unknown_25:$

unknown_26:$

unknown_27:$

unknown_28:
identity¢StatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_162611o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
§

õ
D__inference_dense_12_layer_call_and_return_conditional_losses_166200

inputs0
matmul_readvariableop_resource:$$-
biasadd_readvariableop_resource:$
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Â

)__inference_dense_10_layer_call_fn_165989

inputs
unknown:$
	unknown_0:$
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_163048o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
ÿ
3__inference_differential_model_layer_call_fn_163822

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:$
	unknown_4:$
	unknown_5:$
	unknown_6:$
	unknown_7:$
	unknown_8:$
	unknown_9:$$

unknown_10:$

unknown_11:$

unknown_12:$

unknown_13:$

unknown_14:$

unknown_15:$$

unknown_16:$

unknown_17:$

unknown_18:$

unknown_19:$

unknown_20:$

unknown_21:$$

unknown_22:$

unknown_23:$

unknown_24:$

unknown_25:$

unknown_26:$

unknown_27:$

unknown_28:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_differential_model_layer_call_and_return_conditional_losses_163412o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ¤
Ø&
__inference__traced_save_166804
file_prefix;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop;
7savev2_batch_normalization_12_gamma_read_readvariableop:
6savev2_batch_normalization_12_beta_read_readvariableopA
=savev2_batch_normalization_12_moving_mean_read_readvariableopE
Asavev2_batch_normalization_12_moving_variance_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop;
7savev2_batch_normalization_13_gamma_read_readvariableop:
6savev2_batch_normalization_13_beta_read_readvariableopA
=savev2_batch_normalization_13_moving_mean_read_readvariableopE
Asavev2_batch_normalization_13_moving_variance_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop;
7savev2_batch_normalization_14_gamma_read_readvariableop:
6savev2_batch_normalization_14_beta_read_readvariableopA
=savev2_batch_normalization_14_moving_mean_read_readvariableopE
Asavev2_batch_normalization_14_moving_variance_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_m_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_12_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_12_beta_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_13_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_13_beta_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_14_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_14_beta_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_v_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_12_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_12_beta_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_13_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_13_beta_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_14_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_14_beta_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
: Ø.
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*.
value÷-Bô-WB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB2loss_tracker_grad/total/.ATTRIBUTES/VARIABLE_VALUEB2loss_tracker_grad/count/.ATTRIBUTES/VARIABLE_VALUEB2loss_tracker_pred/total/.ATTRIBUTES/VARIABLE_VALUEB2loss_tracker_pred/count/.ATTRIBUTES/VARIABLE_VALUEB-loss_tracker/total/.ATTRIBUTES/VARIABLE_VALUEB-loss_tracker/count/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*Ã
value¹B¶WB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B %
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop7savev2_batch_normalization_12_gamma_read_readvariableop6savev2_batch_normalization_12_beta_read_readvariableop=savev2_batch_normalization_12_moving_mean_read_readvariableopAsavev2_batch_normalization_12_moving_variance_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop7savev2_batch_normalization_13_gamma_read_readvariableop6savev2_batch_normalization_13_beta_read_readvariableop=savev2_batch_normalization_13_moving_mean_read_readvariableopAsavev2_batch_normalization_13_moving_variance_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop7savev2_batch_normalization_14_gamma_read_readvariableop6savev2_batch_normalization_14_beta_read_readvariableop=savev2_batch_normalization_14_moving_mean_read_readvariableopAsavev2_batch_normalization_14_moving_variance_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop>savev2_adam_batch_normalization_10_gamma_m_read_readvariableop=savev2_adam_batch_normalization_10_beta_m_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop>savev2_adam_batch_normalization_11_gamma_m_read_readvariableop=savev2_adam_batch_normalization_11_beta_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop>savev2_adam_batch_normalization_12_gamma_m_read_readvariableop=savev2_adam_batch_normalization_12_beta_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop>savev2_adam_batch_normalization_13_gamma_m_read_readvariableop=savev2_adam_batch_normalization_13_beta_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop>savev2_adam_batch_normalization_14_gamma_m_read_readvariableop=savev2_adam_batch_normalization_14_beta_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop>savev2_adam_batch_normalization_10_gamma_v_read_readvariableop=savev2_adam_batch_normalization_10_beta_v_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop>savev2_adam_batch_normalization_11_gamma_v_read_readvariableop=savev2_adam_batch_normalization_11_beta_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop>savev2_adam_batch_normalization_12_gamma_v_read_readvariableop=savev2_adam_batch_normalization_12_beta_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop>savev2_adam_batch_normalization_13_gamma_v_read_readvariableop=savev2_adam_batch_normalization_13_beta_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop>savev2_adam_batch_normalization_14_gamma_v_read_readvariableop=savev2_adam_batch_normalization_14_beta_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *e
dtypes[
Y2W	
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

identity_1Identity_1:output:0*
_input_shapes
: :::::$:$:$:$:$:$:$$:$:$:$:$:$:$$:$:$:$:$:$:$$:$:$:$:$:$:$:: : : : : : : : : : : : : : : : :::$:$:$:$:$$:$:$:$:$$:$:$:$:$$:$:$:$:$::::$:$:$:$:$$:$:$:$:$$:$:$:$:$$:$:$:$:$:: 2(
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

:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 	

_output_shapes
:$: 


_output_shapes
:$:$ 

_output_shapes

:$$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$:$ 

_output_shapes

:$$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$:$ 

_output_shapes

:$$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$: 

_output_shapes
:$:$ 

_output_shapes

:$: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: : /

_output_shapes
:: 0

_output_shapes
::$1 

_output_shapes

:$: 2

_output_shapes
:$: 3

_output_shapes
:$: 4

_output_shapes
:$:$5 

_output_shapes

:$$: 6

_output_shapes
:$: 7

_output_shapes
:$: 8

_output_shapes
:$:$9 

_output_shapes

:$$: :

_output_shapes
:$: ;

_output_shapes
:$: <

_output_shapes
:$:$= 

_output_shapes

:$$: >

_output_shapes
:$: ?

_output_shapes
:$: @

_output_shapes
:$:$A 

_output_shapes

:$: B

_output_shapes
:: C

_output_shapes
:: D

_output_shapes
::$E 

_output_shapes

:$: F

_output_shapes
:$: G

_output_shapes
:$: H

_output_shapes
:$:$I 

_output_shapes

:$$: J

_output_shapes
:$: K

_output_shapes
:$: L

_output_shapes
:$:$M 

_output_shapes

:$$: N

_output_shapes
:$: O

_output_shapes
:$: P

_output_shapes
:$:$Q 

_output_shapes

:$$: R

_output_shapes
:$: S

_output_shapes
:$: T

_output_shapes
:$:$U 

_output_shapes

:$: V

_output_shapes
::W

_output_shapes
: 
§

õ
D__inference_dense_11_layer_call_and_return_conditional_losses_163074

inputs0
matmul_readvariableop_resource:$$-
biasadd_readvariableop_resource:$
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_162799

inputs/
!batchnorm_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$1
#batchnorm_readvariableop_1_resource:$1
#batchnorm_readvariableop_2_resource:$
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:$z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_162764

inputs5
'assignmovingavg_readvariableop_resource:$7
)assignmovingavg_1_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$/
!batchnorm_readvariableop_resource:$
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:$
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:$x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:$~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$´
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:$v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Â

)__inference_dense_12_layer_call_fn_166189

inputs
unknown:$$
	unknown_0:$
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_163100o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_166080

inputs5
'assignmovingavg_readvariableop_resource:$7
)assignmovingavg_1_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$/
!batchnorm_readvariableop_resource:$
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:$
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:$x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:$~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$´
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:$v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
§

õ
D__inference_dense_10_layer_call_and_return_conditional_losses_163048

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:$
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó?
à
N__inference_differential_model_layer_call_and_return_conditional_losses_163614
input_3+
batch_normalization_10_163543:+
batch_normalization_10_163545:+
batch_normalization_10_163547:+
batch_normalization_10_163549:!
dense_10_163552:$
dense_10_163554:$+
batch_normalization_11_163557:$+
batch_normalization_11_163559:$+
batch_normalization_11_163561:$+
batch_normalization_11_163563:$!
dense_11_163566:$$
dense_11_163568:$+
batch_normalization_12_163571:$+
batch_normalization_12_163573:$+
batch_normalization_12_163575:$+
batch_normalization_12_163577:$!
dense_12_163580:$$
dense_12_163582:$+
batch_normalization_13_163585:$+
batch_normalization_13_163587:$+
batch_normalization_13_163589:$+
batch_normalization_13_163591:$!
dense_13_163594:$$
dense_13_163596:$+
batch_normalization_14_163599:$+
batch_normalization_14_163601:$+
batch_normalization_14_163603:$+
batch_normalization_14_163605:$!
dense_14_163608:$
dense_14_163610:
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢.batch_normalization_12/StatefulPartitionedCall¢.batch_normalization_13/StatefulPartitionedCall¢.batch_normalization_14/StatefulPartitionedCall¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallë
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCallinput_3batch_normalization_10_163543batch_normalization_10_163545batch_normalization_10_163547batch_normalization_10_163549*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_162635¡
 dense_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_10_163552dense_10_163554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_163048
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_11_163557batch_normalization_11_163559batch_normalization_11_163561batch_normalization_11_163563*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_162717¡
 dense_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_11_163566dense_11_163568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_163074
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0batch_normalization_12_163571batch_normalization_12_163573batch_normalization_12_163575batch_normalization_12_163577*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_162799¡
 dense_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0dense_12_163580dense_12_163582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_163100
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_13_163585batch_normalization_13_163587batch_normalization_13_163589batch_normalization_13_163591*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_162881¡
 dense_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_13_163594dense_13_163596*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_163126
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0batch_normalization_14_163599batch_normalization_14_163601batch_normalization_14_163603batch_normalization_14_163605*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_162963¡
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0dense_14_163608dense_14_163610*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_163151x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
%
ë
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_166180

inputs5
'assignmovingavg_readvariableop_resource:$7
)assignmovingavg_1_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$/
!batchnorm_readvariableop_resource:$
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:$
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:$x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:$~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$´
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:$v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_162881

inputs/
!batchnorm_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$1
#batchnorm_readvariableop_1_resource:$1
#batchnorm_readvariableop_2_resource:$
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:$z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
ª
Ò
7__inference_batch_normalization_13_layer_call_fn_166213

inputs
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:$
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_162881o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_166346

inputs/
!batchnorm_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$1
#batchnorm_readvariableop_1_resource:$1
#batchnorm_readvariableop_2_resource:$
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:$z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_12_layer_call_fn_166126

inputs
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:$
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_162846o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
êÜ
$
!__inference__wrapped_model_162611
input_3Y
Kdifferential_model_batch_normalization_10_batchnorm_readvariableop_resource:]
Odifferential_model_batch_normalization_10_batchnorm_mul_readvariableop_resource:[
Mdifferential_model_batch_normalization_10_batchnorm_readvariableop_1_resource:[
Mdifferential_model_batch_normalization_10_batchnorm_readvariableop_2_resource:L
:differential_model_dense_10_matmul_readvariableop_resource:$I
;differential_model_dense_10_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_11_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_11_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_11_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_11_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_11_matmul_readvariableop_resource:$$I
;differential_model_dense_11_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_12_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_12_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_12_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_12_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_12_matmul_readvariableop_resource:$$I
;differential_model_dense_12_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_13_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_13_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_13_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_13_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_13_matmul_readvariableop_resource:$$I
;differential_model_dense_13_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_14_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_14_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_14_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_14_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_14_matmul_readvariableop_resource:$I
;differential_model_dense_14_biasadd_readvariableop_resource:
identity¢Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp¢2differential_model/dense_10/BiasAdd/ReadVariableOp¢1differential_model/dense_10/MatMul/ReadVariableOp¢2differential_model/dense_11/BiasAdd/ReadVariableOp¢1differential_model/dense_11/MatMul/ReadVariableOp¢2differential_model/dense_12/BiasAdd/ReadVariableOp¢1differential_model/dense_12/MatMul/ReadVariableOp¢2differential_model/dense_13/BiasAdd/ReadVariableOp¢1differential_model/dense_13/MatMul/ReadVariableOp¢2differential_model/dense_14/BiasAdd/ReadVariableOp¢1differential_model/dense_14/MatMul/ReadVariableOpÊ
Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0~
9differential_model/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_10/batchnorm/addAddV2Jdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:¤
9differential_model/batch_normalization_10/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:Ò
Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ò
7differential_model/batch_normalization_10/batchnorm/mulMul=differential_model/batch_normalization_10/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:¸
9differential_model/batch_normalization_10/batchnorm/mul_1Mulinput_3;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0ð
9differential_model/batch_normalization_10/batchnorm/mul_2MulLdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:Î
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0ð
7differential_model/batch_normalization_10/batchnorm/subSubLdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ð
9differential_model/batch_normalization_10/batchnorm/add_1AddV2=differential_model/batch_normalization_10/batchnorm/mul_1:z:0;differential_model/batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
1differential_model/dense_10/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_10_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0Ø
"differential_model/dense_10/MatMulMatMul=differential_model/batch_normalization_10/batchnorm/add_1:z:09differential_model/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_10/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_10_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_10/BiasAddBiasAdd,differential_model/dense_10/MatMul:product:0:differential_model/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_10/SoftplusSoftplus,differential_model/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_11/batchnorm/addAddV2Jdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_11/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_11/batchnorm/mulMul=differential_model/batch_normalization_11/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_11/batchnorm/mul_1Mul2differential_model/dense_10/Softplus:activations:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_11/batchnorm/mul_2MulLdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_11/batchnorm/subSubLdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_11/batchnorm/add_1AddV2=differential_model/batch_normalization_11/batchnorm/mul_1:z:0;differential_model/batch_normalization_11/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_11/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_11_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_11/MatMulMatMul=differential_model/batch_normalization_11/batchnorm/add_1:z:09differential_model/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_11/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_11_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_11/BiasAddBiasAdd,differential_model/dense_11/MatMul:product:0:differential_model/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_11/SoftplusSoftplus,differential_model/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_12/batchnorm/addAddV2Jdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_12/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_12/batchnorm/mulMul=differential_model/batch_normalization_12/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_12/batchnorm/mul_1Mul2differential_model/dense_11/Softplus:activations:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_12/batchnorm/mul_2MulLdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_12/batchnorm/subSubLdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_12/batchnorm/add_1AddV2=differential_model/batch_normalization_12/batchnorm/mul_1:z:0;differential_model/batch_normalization_12/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_12/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_12_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_12/MatMulMatMul=differential_model/batch_normalization_12/batchnorm/add_1:z:09differential_model/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_12/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_12_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_12/BiasAddBiasAdd,differential_model/dense_12/MatMul:product:0:differential_model/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_12/SoftplusSoftplus,differential_model/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_13/batchnorm/addAddV2Jdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_13/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_13/batchnorm/mulMul=differential_model/batch_normalization_13/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_13/batchnorm/mul_1Mul2differential_model/dense_12/Softplus:activations:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_13/batchnorm/mul_2MulLdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_13/batchnorm/subSubLdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_13/batchnorm/add_1AddV2=differential_model/batch_normalization_13/batchnorm/mul_1:z:0;differential_model/batch_normalization_13/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_13/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_13_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_13/MatMulMatMul=differential_model/batch_normalization_13/batchnorm/add_1:z:09differential_model/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_13/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_13_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_13/BiasAddBiasAdd,differential_model/dense_13/MatMul:product:0:differential_model/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_13/SoftplusSoftplus,differential_model/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_14/batchnorm/addAddV2Jdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_14/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_14/batchnorm/mulMul=differential_model/batch_normalization_14/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_14/batchnorm/mul_1Mul2differential_model/dense_13/Softplus:activations:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_14/batchnorm/mul_2MulLdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_14/batchnorm/subSubLdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_14/batchnorm/add_1AddV2=differential_model/batch_normalization_14/batchnorm/mul_1:z:0;differential_model/batch_normalization_14/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_14/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_14_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0Ø
"differential_model/dense_14/MatMulMatMul=differential_model/batch_normalization_14/batchnorm/add_1:z:09differential_model/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2differential_model/dense_14/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ê
#differential_model/dense_14/BiasAddBiasAdd,differential_model/dense_14/MatMul:product:0:differential_model/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
IdentityIdentity,differential_model/dense_14/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿß
NoOpNoOpC^differential_model/batch_normalization_10/batchnorm/ReadVariableOpE^differential_model/batch_normalization_10/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_10/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpC^differential_model/batch_normalization_11/batchnorm/ReadVariableOpE^differential_model/batch_normalization_11/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_11/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpC^differential_model/batch_normalization_12/batchnorm/ReadVariableOpE^differential_model/batch_normalization_12/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_12/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpC^differential_model/batch_normalization_13/batchnorm/ReadVariableOpE^differential_model/batch_normalization_13/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_13/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpC^differential_model/batch_normalization_14/batchnorm/ReadVariableOpE^differential_model/batch_normalization_14/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_14/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp3^differential_model/dense_10/BiasAdd/ReadVariableOp2^differential_model/dense_10/MatMul/ReadVariableOp3^differential_model/dense_11/BiasAdd/ReadVariableOp2^differential_model/dense_11/MatMul/ReadVariableOp3^differential_model/dense_12/BiasAdd/ReadVariableOp2^differential_model/dense_12/MatMul/ReadVariableOp3^differential_model/dense_13/BiasAdd/ReadVariableOp2^differential_model/dense_13/MatMul/ReadVariableOp3^differential_model/dense_14/BiasAdd/ReadVariableOp2^differential_model/dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2
Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp2h
2differential_model/dense_10/BiasAdd/ReadVariableOp2differential_model/dense_10/BiasAdd/ReadVariableOp2f
1differential_model/dense_10/MatMul/ReadVariableOp1differential_model/dense_10/MatMul/ReadVariableOp2h
2differential_model/dense_11/BiasAdd/ReadVariableOp2differential_model/dense_11/BiasAdd/ReadVariableOp2f
1differential_model/dense_11/MatMul/ReadVariableOp1differential_model/dense_11/MatMul/ReadVariableOp2h
2differential_model/dense_12/BiasAdd/ReadVariableOp2differential_model/dense_12/BiasAdd/ReadVariableOp2f
1differential_model/dense_12/MatMul/ReadVariableOp1differential_model/dense_12/MatMul/ReadVariableOp2h
2differential_model/dense_13/BiasAdd/ReadVariableOp2differential_model/dense_13/BiasAdd/ReadVariableOp2f
1differential_model/dense_13/MatMul/ReadVariableOp1differential_model/dense_13/MatMul/ReadVariableOp2h
2differential_model/dense_14/BiasAdd/ReadVariableOp2differential_model/dense_14/BiasAdd/ReadVariableOp2f
1differential_model/dense_14/MatMul/ReadVariableOp1differential_model/dense_14/MatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
§

õ
D__inference_dense_12_layer_call_and_return_conditional_losses_163100

inputs0
matmul_readvariableop_resource:$$-
biasadd_readvariableop_resource:$
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
ð?
ß
N__inference_differential_model_layer_call_and_return_conditional_losses_163158

inputs+
batch_normalization_10_163028:+
batch_normalization_10_163030:+
batch_normalization_10_163032:+
batch_normalization_10_163034:!
dense_10_163049:$
dense_10_163051:$+
batch_normalization_11_163054:$+
batch_normalization_11_163056:$+
batch_normalization_11_163058:$+
batch_normalization_11_163060:$!
dense_11_163075:$$
dense_11_163077:$+
batch_normalization_12_163080:$+
batch_normalization_12_163082:$+
batch_normalization_12_163084:$+
batch_normalization_12_163086:$!
dense_12_163101:$$
dense_12_163103:$+
batch_normalization_13_163106:$+
batch_normalization_13_163108:$+
batch_normalization_13_163110:$+
batch_normalization_13_163112:$!
dense_13_163127:$$
dense_13_163129:$+
batch_normalization_14_163132:$+
batch_normalization_14_163134:$+
batch_normalization_14_163136:$+
batch_normalization_14_163138:$!
dense_14_163152:$
dense_14_163154:
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢.batch_normalization_12/StatefulPartitionedCall¢.batch_normalization_13/StatefulPartitionedCall¢.batch_normalization_14/StatefulPartitionedCall¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallê
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_10_163028batch_normalization_10_163030batch_normalization_10_163032batch_normalization_10_163034*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_162635¡
 dense_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_10_163049dense_10_163051*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_163048
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_11_163054batch_normalization_11_163056batch_normalization_11_163058batch_normalization_11_163060*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_162717¡
 dense_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_11_163075dense_11_163077*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_163074
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0batch_normalization_12_163080batch_normalization_12_163082batch_normalization_12_163084batch_normalization_12_163086*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_162799¡
 dense_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0dense_12_163101dense_12_163103*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_163100
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_13_163106batch_normalization_13_163108batch_normalization_13_163110batch_normalization_13_163112*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_162881¡
 dense_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_13_163127dense_13_163129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_163126
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0batch_normalization_14_163132batch_normalization_14_163134batch_normalization_14_163136batch_normalization_14_163138*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_162963¡
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0dense_14_163152dense_14_163154*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_163151x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
Ò
7__inference_batch_normalization_14_layer_call_fn_166313

inputs
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:$
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_162963o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
°ª
Û
N__inference_differential_model_layer_call_and_return_conditional_losses_164128

inputsL
>batch_normalization_10_assignmovingavg_readvariableop_resource:N
@batch_normalization_10_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_10_batchnorm_mul_readvariableop_resource:F
8batch_normalization_10_batchnorm_readvariableop_resource:9
'dense_10_matmul_readvariableop_resource:$6
(dense_10_biasadd_readvariableop_resource:$L
>batch_normalization_11_assignmovingavg_readvariableop_resource:$N
@batch_normalization_11_assignmovingavg_1_readvariableop_resource:$J
<batch_normalization_11_batchnorm_mul_readvariableop_resource:$F
8batch_normalization_11_batchnorm_readvariableop_resource:$9
'dense_11_matmul_readvariableop_resource:$$6
(dense_11_biasadd_readvariableop_resource:$L
>batch_normalization_12_assignmovingavg_readvariableop_resource:$N
@batch_normalization_12_assignmovingavg_1_readvariableop_resource:$J
<batch_normalization_12_batchnorm_mul_readvariableop_resource:$F
8batch_normalization_12_batchnorm_readvariableop_resource:$9
'dense_12_matmul_readvariableop_resource:$$6
(dense_12_biasadd_readvariableop_resource:$L
>batch_normalization_13_assignmovingavg_readvariableop_resource:$N
@batch_normalization_13_assignmovingavg_1_readvariableop_resource:$J
<batch_normalization_13_batchnorm_mul_readvariableop_resource:$F
8batch_normalization_13_batchnorm_readvariableop_resource:$9
'dense_13_matmul_readvariableop_resource:$$6
(dense_13_biasadd_readvariableop_resource:$L
>batch_normalization_14_assignmovingavg_readvariableop_resource:$N
@batch_normalization_14_assignmovingavg_1_readvariableop_resource:$J
<batch_normalization_14_batchnorm_mul_readvariableop_resource:$F
8batch_normalization_14_batchnorm_readvariableop_resource:$9
'dense_14_matmul_readvariableop_resource:$6
(dense_14_biasadd_readvariableop_resource:
identity¢&batch_normalization_10/AssignMovingAvg¢5batch_normalization_10/AssignMovingAvg/ReadVariableOp¢(batch_normalization_10/AssignMovingAvg_1¢7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_10/batchnorm/ReadVariableOp¢3batch_normalization_10/batchnorm/mul/ReadVariableOp¢&batch_normalization_11/AssignMovingAvg¢5batch_normalization_11/AssignMovingAvg/ReadVariableOp¢(batch_normalization_11/AssignMovingAvg_1¢7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_11/batchnorm/ReadVariableOp¢3batch_normalization_11/batchnorm/mul/ReadVariableOp¢&batch_normalization_12/AssignMovingAvg¢5batch_normalization_12/AssignMovingAvg/ReadVariableOp¢(batch_normalization_12/AssignMovingAvg_1¢7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_12/batchnorm/ReadVariableOp¢3batch_normalization_12/batchnorm/mul/ReadVariableOp¢&batch_normalization_13/AssignMovingAvg¢5batch_normalization_13/AssignMovingAvg/ReadVariableOp¢(batch_normalization_13/AssignMovingAvg_1¢7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_13/batchnorm/ReadVariableOp¢3batch_normalization_13/batchnorm/mul/ReadVariableOp¢&batch_normalization_14/AssignMovingAvg¢5batch_normalization_14/AssignMovingAvg/ReadVariableOp¢(batch_normalization_14/AssignMovingAvg_1¢7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_14/batchnorm/ReadVariableOp¢3batch_normalization_14/batchnorm/mul/ReadVariableOp¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp
5batch_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ­
#batch_normalization_10/moments/meanMeaninputs>batch_normalization_10/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
+batch_normalization_10/moments/StopGradientStopGradient,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes

:µ
0batch_normalization_10/moments/SquaredDifferenceSquaredDifferenceinputs4batch_normalization_10/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9batch_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_10/moments/varianceMean4batch_normalization_10/moments/SquaredDifference:z:0Bbatch_normalization_10/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
&batch_normalization_10/moments/SqueezeSqueeze,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ¡
(batch_normalization_10/moments/Squeeze_1Squeeze0batch_normalization_10/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_10/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_10_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Æ
*batch_normalization_10/AssignMovingAvg/subSub=batch_normalization_10/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_10/moments/Squeeze:output:0*
T0*
_output_shapes
:½
*batch_normalization_10/AssignMovingAvg/mulMul.batch_normalization_10/AssignMovingAvg/sub:z:05batch_normalization_10/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_10/AssignMovingAvgAssignSubVariableOp>batch_normalization_10_assignmovingavg_readvariableop_resource.batch_normalization_10/AssignMovingAvg/mul:z:06^batch_normalization_10/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_10/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_10_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ì
,batch_normalization_10/AssignMovingAvg_1/subSub?batch_normalization_10/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_10/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ã
,batch_normalization_10/AssignMovingAvg_1/mulMul0batch_normalization_10/AssignMovingAvg_1/sub:z:07batch_normalization_10/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_10/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_10_assignmovingavg_1_readvariableop_resource0batch_normalization_10/AssignMovingAvg_1/mul:z:08^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_10/batchnorm/addAddV21batch_normalization_10/moments/Squeeze_1:output:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¹
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
&batch_normalization_10/batchnorm/mul_1Mulinputs(batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
&batch_normalization_10/batchnorm/mul_2Mul/batch_normalization_10/moments/Squeeze:output:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:¤
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0µ
$batch_normalization_10/batchnorm/subSub7batch_normalization_10/batchnorm/ReadVariableOp:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0
dense_10/MatMulMatMul*batch_normalization_10/batchnorm/add_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$j
dense_10/SoftplusSoftplusdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
5batch_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Æ
#batch_normalization_11/moments/meanMeandense_10/Softplus:activations:0>batch_normalization_11/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(
+batch_normalization_11/moments/StopGradientStopGradient,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes

:$Î
0batch_normalization_11/moments/SquaredDifferenceSquaredDifferencedense_10/Softplus:activations:04batch_normalization_11/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
9batch_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_11/moments/varianceMean4batch_normalization_11/moments/SquaredDifference:z:0Bbatch_normalization_11/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(
&batch_normalization_11/moments/SqueezeSqueeze,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 ¡
(batch_normalization_11/moments/Squeeze_1Squeeze0batch_normalization_11/moments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 q
,batch_normalization_11/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_11/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_11_assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0Æ
*batch_normalization_11/AssignMovingAvg/subSub=batch_normalization_11/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_11/moments/Squeeze:output:0*
T0*
_output_shapes
:$½
*batch_normalization_11/AssignMovingAvg/mulMul.batch_normalization_11/AssignMovingAvg/sub:z:05batch_normalization_11/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$
&batch_normalization_11/AssignMovingAvgAssignSubVariableOp>batch_normalization_11_assignmovingavg_readvariableop_resource.batch_normalization_11/AssignMovingAvg/mul:z:06^batch_normalization_11/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_11/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_11_assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0Ì
,batch_normalization_11/AssignMovingAvg_1/subSub?batch_normalization_11/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_11/moments/Squeeze_1:output:0*
T0*
_output_shapes
:$Ã
,batch_normalization_11/AssignMovingAvg_1/mulMul0batch_normalization_11/AssignMovingAvg_1/sub:z:07batch_normalization_11/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$
(batch_normalization_11/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_11_assignmovingavg_1_readvariableop_resource0batch_normalization_11/AssignMovingAvg_1/mul:z:08^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_11/batchnorm/addAddV21batch_normalization_11/moments/Squeeze_1:output:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes
:$~
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes
:$¬
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0¹
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ª
&batch_normalization_11/batchnorm/mul_1Muldense_10/Softplus:activations:0(batch_normalization_11/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$­
&batch_normalization_11/batchnorm/mul_2Mul/batch_normalization_11/moments/Squeeze:output:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:$¤
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0µ
$batch_normalization_11/batchnorm/subSub7batch_normalization_11/batchnorm/ReadVariableOp:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$·
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0
dense_11/MatMulMatMul*batch_normalization_11/batchnorm/add_1:z:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$j
dense_11/SoftplusSoftplusdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
5batch_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Æ
#batch_normalization_12/moments/meanMeandense_11/Softplus:activations:0>batch_normalization_12/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(
+batch_normalization_12/moments/StopGradientStopGradient,batch_normalization_12/moments/mean:output:0*
T0*
_output_shapes

:$Î
0batch_normalization_12/moments/SquaredDifferenceSquaredDifferencedense_11/Softplus:activations:04batch_normalization_12/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
9batch_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_12/moments/varianceMean4batch_normalization_12/moments/SquaredDifference:z:0Bbatch_normalization_12/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(
&batch_normalization_12/moments/SqueezeSqueeze,batch_normalization_12/moments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 ¡
(batch_normalization_12/moments/Squeeze_1Squeeze0batch_normalization_12/moments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 q
,batch_normalization_12/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_12/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_12_assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0Æ
*batch_normalization_12/AssignMovingAvg/subSub=batch_normalization_12/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_12/moments/Squeeze:output:0*
T0*
_output_shapes
:$½
*batch_normalization_12/AssignMovingAvg/mulMul.batch_normalization_12/AssignMovingAvg/sub:z:05batch_normalization_12/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$
&batch_normalization_12/AssignMovingAvgAssignSubVariableOp>batch_normalization_12_assignmovingavg_readvariableop_resource.batch_normalization_12/AssignMovingAvg/mul:z:06^batch_normalization_12/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_12/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_12_assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0Ì
,batch_normalization_12/AssignMovingAvg_1/subSub?batch_normalization_12/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_12/moments/Squeeze_1:output:0*
T0*
_output_shapes
:$Ã
,batch_normalization_12/AssignMovingAvg_1/mulMul0batch_normalization_12/AssignMovingAvg_1/sub:z:07batch_normalization_12/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$
(batch_normalization_12/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_12_assignmovingavg_1_readvariableop_resource0batch_normalization_12/AssignMovingAvg_1/mul:z:08^batch_normalization_12/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_12/batchnorm/addAddV21batch_normalization_12/moments/Squeeze_1:output:0/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:$~
&batch_normalization_12/batchnorm/RsqrtRsqrt(batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:$¬
3batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0¹
$batch_normalization_12/batchnorm/mulMul*batch_normalization_12/batchnorm/Rsqrt:y:0;batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ª
&batch_normalization_12/batchnorm/mul_1Muldense_11/Softplus:activations:0(batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$­
&batch_normalization_12/batchnorm/mul_2Mul/batch_normalization_12/moments/Squeeze:output:0(batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:$¤
/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0µ
$batch_normalization_12/batchnorm/subSub7batch_normalization_12/batchnorm/ReadVariableOp:value:0*batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$·
&batch_normalization_12/batchnorm/add_1AddV2*batch_normalization_12/batchnorm/mul_1:z:0(batch_normalization_12/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0
dense_12/MatMulMatMul*batch_normalization_12/batchnorm/add_1:z:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$j
dense_12/SoftplusSoftplusdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
5batch_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Æ
#batch_normalization_13/moments/meanMeandense_12/Softplus:activations:0>batch_normalization_13/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(
+batch_normalization_13/moments/StopGradientStopGradient,batch_normalization_13/moments/mean:output:0*
T0*
_output_shapes

:$Î
0batch_normalization_13/moments/SquaredDifferenceSquaredDifferencedense_12/Softplus:activations:04batch_normalization_13/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
9batch_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_13/moments/varianceMean4batch_normalization_13/moments/SquaredDifference:z:0Bbatch_normalization_13/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(
&batch_normalization_13/moments/SqueezeSqueeze,batch_normalization_13/moments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 ¡
(batch_normalization_13/moments/Squeeze_1Squeeze0batch_normalization_13/moments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 q
,batch_normalization_13/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_13/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_13_assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0Æ
*batch_normalization_13/AssignMovingAvg/subSub=batch_normalization_13/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_13/moments/Squeeze:output:0*
T0*
_output_shapes
:$½
*batch_normalization_13/AssignMovingAvg/mulMul.batch_normalization_13/AssignMovingAvg/sub:z:05batch_normalization_13/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$
&batch_normalization_13/AssignMovingAvgAssignSubVariableOp>batch_normalization_13_assignmovingavg_readvariableop_resource.batch_normalization_13/AssignMovingAvg/mul:z:06^batch_normalization_13/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_13/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_13_assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0Ì
,batch_normalization_13/AssignMovingAvg_1/subSub?batch_normalization_13/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_13/moments/Squeeze_1:output:0*
T0*
_output_shapes
:$Ã
,batch_normalization_13/AssignMovingAvg_1/mulMul0batch_normalization_13/AssignMovingAvg_1/sub:z:07batch_normalization_13/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$
(batch_normalization_13/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_13_assignmovingavg_1_readvariableop_resource0batch_normalization_13/AssignMovingAvg_1/mul:z:08^batch_normalization_13/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_13/batchnorm/addAddV21batch_normalization_13/moments/Squeeze_1:output:0/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:$~
&batch_normalization_13/batchnorm/RsqrtRsqrt(batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:$¬
3batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0¹
$batch_normalization_13/batchnorm/mulMul*batch_normalization_13/batchnorm/Rsqrt:y:0;batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ª
&batch_normalization_13/batchnorm/mul_1Muldense_12/Softplus:activations:0(batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$­
&batch_normalization_13/batchnorm/mul_2Mul/batch_normalization_13/moments/Squeeze:output:0(batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:$¤
/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0µ
$batch_normalization_13/batchnorm/subSub7batch_normalization_13/batchnorm/ReadVariableOp:value:0*batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$·
&batch_normalization_13/batchnorm/add_1AddV2*batch_normalization_13/batchnorm/mul_1:z:0(batch_normalization_13/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0
dense_13/MatMulMatMul*batch_normalization_13/batchnorm/add_1:z:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$j
dense_13/SoftplusSoftplusdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
5batch_normalization_14/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Æ
#batch_normalization_14/moments/meanMeandense_13/Softplus:activations:0>batch_normalization_14/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(
+batch_normalization_14/moments/StopGradientStopGradient,batch_normalization_14/moments/mean:output:0*
T0*
_output_shapes

:$Î
0batch_normalization_14/moments/SquaredDifferenceSquaredDifferencedense_13/Softplus:activations:04batch_normalization_14/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
9batch_normalization_14/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_14/moments/varianceMean4batch_normalization_14/moments/SquaredDifference:z:0Bbatch_normalization_14/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(
&batch_normalization_14/moments/SqueezeSqueeze,batch_normalization_14/moments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 ¡
(batch_normalization_14/moments/Squeeze_1Squeeze0batch_normalization_14/moments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 q
,batch_normalization_14/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_14/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_14_assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0Æ
*batch_normalization_14/AssignMovingAvg/subSub=batch_normalization_14/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_14/moments/Squeeze:output:0*
T0*
_output_shapes
:$½
*batch_normalization_14/AssignMovingAvg/mulMul.batch_normalization_14/AssignMovingAvg/sub:z:05batch_normalization_14/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$
&batch_normalization_14/AssignMovingAvgAssignSubVariableOp>batch_normalization_14_assignmovingavg_readvariableop_resource.batch_normalization_14/AssignMovingAvg/mul:z:06^batch_normalization_14/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_14/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_14_assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0Ì
,batch_normalization_14/AssignMovingAvg_1/subSub?batch_normalization_14/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_14/moments/Squeeze_1:output:0*
T0*
_output_shapes
:$Ã
,batch_normalization_14/AssignMovingAvg_1/mulMul0batch_normalization_14/AssignMovingAvg_1/sub:z:07batch_normalization_14/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$
(batch_normalization_14/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_14_assignmovingavg_1_readvariableop_resource0batch_normalization_14/AssignMovingAvg_1/mul:z:08^batch_normalization_14/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_14/batchnorm/addAddV21batch_normalization_14/moments/Squeeze_1:output:0/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:$~
&batch_normalization_14/batchnorm/RsqrtRsqrt(batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:$¬
3batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0¹
$batch_normalization_14/batchnorm/mulMul*batch_normalization_14/batchnorm/Rsqrt:y:0;batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ª
&batch_normalization_14/batchnorm/mul_1Muldense_13/Softplus:activations:0(batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$­
&batch_normalization_14/batchnorm/mul_2Mul/batch_normalization_14/moments/Squeeze:output:0(batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:$¤
/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0µ
$batch_normalization_14/batchnorm/subSub7batch_normalization_14/batchnorm/ReadVariableOp:value:0*batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$·
&batch_normalization_14/batchnorm/add_1AddV2*batch_normalization_14/batchnorm/mul_1:z:0(batch_normalization_14/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0
dense_14/MatMulMatMul*batch_normalization_14/batchnorm/add_1:z:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_14/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
NoOpNoOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp'^batch_normalization_11/AssignMovingAvg6^batch_normalization_11/AssignMovingAvg/ReadVariableOp)^batch_normalization_11/AssignMovingAvg_18^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp4^batch_normalization_11/batchnorm/mul/ReadVariableOp'^batch_normalization_12/AssignMovingAvg6^batch_normalization_12/AssignMovingAvg/ReadVariableOp)^batch_normalization_12/AssignMovingAvg_18^batch_normalization_12/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_12/batchnorm/ReadVariableOp4^batch_normalization_12/batchnorm/mul/ReadVariableOp'^batch_normalization_13/AssignMovingAvg6^batch_normalization_13/AssignMovingAvg/ReadVariableOp)^batch_normalization_13/AssignMovingAvg_18^batch_normalization_13/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_13/batchnorm/ReadVariableOp4^batch_normalization_13/batchnorm/mul/ReadVariableOp'^batch_normalization_14/AssignMovingAvg6^batch_normalization_14/AssignMovingAvg/ReadVariableOp)^batch_normalization_14/AssignMovingAvg_18^batch_normalization_14/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_14/batchnorm/ReadVariableOp4^batch_normalization_14/batchnorm/mul/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_10/AssignMovingAvg&batch_normalization_10/AssignMovingAvg2n
5batch_normalization_10/AssignMovingAvg/ReadVariableOp5batch_normalization_10/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_10/AssignMovingAvg_1(batch_normalization_10/AssignMovingAvg_12r
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2P
&batch_normalization_11/AssignMovingAvg&batch_normalization_11/AssignMovingAvg2n
5batch_normalization_11/AssignMovingAvg/ReadVariableOp5batch_normalization_11/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_11/AssignMovingAvg_1(batch_normalization_11/AssignMovingAvg_12r
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2P
&batch_normalization_12/AssignMovingAvg&batch_normalization_12/AssignMovingAvg2n
5batch_normalization_12/AssignMovingAvg/ReadVariableOp5batch_normalization_12/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_12/AssignMovingAvg_1(batch_normalization_12/AssignMovingAvg_12r
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2P
&batch_normalization_13/AssignMovingAvg&batch_normalization_13/AssignMovingAvg2n
5batch_normalization_13/AssignMovingAvg/ReadVariableOp5batch_normalization_13/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_13/AssignMovingAvg_1(batch_normalization_13/AssignMovingAvg_12r
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2P
&batch_normalization_14/AssignMovingAvg&batch_normalization_14/AssignMovingAvg2n
5batch_normalization_14/AssignMovingAvg/ReadVariableOp5batch_normalization_14/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_14/AssignMovingAvg_1(batch_normalization_14/AssignMovingAvg_12r
7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp7batch_normalization_14/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_14/batchnorm/ReadVariableOp/batch_normalization_14/batchnorm/ReadVariableOp2j
3batch_normalization_14/batchnorm/mul/ReadVariableOp3batch_normalization_14/batchnorm/mul/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_11_layer_call_fn_166026

inputs
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:$
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_162764o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
ãK
·	
#__inference_internal_grad_fn_166699
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
result_grads_20
result_grads_21
result_grads_22
result_grads_23
result_grads_24
result_grads_25
result_grads_26
result_grads_27
result_grads_28
result_grads_29
result_grads_30
result_grads_31
result_grads_32
result_grads_33
result_grads_34
result_grads_35
result_grads_36
result_grads_37
result_grads_38
result_grads_39
identity_20
identity_21
identity_22
identity_23
identity_24
identity_25
identity_26
identity_27
identity_28
identity_29
identity_30
identity_31
identity_32
identity_33
identity_34
identity_35
identity_36
identity_37
identity_38
identity_39I
IdentityIdentityresult_grads_0*
T0*
_output_shapes
:K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
:O

Identity_2Identityresult_grads_2*
T0*
_output_shapes

:$K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
:$K

Identity_4Identityresult_grads_4*
T0*
_output_shapes
:$K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
:$O

Identity_6Identityresult_grads_6*
T0*
_output_shapes

:$$K

Identity_7Identityresult_grads_7*
T0*
_output_shapes
:$K

Identity_8Identityresult_grads_8*
T0*
_output_shapes
:$K

Identity_9Identityresult_grads_9*
T0*
_output_shapes
:$Q
Identity_10Identityresult_grads_10*
T0*
_output_shapes

:$$M
Identity_11Identityresult_grads_11*
T0*
_output_shapes
:$M
Identity_12Identityresult_grads_12*
T0*
_output_shapes
:$M
Identity_13Identityresult_grads_13*
T0*
_output_shapes
:$Q
Identity_14Identityresult_grads_14*
T0*
_output_shapes

:$$M
Identity_15Identityresult_grads_15*
T0*
_output_shapes
:$M
Identity_16Identityresult_grads_16*
T0*
_output_shapes
:$M
Identity_17Identityresult_grads_17*
T0*
_output_shapes
:$Q
Identity_18Identityresult_grads_18*
T0*
_output_shapes

:$M
Identity_19Identityresult_grads_19*
T0*
_output_shapes
:¼
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_14result_grads_15result_grads_16result_grads_17result_grads_18result_grads_19*1
T,
*2(*,
_gradient_op_typeCustomGradient-166618*®
_output_shapes
:::$:$:$:$:$$:$:$:$:$$:$:$:$:$$:$:$:$:$::::$:$:$:$:$$:$:$:$:$$:$:$:$:$$:$:$:$:$:P
Identity_20IdentityIdentityN:output:0*
T0*
_output_shapes
:P
Identity_21IdentityIdentityN:output:1*
T0*
_output_shapes
:T
Identity_22IdentityIdentityN:output:2*
T0*
_output_shapes

:$P
Identity_23IdentityIdentityN:output:3*
T0*
_output_shapes
:$P
Identity_24IdentityIdentityN:output:4*
T0*
_output_shapes
:$P
Identity_25IdentityIdentityN:output:5*
T0*
_output_shapes
:$T
Identity_26IdentityIdentityN:output:6*
T0*
_output_shapes

:$$P
Identity_27IdentityIdentityN:output:7*
T0*
_output_shapes
:$P
Identity_28IdentityIdentityN:output:8*
T0*
_output_shapes
:$P
Identity_29IdentityIdentityN:output:9*
T0*
_output_shapes
:$U
Identity_30IdentityIdentityN:output:10*
T0*
_output_shapes

:$$Q
Identity_31IdentityIdentityN:output:11*
T0*
_output_shapes
:$Q
Identity_32IdentityIdentityN:output:12*
T0*
_output_shapes
:$Q
Identity_33IdentityIdentityN:output:13*
T0*
_output_shapes
:$U
Identity_34IdentityIdentityN:output:14*
T0*
_output_shapes

:$$Q
Identity_35IdentityIdentityN:output:15*
T0*
_output_shapes
:$Q
Identity_36IdentityIdentityN:output:16*
T0*
_output_shapes
:$Q
Identity_37IdentityIdentityN:output:17*
T0*
_output_shapes
:$U
Identity_38IdentityIdentityN:output:18*
T0*
_output_shapes

:$Q
Identity_39IdentityIdentityN:output:19*
T0*
_output_shapes
:"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"#
identity_22Identity_22:output:0"#
identity_23Identity_23:output:0"#
identity_24Identity_24:output:0"#
identity_25Identity_25:output:0"#
identity_26Identity_26:output:0"#
identity_27Identity_27:output:0"#
identity_28Identity_28:output:0"#
identity_29Identity_29:output:0"#
identity_30Identity_30:output:0"#
identity_31Identity_31:output:0"#
identity_32Identity_32:output:0"#
identity_33Identity_33:output:0"#
identity_34Identity_34:output:0"#
identity_35Identity_35:output:0"#
identity_36Identity_36:output:0"#
identity_37Identity_37:output:0"#
identity_38Identity_38:output:0"#
identity_39Identity_39:output:0*­
_input_shapes
:::$:$:$:$:$$:$:$:$:$$:$:$:$:$$:$:$:$:$::::$:$:$:$:$$:$:$:$:$$:$:$:$:$$:$:$:$:$::J F

_output_shapes
:
(
_user_specified_nameresult_grads_0:JF

_output_shapes
:
(
_user_specified_nameresult_grads_1:NJ

_output_shapes

:$
(
_user_specified_nameresult_grads_2:JF

_output_shapes
:$
(
_user_specified_nameresult_grads_3:JF

_output_shapes
:$
(
_user_specified_nameresult_grads_4:JF

_output_shapes
:$
(
_user_specified_nameresult_grads_5:NJ

_output_shapes

:$$
(
_user_specified_nameresult_grads_6:JF

_output_shapes
:$
(
_user_specified_nameresult_grads_7:JF

_output_shapes
:$
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
:$
(
_user_specified_nameresult_grads_9:O
K

_output_shapes

:$$
)
_user_specified_nameresult_grads_10:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_11:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_12:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_13:OK

_output_shapes

:$$
)
_user_specified_nameresult_grads_14:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_15:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_16:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_17:OK

_output_shapes

:$
)
_user_specified_nameresult_grads_18:KG

_output_shapes
:
)
_user_specified_nameresult_grads_19:KG

_output_shapes
:
)
_user_specified_nameresult_grads_20:KG

_output_shapes
:
)
_user_specified_nameresult_grads_21:OK

_output_shapes

:$
)
_user_specified_nameresult_grads_22:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_23:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_24:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_25:OK

_output_shapes

:$$
)
_user_specified_nameresult_grads_26:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_27:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_28:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_29:OK

_output_shapes

:$$
)
_user_specified_nameresult_grads_30:KG

_output_shapes
:$
)
_user_specified_nameresult_grads_31:K G

_output_shapes
:$
)
_user_specified_nameresult_grads_32:K!G

_output_shapes
:$
)
_user_specified_nameresult_grads_33:O"K

_output_shapes

:$$
)
_user_specified_nameresult_grads_34:K#G

_output_shapes
:$
)
_user_specified_nameresult_grads_35:K$G

_output_shapes
:$
)
_user_specified_nameresult_grads_36:K%G

_output_shapes
:$
)
_user_specified_nameresult_grads_37:O&K

_output_shapes

:$
)
_user_specified_nameresult_grads_38:K'G

_output_shapes
:
)
_user_specified_nameresult_grads_39
%
ë
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_166280

inputs5
'assignmovingavg_readvariableop_resource:$7
)assignmovingavg_1_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$/
!batchnorm_readvariableop_resource:$
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:$
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:$x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:$~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$´
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:$v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
§

õ
D__inference_dense_11_layer_call_and_return_conditional_losses_166100

inputs0
matmul_readvariableop_resource:$$-
biasadd_readvariableop_resource:$
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
ª
Ò
7__inference_batch_normalization_10_layer_call_fn_165913

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_162635o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç	
õ
D__inference_dense_14_layer_call_and_return_conditional_losses_166399

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_166046

inputs/
!batchnorm_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$1
#batchnorm_readvariableop_1_resource:$1
#batchnorm_readvariableop_2_resource:$
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:$z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
î
¹/
__inference_test_step_164536

data_0
data_1_0
data_1_1Y
Kdifferential_model_batch_normalization_10_batchnorm_readvariableop_resource:]
Odifferential_model_batch_normalization_10_batchnorm_mul_readvariableop_resource:[
Mdifferential_model_batch_normalization_10_batchnorm_readvariableop_1_resource:[
Mdifferential_model_batch_normalization_10_batchnorm_readvariableop_2_resource:L
:differential_model_dense_10_matmul_readvariableop_resource:$I
;differential_model_dense_10_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_11_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_11_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_11_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_11_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_11_matmul_readvariableop_resource:$$I
;differential_model_dense_11_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_12_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_12_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_12_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_12_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_12_matmul_readvariableop_resource:$$I
;differential_model_dense_12_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_13_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_13_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_13_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_13_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_13_matmul_readvariableop_resource:$$I
;differential_model_dense_13_biasadd_readvariableop_resource:$Y
Kdifferential_model_batch_normalization_14_batchnorm_readvariableop_resource:$]
Odifferential_model_batch_normalization_14_batchnorm_mul_readvariableop_resource:$[
Mdifferential_model_batch_normalization_14_batchnorm_readvariableop_1_resource:$[
Mdifferential_model_batch_normalization_14_batchnorm_readvariableop_2_resource:$L
:differential_model_dense_14_matmul_readvariableop_resource:$I
;differential_model_dense_14_biasadd_readvariableop_resource:&
assignaddvariableop_resource: (
assignaddvariableop_1_resource: (
assignaddvariableop_2_resource: (
assignaddvariableop_3_resource: (
assignaddvariableop_4_resource: (
assignaddvariableop_5_resource: (
assignaddvariableop_6_resource: (
assignaddvariableop_7_resource: (
assignaddvariableop_8_resource: (
assignaddvariableop_9_resource: )
assignaddvariableop_10_resource: )
assignaddvariableop_11_resource: 

identity_9
identity_10
identity_11
identity_12
identity_13¢AssignAddVariableOp¢AssignAddVariableOp_1¢AssignAddVariableOp_10¢AssignAddVariableOp_11¢AssignAddVariableOp_2¢AssignAddVariableOp_3¢AssignAddVariableOp_4¢AssignAddVariableOp_5¢AssignAddVariableOp_6¢AssignAddVariableOp_7¢AssignAddVariableOp_8¢AssignAddVariableOp_9¢Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp¢Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp¢Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1¢Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2¢Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp¢2differential_model/dense_10/BiasAdd/ReadVariableOp¢1differential_model/dense_10/MatMul/ReadVariableOp¢2differential_model/dense_11/BiasAdd/ReadVariableOp¢1differential_model/dense_11/MatMul/ReadVariableOp¢2differential_model/dense_12/BiasAdd/ReadVariableOp¢1differential_model/dense_12/MatMul/ReadVariableOp¢2differential_model/dense_13/BiasAdd/ReadVariableOp¢1differential_model/dense_13/MatMul/ReadVariableOp¢2differential_model/dense_14/BiasAdd/ReadVariableOp¢1differential_model/dense_14/MatMul/ReadVariableOp¢div_no_nan/ReadVariableOp¢div_no_nan/ReadVariableOp_1¢div_no_nan_1/ReadVariableOp¢div_no_nan_1/ReadVariableOp_1¢div_no_nan_2/ReadVariableOp¢div_no_nan_2/ReadVariableOp_1¢div_no_nan_3/ReadVariableOp¢div_no_nan_3/ReadVariableOp_1¢div_no_nan_4/ReadVariableOp¢div_no_nan_4/ReadVariableOp_1¢div_no_nan_5/ReadVariableOp¢div_no_nan_5/ReadVariableOp_1¢div_no_nan_6/ReadVariableOp¢div_no_nan_6/ReadVariableOp_1¢div_no_nan_7/ReadVariableOp¢div_no_nan_7/ReadVariableOp_1¢div_no_nan_8/ReadVariableOp¢div_no_nan_8/ReadVariableOp_1Ê
Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0~
9differential_model/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_10/batchnorm/addAddV2Jdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:¤
9differential_model/batch_normalization_10/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:Ò
Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ò
7differential_model/batch_normalization_10/batchnorm/mulMul=differential_model/batch_normalization_10/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:·
9differential_model/batch_normalization_10/batchnorm/mul_1Muldata_0;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0ð
9differential_model/batch_normalization_10/batchnorm/mul_2MulLdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:Î
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0ð
7differential_model/batch_normalization_10/batchnorm/subSubLdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:ð
9differential_model/batch_normalization_10/batchnorm/add_1AddV2=differential_model/batch_normalization_10/batchnorm/mul_1:z:0;differential_model/batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
1differential_model/dense_10/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_10_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0Ø
"differential_model/dense_10/MatMulMatMul=differential_model/batch_normalization_10/batchnorm/add_1:z:09differential_model/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_10/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_10_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_10/BiasAddBiasAdd,differential_model/dense_10/MatMul:product:0:differential_model/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_10/SoftplusSoftplus,differential_model/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_11/batchnorm/addAddV2Jdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_11/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_11/batchnorm/mulMul=differential_model/batch_normalization_11/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_11/batchnorm/mul_1Mul2differential_model/dense_10/Softplus:activations:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_11/batchnorm/mul_2MulLdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_11/batchnorm/subSubLdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_11/batchnorm/add_1AddV2=differential_model/batch_normalization_11/batchnorm/mul_1:z:0;differential_model/batch_normalization_11/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_11/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_11_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_11/MatMulMatMul=differential_model/batch_normalization_11/batchnorm/add_1:z:09differential_model/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_11/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_11_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_11/BiasAddBiasAdd,differential_model/dense_11/MatMul:product:0:differential_model/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_11/SoftplusSoftplus,differential_model/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_12/batchnorm/addAddV2Jdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_12/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_12/batchnorm/mulMul=differential_model/batch_normalization_12/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_12/batchnorm/mul_1Mul2differential_model/dense_11/Softplus:activations:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_12/batchnorm/mul_2MulLdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_12/batchnorm/subSubLdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_12/batchnorm/add_1AddV2=differential_model/batch_normalization_12/batchnorm/mul_1:z:0;differential_model/batch_normalization_12/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_12/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_12_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_12/MatMulMatMul=differential_model/batch_normalization_12/batchnorm/add_1:z:09differential_model/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_12/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_12_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_12/BiasAddBiasAdd,differential_model/dense_12/MatMul:product:0:differential_model/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_12/SoftplusSoftplus,differential_model/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_13/batchnorm/addAddV2Jdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_13/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_13/batchnorm/mulMul=differential_model/batch_normalization_13/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_13/batchnorm/mul_1Mul2differential_model/dense_12/Softplus:activations:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_13/batchnorm/mul_2MulLdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_13/batchnorm/subSubLdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_13/batchnorm/add_1AddV2=differential_model/batch_normalization_13/batchnorm/mul_1:z:0;differential_model/batch_normalization_13/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_13/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_13_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0Ø
"differential_model/dense_13/MatMulMatMul=differential_model/batch_normalization_13/batchnorm/add_1:z:09differential_model/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
2differential_model/dense_13/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_13_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0Ê
#differential_model/dense_13/BiasAddBiasAdd,differential_model/dense_13/MatMul:product:0:differential_model/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
$differential_model/dense_13/SoftplusSoftplus,differential_model/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Ê
Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOpKdifferential_model_batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0~
9differential_model/batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:õ
7differential_model/batch_normalization_14/batchnorm/addAddV2Jdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp:value:0Bdifferential_model/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:$¤
9differential_model/batch_normalization_14/batchnorm/RsqrtRsqrt;differential_model/batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:$Ò
Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOpOdifferential_model_batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0ò
7differential_model/batch_normalization_14/batchnorm/mulMul=differential_model/batch_normalization_14/batchnorm/Rsqrt:y:0Ndifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ã
9differential_model/batch_normalization_14/batchnorm/mul_1Mul2differential_model/dense_13/Softplus:activations:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$Î
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOpMdifferential_model_batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0ð
9differential_model/batch_normalization_14/batchnorm/mul_2MulLdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1:value:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:$Î
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOpMdifferential_model_batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0ð
7differential_model/batch_normalization_14/batchnorm/subSubLdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2:value:0=differential_model/batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$ð
9differential_model/batch_normalization_14/batchnorm/add_1AddV2=differential_model/batch_normalization_14/batchnorm/mul_1:z:0;differential_model/batch_normalization_14/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¬
1differential_model/dense_14/MatMul/ReadVariableOpReadVariableOp:differential_model_dense_14_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0Ø
"differential_model/dense_14/MatMulMatMul=differential_model/batch_normalization_14/batchnorm/add_1:z:09differential_model/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2differential_model/dense_14/BiasAdd/ReadVariableOpReadVariableOp;differential_model_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ê
#differential_model/dense_14/BiasAddBiasAdd,differential_model/dense_14/MatMul:product:0:differential_model/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
ones_like/ShapeShape,differential_model/dense_14/BiasAdd:output:0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=gradient_tape/differential_model/dense_14/BiasAdd/BiasAddGradBiasAddGradones_like:output:0*
T0*
_output_shapes
:Õ
7gradient_tape/differential_model/dense_14/MatMul/MatMulMatMulones_like:output:09differential_model/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(Ò
9gradient_tape/differential_model/dense_14/MatMul/MatMul_1MatMul=differential_model/batch_normalization_14/batchnorm/add_1:z:0ones_like:output:0*
T0*
_output_shapes

:$*
transpose_a(º
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_14/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_14/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_14/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_14/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:$¯
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/ShapeShape2differential_model/dense_13/Softplus:activations:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Mul_1Mul2differential_model/dense_13/Softplus:activations:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_14/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_14/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$
1gradient_tape/differential_model/dense_13/SigmoidSigmoid,differential_model/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$÷
-gradient_tape/differential_model/dense_13/mulMulXgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Reshape:output:05gradient_tape/differential_model/dense_13/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_14/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:$
Mgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_14/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$¤
=gradient_tape/differential_model/dense_13/BiasAdd/BiasAddGradBiasAddGrad1gradient_tape/differential_model/dense_13/mul:z:0*
T0*
_output_shapes
:$é
AddNAddNZgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_14/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_14/batchnorm/mul/MulMul
AddN:sum:0Ndifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Â
Kgradient_tape/differential_model/batch_normalization_14/batchnorm/mul/Mul_1Mul
AddN:sum:0=differential_model/batch_normalization_14/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:$ô
7gradient_tape/differential_model/dense_13/MatMul/MatMulMatMul1gradient_tape/differential_model/dense_13/mul:z:09differential_model/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(ñ
9gradient_tape/differential_model/dense_13/MatMul/MatMul_1MatMul=differential_model/batch_normalization_13/batchnorm/add_1:z:01gradient_tape/differential_model/dense_13/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(º
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_13/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_13/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_13/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_13/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:$¯
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/ShapeShape2differential_model/dense_12/Softplus:activations:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Mul_1Mul2differential_model/dense_12/Softplus:activations:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_13/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_13/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$
1gradient_tape/differential_model/dense_12/SigmoidSigmoid,differential_model/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$÷
-gradient_tape/differential_model/dense_12/mulMulXgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Reshape:output:05gradient_tape/differential_model/dense_12/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_13/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:$
Mgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_13/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$¤
=gradient_tape/differential_model/dense_12/BiasAdd/BiasAddGradBiasAddGrad1gradient_tape/differential_model/dense_12/mul:z:0*
T0*
_output_shapes
:$ë
AddN_1AddNZgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_13/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Ó
Igradient_tape/differential_model/batch_normalization_13/batchnorm/mul/MulMulAddN_1:sum:0Ndifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Ä
Kgradient_tape/differential_model/batch_normalization_13/batchnorm/mul/Mul_1MulAddN_1:sum:0=differential_model/batch_normalization_13/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:$ô
7gradient_tape/differential_model/dense_12/MatMul/MatMulMatMul1gradient_tape/differential_model/dense_12/mul:z:09differential_model/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(ñ
9gradient_tape/differential_model/dense_12/MatMul/MatMul_1MatMul=differential_model/batch_normalization_12/batchnorm/add_1:z:01gradient_tape/differential_model/dense_12/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(º
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_12/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_12/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_12/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_12/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:$¯
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/ShapeShape2differential_model/dense_11/Softplus:activations:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Mul_1Mul2differential_model/dense_11/Softplus:activations:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_12/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_12/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$
1gradient_tape/differential_model/dense_11/SigmoidSigmoid,differential_model/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$÷
-gradient_tape/differential_model/dense_11/mulMulXgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Reshape:output:05gradient_tape/differential_model/dense_11/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_12/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:$
Mgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_12/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$¤
=gradient_tape/differential_model/dense_11/BiasAdd/BiasAddGradBiasAddGrad1gradient_tape/differential_model/dense_11/mul:z:0*
T0*
_output_shapes
:$ë
AddN_2AddNZgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_12/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Ó
Igradient_tape/differential_model/batch_normalization_12/batchnorm/mul/MulMulAddN_2:sum:0Ndifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Ä
Kgradient_tape/differential_model/batch_normalization_12/batchnorm/mul/Mul_1MulAddN_2:sum:0=differential_model/batch_normalization_12/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:$ô
7gradient_tape/differential_model/dense_11/MatMul/MatMulMatMul1gradient_tape/differential_model/dense_11/mul:z:09differential_model/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*
transpose_b(ñ
9gradient_tape/differential_model/dense_11/MatMul/MatMul_1MatMul=differential_model/batch_normalization_11/batchnorm/add_1:z:01gradient_tape/differential_model/dense_11/mul:z:0*
T0*
_output_shapes

:$$*
transpose_a(º
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_11/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_11/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_11/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_11/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:$¯
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/ShapeShape2differential_model/dense_10/Softplus:activations:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ª
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Mul_1Mul2differential_model/dense_10/Softplus:activations:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$®
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:$Ñ
Igradient_tape/differential_model/batch_normalization_11/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_11/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:$
1gradient_tape/differential_model/dense_10/SigmoidSigmoid,differential_model/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$÷
-gradient_tape/differential_model/dense_10/mulMulXgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Reshape:output:05gradient_tape/differential_model/dense_10/Sigmoid:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_11/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:$
Mgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_11/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:$¤
=gradient_tape/differential_model/dense_10/BiasAdd/BiasAddGradBiasAddGrad1gradient_tape/differential_model/dense_10/mul:z:0*
T0*
_output_shapes
:$ë
AddN_3AddNZgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_11/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:$Ó
Igradient_tape/differential_model/batch_normalization_11/batchnorm/mul/MulMulAddN_3:sum:0Ndifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$Ä
Kgradient_tape/differential_model/batch_normalization_11/batchnorm/mul/Mul_1MulAddN_3:sum:0=differential_model/batch_normalization_11/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:$ô
7gradient_tape/differential_model/dense_10/MatMul/MatMulMatMul1gradient_tape/differential_model/dense_10/mul:z:09differential_model/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
transpose_b(ñ
9gradient_tape/differential_model/dense_10/MatMul/MatMul_1MatMul=differential_model/batch_normalization_10/batchnorm/add_1:z:01gradient_tape/differential_model/dense_10/mul:z:0*
T0*
_output_shapes

:$*
transpose_a(º
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/ShapeShape=differential_model/batch_normalization_10/batchnorm/mul_1:z:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape_1Shape;differential_model/batch_normalization_10/batchnorm/sub:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/SumSumAgradient_tape/differential_model/dense_10/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Sum_1SumAgradient_tape/differential_model/dense_10/MatMul/MatMul:product:0bgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Shape_1:output:0*
T0*
_output_shapes
:
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/ShapeShapedata_0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape_1Shape;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:Ü
]gradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/BroadcastGradientArgsBroadcastGradientArgsVgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape_1:output:0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/MulMulXgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Reshape:output:0;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/SumSumOgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Mul:z:0bgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
:º
Ogradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/ReshapeReshapeTgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Sum:output:0Vgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Mul_1Muldata_0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Sum_1SumQgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Mul_1:z:0bgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
:³
Qgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Reshape_1ReshapeVgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Sum_1:output:0Xgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Shape_1:output:0*
T0*
_output_shapes
:Ñ
Igradient_tape/differential_model/batch_normalization_10/batchnorm/sub/NegNegZgradient_tape/differential_model/batch_normalization_10/batchnorm/add_1/Reshape_1:output:0*
T0*
_output_shapes
:
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_2/MulMulMgradient_tape/differential_model/batch_normalization_10/batchnorm/sub/Neg:y:0;differential_model/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:
Mgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_2/Mul_1MulMgradient_tape/differential_model/batch_normalization_10/batchnorm/sub/Neg:y:0Ldifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1:value:0*
T0*
_output_shapes
:ë
AddN_4AddNZgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Reshape_1:output:0Qgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_2/Mul_1:z:0*
N*
T0*
_output_shapes
:Ó
Igradient_tape/differential_model/batch_normalization_10/batchnorm/mul/MulMulAddN_4:sum:0Ndifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ä
Kgradient_tape/differential_model/batch_normalization_10/batchnorm/mul/Mul_1MulAddN_4:sum:0=differential_model/batch_normalization_10/batchnorm/Rsqrt:y:0*
T0*
_output_shapes
:j
mean_squared_error/CastCastdata_1_1*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿâ
$mean_squared_error/SquaredDifferenceSquaredDifferenceXgradient_tape/differential_model/batch_normalization_10/batchnorm/mul_1/Reshape:output:0mean_squared_error/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
)mean_squared_error/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ«
mean_squared_error/MeanMean(mean_squared_error/SquaredDifference:z:02mean_squared_error/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
&mean_squared_error/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¬
$mean_squared_error/weighted_loss/MulMul mean_squared_error/Mean:output:0/mean_squared_error/weighted_loss/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
(mean_squared_error/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ©
$mean_squared_error/weighted_loss/SumSum(mean_squared_error/weighted_loss/Mul:z:01mean_squared_error/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: 
-mean_squared_error/weighted_loss/num_elementsSize(mean_squared_error/weighted_loss/Mul:z:0*
T0*
_output_shapes
: ¢
2mean_squared_error/weighted_loss/num_elements/CastCast6mean_squared_error/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: g
%mean_squared_error/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,mean_squared_error/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ç
&mean_squared_error/weighted_loss/rangeRange5mean_squared_error/weighted_loss/range/start:output:0.mean_squared_error/weighted_loss/Rank:output:05mean_squared_error/weighted_loss/range/delta:output:0*
_output_shapes
: ®
&mean_squared_error/weighted_loss/Sum_1Sum-mean_squared_error/weighted_loss/Sum:output:0/mean_squared_error/weighted_loss/range:output:0*
T0*
_output_shapes
: ¼
&mean_squared_error/weighted_loss/valueDivNoNan/mean_squared_error/weighted_loss/Sum_1:output:06mean_squared_error/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: Y
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿm

ExpandDims
ExpandDimsdata_1_0ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
&mean_squared_error_1/SquaredDifferenceSquaredDifference,differential_model/dense_14/BiasAdd:output:0ExpandDims:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+mean_squared_error_1/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ±
mean_squared_error_1/MeanMean*mean_squared_error_1/SquaredDifference:z:04mean_squared_error_1/Mean/reduction_indices:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
(mean_squared_error_1/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?²
&mean_squared_error_1/weighted_loss/MulMul"mean_squared_error_1/Mean:output:01mean_squared_error_1/weighted_loss/Const:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
*mean_squared_error_1/weighted_loss/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¯
&mean_squared_error_1/weighted_loss/SumSum*mean_squared_error_1/weighted_loss/Mul:z:03mean_squared_error_1/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: 
/mean_squared_error_1/weighted_loss/num_elementsSize*mean_squared_error_1/weighted_loss/Mul:z:0*
T0*
_output_shapes
: ¦
4mean_squared_error_1/weighted_loss/num_elements/CastCast8mean_squared_error_1/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: i
'mean_squared_error_1/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.mean_squared_error_1/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :ï
(mean_squared_error_1/weighted_loss/rangeRange7mean_squared_error_1/weighted_loss/range/start:output:00mean_squared_error_1/weighted_loss/Rank:output:07mean_squared_error_1/weighted_loss/range/delta:output:0*
_output_shapes
: ´
(mean_squared_error_1/weighted_loss/Sum_1Sum/mean_squared_error_1/weighted_loss/Sum:output:01mean_squared_error_1/weighted_loss/range:output:0*
T0*
_output_shapes
: Â
(mean_squared_error_1/weighted_loss/valueDivNoNan1mean_squared_error_1/weighted_loss/Sum_1:output:08mean_squared_error_1/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: H
ShapeShapeExpandDims:output:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: c
MulMul,mean_squared_error_1/weighted_loss/value:z:0Cast:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: D
SumSumMul:z:0range:output:0*
T0*
_output_shapes
: y
AssignAddVariableOpAssignAddVariableOpassignaddvariableop_resourceSum:output:0*
_output_shapes
 *
dtype0H
Rank_1Const*
_output_shapes
: *
dtype0*
value	B : O
range_1/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_1Rangerange_1/start:output:0Rank_1:output:0range_1/delta:output:0*
_output_shapes
: I
Sum_1SumCast:y:0range_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_1AssignAddVariableOpassignaddvariableop_1_resourceSum_1:output:0^AssignAddVariableOp*
_output_shapes
 *
dtype0L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
mul_1Mulmul_1/x:output:0*mean_squared_error/weighted_loss/value:z:0*
T0*
_output_shapes
: f
addAddV2	mul_1:z:0,mean_squared_error_1/weighted_loss/value:z:0*
T0*
_output_shapes
: [
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿq
ExpandDims_1
ExpandDimsdata_1_0ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
subSub,differential_model/dense_14/BiasAdd:output:0ExpandDims_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿE
AbsAbssub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿd
MeanMeanAbs:y:0Mean/reduction_indices:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ConstConst*
_output_shapes
:*
dtype0*
valueB: L
Sum_2SumMean:output:0Const:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_2AssignAddVariableOpassignaddvariableop_2_resourceSum_2:output:0*
_output_shapes
 *
dtype0<
SizeSizeMean:output:0*
T0*
_output_shapes
: M
Cast_1CastSize:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_3AssignAddVariableOpassignaddvariableop_3_resource
Cast_1:y:0^AssignAddVariableOp_2*
_output_shapes
 *
dtype0
SquaredDifferenceSquaredDifference,differential_model/dense_14/BiasAdd:output:0ExpandDims_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
Const_1Const*
_output_shapes
:*
dtype0*
valueB"       V
Sum_3SumSquaredDifference:z:0Const_1:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_4AssignAddVariableOpassignaddvariableop_4_resourceSum_3:output:0*
_output_shapes
 *
dtype0F
Size_1SizeSquaredDifference:z:0*
T0*
_output_shapes
: O
Cast_2CastSize_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_5AssignAddVariableOpassignaddvariableop_5_resource
Cast_2:y:0^AssignAddVariableOp_4*
_output_shapes
 *
dtype0H
Rank_2Const*
_output_shapes
: *
dtype0*
value	B : O
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_2Rangerange_2/start:output:0Rank_2:output:0range_2/delta:output:0*
_output_shapes
: H
Sum_4Sumadd:z:0range_2:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_6AssignAddVariableOpassignaddvariableop_6_resourceSum_4:output:0*
_output_shapes
 *
dtype0H
Size_2Const*
_output_shapes
: *
dtype0*
value	B :O
Cast_3CastSize_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_7AssignAddVariableOpassignaddvariableop_7_resource
Cast_3:y:0^AssignAddVariableOp_6*
_output_shapes
 *
dtype0H
Rank_3Const*
_output_shapes
: *
dtype0*
value	B : O
range_3/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_3Rangerange_3/start:output:0Rank_3:output:0range_3/delta:output:0*
_output_shapes
: k
Sum_5Sum*mean_squared_error/weighted_loss/value:z:0range_3:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_8AssignAddVariableOpassignaddvariableop_8_resourceSum_5:output:0*
_output_shapes
 *
dtype0H
Size_3Const*
_output_shapes
: *
dtype0*
value	B :O
Cast_4CastSize_3:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_9AssignAddVariableOpassignaddvariableop_9_resource
Cast_4:y:0^AssignAddVariableOp_8*
_output_shapes
 *
dtype0H
Rank_4Const*
_output_shapes
: *
dtype0*
value	B : O
range_4/startConst*
_output_shapes
: *
dtype0*
value	B : O
range_4/deltaConst*
_output_shapes
: *
dtype0*
value	B :k
range_4Rangerange_4/start:output:0Rank_4:output:0range_4/delta:output:0*
_output_shapes
: m
Sum_6Sum,mean_squared_error_1/weighted_loss/value:z:0range_4:output:0*
T0*
_output_shapes
: 
AssignAddVariableOp_10AssignAddVariableOpassignaddvariableop_10_resourceSum_6:output:0*
_output_shapes
 *
dtype0H
Size_4Const*
_output_shapes
: *
dtype0*
value	B :O
Cast_5CastSize_4:output:0*

DstT0*

SrcT0*
_output_shapes
: 
AssignAddVariableOp_11AssignAddVariableOpassignaddvariableop_11_resource
Cast_5:y:0^AssignAddVariableOp_10*
_output_shapes
 *
dtype0
div_no_nan/ReadVariableOpReadVariableOpassignaddvariableop_resource^AssignAddVariableOp*
_output_shapes
: *
dtype0
div_no_nan/ReadVariableOp_1ReadVariableOpassignaddvariableop_1_resource^AssignAddVariableOp_1*
_output_shapes
: *
dtype0

div_no_nanDivNoNan!div_no_nan/ReadVariableOp:value:0#div_no_nan/ReadVariableOp_1:value:0*
T0*
_output_shapes
: E
IdentityIdentitydiv_no_nan:z:0*
T0*
_output_shapes
: 
div_no_nan_1/ReadVariableOpReadVariableOpassignaddvariableop_2_resource^AssignAddVariableOp_2*
_output_shapes
: *
dtype0
div_no_nan_1/ReadVariableOp_1ReadVariableOpassignaddvariableop_3_resource^AssignAddVariableOp_3*
_output_shapes
: *
dtype0
div_no_nan_1DivNoNan#div_no_nan_1/ReadVariableOp:value:0%div_no_nan_1/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_1Identitydiv_no_nan_1:z:0*
T0*
_output_shapes
: 
div_no_nan_2/ReadVariableOpReadVariableOpassignaddvariableop_4_resource^AssignAddVariableOp_4*
_output_shapes
: *
dtype0
div_no_nan_2/ReadVariableOp_1ReadVariableOpassignaddvariableop_5_resource^AssignAddVariableOp_5*
_output_shapes
: *
dtype0
div_no_nan_2DivNoNan#div_no_nan_2/ReadVariableOp:value:0%div_no_nan_2/ReadVariableOp_1:value:0*
T0*
_output_shapes
: ?
SqrtSqrtdiv_no_nan_2:z:0*
T0*
_output_shapes
: A

Identity_2IdentitySqrt:y:0*
T0*
_output_shapes
: 
div_no_nan_3/ReadVariableOpReadVariableOpassignaddvariableop_8_resource^AssignAddVariableOp_8*
_output_shapes
: *
dtype0
div_no_nan_3/ReadVariableOp_1ReadVariableOpassignaddvariableop_9_resource^AssignAddVariableOp_9*
_output_shapes
: *
dtype0
div_no_nan_3DivNoNan#div_no_nan_3/ReadVariableOp:value:0%div_no_nan_3/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_3Identitydiv_no_nan_3:z:0*
T0*
_output_shapes
: 
div_no_nan_4/ReadVariableOpReadVariableOpassignaddvariableop_10_resource^AssignAddVariableOp_10*
_output_shapes
: *
dtype0
div_no_nan_4/ReadVariableOp_1ReadVariableOpassignaddvariableop_11_resource^AssignAddVariableOp_11*
_output_shapes
: *
dtype0
div_no_nan_4DivNoNan#div_no_nan_4/ReadVariableOp:value:0%div_no_nan_4/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_4Identitydiv_no_nan_4:z:0*
T0*
_output_shapes
: 
div_no_nan_5/ReadVariableOpReadVariableOpassignaddvariableop_6_resource^AssignAddVariableOp_6*
_output_shapes
: *
dtype0
div_no_nan_5/ReadVariableOp_1ReadVariableOpassignaddvariableop_7_resource^AssignAddVariableOp_7*
_output_shapes
: *
dtype0
div_no_nan_5DivNoNan#div_no_nan_5/ReadVariableOp:value:0%div_no_nan_5/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_5Identitydiv_no_nan_5:z:0*
T0*
_output_shapes
: 
div_no_nan_6/ReadVariableOpReadVariableOpassignaddvariableop_6_resource^AssignAddVariableOp_6*
_output_shapes
: *
dtype0
div_no_nan_6/ReadVariableOp_1ReadVariableOpassignaddvariableop_7_resource^AssignAddVariableOp_7*
_output_shapes
: *
dtype0
div_no_nan_6DivNoNan#div_no_nan_6/ReadVariableOp:value:0%div_no_nan_6/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_6Identitydiv_no_nan_6:z:0*
T0*
_output_shapes
: 
div_no_nan_7/ReadVariableOpReadVariableOpassignaddvariableop_10_resource^AssignAddVariableOp_10*
_output_shapes
: *
dtype0
div_no_nan_7/ReadVariableOp_1ReadVariableOpassignaddvariableop_11_resource^AssignAddVariableOp_11*
_output_shapes
: *
dtype0
div_no_nan_7DivNoNan#div_no_nan_7/ReadVariableOp:value:0%div_no_nan_7/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_7Identitydiv_no_nan_7:z:0*
T0*
_output_shapes
: 
div_no_nan_8/ReadVariableOpReadVariableOpassignaddvariableop_8_resource^AssignAddVariableOp_8*
_output_shapes
: *
dtype0
div_no_nan_8/ReadVariableOp_1ReadVariableOpassignaddvariableop_9_resource^AssignAddVariableOp_9*
_output_shapes
: *
dtype0
div_no_nan_8DivNoNan#div_no_nan_8/ReadVariableOp:value:0%div_no_nan_8/ReadVariableOp_1:value:0*
T0*
_output_shapes
: I

Identity_8Identitydiv_no_nan_8:z:0*
T0*
_output_shapes
: S

Identity_9IdentityIdentity_1:output:0^NoOp*
T0*
_output_shapes
: T
Identity_10IdentityIdentity_2:output:0^NoOp*
T0*
_output_shapes
: T
Identity_11IdentityIdentity_8:output:0^NoOp*
T0*
_output_shapes
: T
Identity_12IdentityIdentity_6:output:0^NoOp*
T0*
_output_shapes
: T
Identity_13IdentityIdentity_7:output:0^NoOp*
T0*
_output_shapes
: ©
NoOpNoOp^AssignAddVariableOp^AssignAddVariableOp_1^AssignAddVariableOp_10^AssignAddVariableOp_11^AssignAddVariableOp_2^AssignAddVariableOp_3^AssignAddVariableOp_4^AssignAddVariableOp_5^AssignAddVariableOp_6^AssignAddVariableOp_7^AssignAddVariableOp_8^AssignAddVariableOp_9C^differential_model/batch_normalization_10/batchnorm/ReadVariableOpE^differential_model/batch_normalization_10/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_10/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpC^differential_model/batch_normalization_11/batchnorm/ReadVariableOpE^differential_model/batch_normalization_11/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_11/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpC^differential_model/batch_normalization_12/batchnorm/ReadVariableOpE^differential_model/batch_normalization_12/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_12/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpC^differential_model/batch_normalization_13/batchnorm/ReadVariableOpE^differential_model/batch_normalization_13/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_13/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpC^differential_model/batch_normalization_14/batchnorm/ReadVariableOpE^differential_model/batch_normalization_14/batchnorm/ReadVariableOp_1E^differential_model/batch_normalization_14/batchnorm/ReadVariableOp_2G^differential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp3^differential_model/dense_10/BiasAdd/ReadVariableOp2^differential_model/dense_10/MatMul/ReadVariableOp3^differential_model/dense_11/BiasAdd/ReadVariableOp2^differential_model/dense_11/MatMul/ReadVariableOp3^differential_model/dense_12/BiasAdd/ReadVariableOp2^differential_model/dense_12/MatMul/ReadVariableOp3^differential_model/dense_13/BiasAdd/ReadVariableOp2^differential_model/dense_13/MatMul/ReadVariableOp3^differential_model/dense_14/BiasAdd/ReadVariableOp2^differential_model/dense_14/MatMul/ReadVariableOp^div_no_nan/ReadVariableOp^div_no_nan/ReadVariableOp_1^div_no_nan_1/ReadVariableOp^div_no_nan_1/ReadVariableOp_1^div_no_nan_2/ReadVariableOp^div_no_nan_2/ReadVariableOp_1^div_no_nan_3/ReadVariableOp^div_no_nan_3/ReadVariableOp_1^div_no_nan_4/ReadVariableOp^div_no_nan_4/ReadVariableOp_1^div_no_nan_5/ReadVariableOp^div_no_nan_5/ReadVariableOp_1^div_no_nan_6/ReadVariableOp^div_no_nan_6/ReadVariableOp_1^div_no_nan_7/ReadVariableOp^div_no_nan_7/ReadVariableOp_1^div_no_nan_8/ReadVariableOp^div_no_nan_8/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignAddVariableOpAssignAddVariableOp2.
AssignAddVariableOp_1AssignAddVariableOp_120
AssignAddVariableOp_10AssignAddVariableOp_1020
AssignAddVariableOp_11AssignAddVariableOp_112.
AssignAddVariableOp_2AssignAddVariableOp_22.
AssignAddVariableOp_3AssignAddVariableOp_32.
AssignAddVariableOp_4AssignAddVariableOp_42.
AssignAddVariableOp_5AssignAddVariableOp_52.
AssignAddVariableOp_6AssignAddVariableOp_62.
AssignAddVariableOp_7AssignAddVariableOp_72.
AssignAddVariableOp_8AssignAddVariableOp_82.
AssignAddVariableOp_9AssignAddVariableOp_92
Bdifferential_model/batch_normalization_10/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_10/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_10/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_10/batchnorm/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_11/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_11/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_11/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_11/batchnorm/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_12/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_12/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_12/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_12/batchnorm/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_13/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_13/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_13/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_13/batchnorm/mul/ReadVariableOp2
Bdifferential_model/batch_normalization_14/batchnorm/ReadVariableOpBdifferential_model/batch_normalization_14/batchnorm/ReadVariableOp2
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_1Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_12
Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_2Ddifferential_model/batch_normalization_14/batchnorm/ReadVariableOp_22
Fdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOpFdifferential_model/batch_normalization_14/batchnorm/mul/ReadVariableOp2h
2differential_model/dense_10/BiasAdd/ReadVariableOp2differential_model/dense_10/BiasAdd/ReadVariableOp2f
1differential_model/dense_10/MatMul/ReadVariableOp1differential_model/dense_10/MatMul/ReadVariableOp2h
2differential_model/dense_11/BiasAdd/ReadVariableOp2differential_model/dense_11/BiasAdd/ReadVariableOp2f
1differential_model/dense_11/MatMul/ReadVariableOp1differential_model/dense_11/MatMul/ReadVariableOp2h
2differential_model/dense_12/BiasAdd/ReadVariableOp2differential_model/dense_12/BiasAdd/ReadVariableOp2f
1differential_model/dense_12/MatMul/ReadVariableOp1differential_model/dense_12/MatMul/ReadVariableOp2h
2differential_model/dense_13/BiasAdd/ReadVariableOp2differential_model/dense_13/BiasAdd/ReadVariableOp2f
1differential_model/dense_13/MatMul/ReadVariableOp1differential_model/dense_13/MatMul/ReadVariableOp2h
2differential_model/dense_14/BiasAdd/ReadVariableOp2differential_model/dense_14/BiasAdd/ReadVariableOp2f
1differential_model/dense_14/MatMul/ReadVariableOp1differential_model/dense_14/MatMul/ReadVariableOp26
div_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp2:
div_no_nan/ReadVariableOp_1div_no_nan/ReadVariableOp_12:
div_no_nan_1/ReadVariableOpdiv_no_nan_1/ReadVariableOp2>
div_no_nan_1/ReadVariableOp_1div_no_nan_1/ReadVariableOp_12:
div_no_nan_2/ReadVariableOpdiv_no_nan_2/ReadVariableOp2>
div_no_nan_2/ReadVariableOp_1div_no_nan_2/ReadVariableOp_12:
div_no_nan_3/ReadVariableOpdiv_no_nan_3/ReadVariableOp2>
div_no_nan_3/ReadVariableOp_1div_no_nan_3/ReadVariableOp_12:
div_no_nan_4/ReadVariableOpdiv_no_nan_4/ReadVariableOp2>
div_no_nan_4/ReadVariableOp_1div_no_nan_4/ReadVariableOp_12:
div_no_nan_5/ReadVariableOpdiv_no_nan_5/ReadVariableOp2>
div_no_nan_5/ReadVariableOp_1div_no_nan_5/ReadVariableOp_12:
div_no_nan_6/ReadVariableOpdiv_no_nan_6/ReadVariableOp2>
div_no_nan_6/ReadVariableOp_1div_no_nan_6/ReadVariableOp_12:
div_no_nan_7/ReadVariableOpdiv_no_nan_7/ReadVariableOp2>
div_no_nan_7/ReadVariableOp_1div_no_nan_7/ReadVariableOp_12:
div_no_nan_8/ReadVariableOpdiv_no_nan_8/ReadVariableOp2>
div_no_nan_8/ReadVariableOp_1div_no_nan_8/ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namedata/0:MI
#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
data/1/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
data/1/1
Â

)__inference_dense_14_layer_call_fn_166389

inputs
unknown:$
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_163151o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
é?
à
N__inference_differential_model_layer_call_and_return_conditional_losses_163688
input_3+
batch_normalization_10_163617:+
batch_normalization_10_163619:+
batch_normalization_10_163621:+
batch_normalization_10_163623:!
dense_10_163626:$
dense_10_163628:$+
batch_normalization_11_163631:$+
batch_normalization_11_163633:$+
batch_normalization_11_163635:$+
batch_normalization_11_163637:$!
dense_11_163640:$$
dense_11_163642:$+
batch_normalization_12_163645:$+
batch_normalization_12_163647:$+
batch_normalization_12_163649:$+
batch_normalization_12_163651:$!
dense_12_163654:$$
dense_12_163656:$+
batch_normalization_13_163659:$+
batch_normalization_13_163661:$+
batch_normalization_13_163663:$+
batch_normalization_13_163665:$!
dense_13_163668:$$
dense_13_163670:$+
batch_normalization_14_163673:$+
batch_normalization_14_163675:$+
batch_normalization_14_163677:$+
batch_normalization_14_163679:$!
dense_14_163682:$
dense_14_163684:
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢.batch_normalization_12/StatefulPartitionedCall¢.batch_normalization_13/StatefulPartitionedCall¢.batch_normalization_14/StatefulPartitionedCall¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢ dense_12/StatefulPartitionedCall¢ dense_13/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallé
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCallinput_3batch_normalization_10_163617batch_normalization_10_163619batch_normalization_10_163621batch_normalization_10_163623*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_162682¡
 dense_10/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_10_163626dense_10_163628*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_10_layer_call_and_return_conditional_losses_163048
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0batch_normalization_11_163631batch_normalization_11_163633batch_normalization_11_163635batch_normalization_11_163637*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_162764¡
 dense_11/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_11_163640dense_11_163642*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_163074
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0batch_normalization_12_163645batch_normalization_12_163647batch_normalization_12_163649batch_normalization_12_163651*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_162846¡
 dense_12/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0dense_12_163654dense_12_163656*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_163100
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0batch_normalization_13_163659batch_normalization_13_163661batch_normalization_13_163663batch_normalization_13_163665*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_162928¡
 dense_13/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_13_163668dense_13_163670*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_163126
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0batch_normalization_14_163673batch_normalization_14_163675batch_normalization_14_163677batch_normalization_14_163679*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_163010¡
 dense_14/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0dense_14_163682dense_14_163684*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_14_layer_call_and_return_conditional_losses_163151x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
ï

3__inference_differential_model_layer_call_fn_163221
input_3
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:$
	unknown_4:$
	unknown_5:$
	unknown_6:$
	unknown_7:$
	unknown_8:$
	unknown_9:$$

unknown_10:$

unknown_11:$

unknown_12:$

unknown_13:$

unknown_14:$

unknown_15:$$

unknown_16:$

unknown_17:$

unknown_18:$

unknown_19:$

unknown_20:$

unknown_21:$$

unknown_22:$

unknown_23:$

unknown_24:$

unknown_25:$

unknown_26:$

unknown_27:$

unknown_28:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_differential_model_layer_call_and_return_conditional_losses_163158o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_3
Â

)__inference_dense_13_layer_call_fn_166289

inputs
unknown:$$
	unknown_0:$
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_163126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ç	
õ
D__inference_dense_14_layer_call_and_return_conditional_losses_163151

inputs0
matmul_readvariableop_resource:$-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_14_layer_call_fn_166326

inputs
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:$
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_163010o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
ì
ÿ
3__inference_differential_model_layer_call_fn_163757

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:$
	unknown_4:$
	unknown_5:$
	unknown_6:$
	unknown_7:$
	unknown_8:$
	unknown_9:$$

unknown_10:$

unknown_11:$

unknown_12:$

unknown_13:$

unknown_14:$

unknown_15:$$

unknown_16:$

unknown_17:$

unknown_18:$

unknown_19:$

unknown_20:$

unknown_21:$$

unknown_22:$

unknown_23:$

unknown_24:$

unknown_25:$

unknown_26:$

unknown_27:$

unknown_28:
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*@
_read_only_resource_inputs"
 	
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_differential_model_layer_call_and_return_conditional_losses_163158o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_162963

inputs/
!batchnorm_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$1
#batchnorm_readvariableop_1_resource:$1
#batchnorm_readvariableop_2_resource:$
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:$z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_162635

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
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
:ÿÿÿÿÿÿÿÿÿz
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
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_10_layer_call_fn_165926

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_162682o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
Ò
7__inference_batch_normalization_11_layer_call_fn_166013

inputs
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:$
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_162717o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_166146

inputs/
!batchnorm_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$1
#batchnorm_readvariableop_1_resource:$1
#batchnorm_readvariableop_2_resource:$
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:$z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
§

õ
D__inference_dense_13_layer_call_and_return_conditional_losses_166300

inputs0
matmul_readvariableop_resource:$$-
biasadd_readvariableop_resource:$
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_165946

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
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
:ÿÿÿÿÿÿÿÿÿz
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
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_166380

inputs5
'assignmovingavg_readvariableop_resource:$7
)assignmovingavg_1_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$/
!batchnorm_readvariableop_resource:$
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:$
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:$*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:$*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:$x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:$¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:$*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:$~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:$´
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:$v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_162682

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
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
:ÿÿÿÿÿÿÿÿÿl
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
×#<
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
×#<
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
:´
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
:ÿÿÿÿÿÿÿÿÿh
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
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä¨
Ó
N__inference_differential_model_layer_call_and_return_conditional_losses_163940

inputsF
8batch_normalization_10_batchnorm_readvariableop_resource:J
<batch_normalization_10_batchnorm_mul_readvariableop_resource:H
:batch_normalization_10_batchnorm_readvariableop_1_resource:H
:batch_normalization_10_batchnorm_readvariableop_2_resource:9
'dense_10_matmul_readvariableop_resource:$6
(dense_10_biasadd_readvariableop_resource:$F
8batch_normalization_11_batchnorm_readvariableop_resource:$J
<batch_normalization_11_batchnorm_mul_readvariableop_resource:$H
:batch_normalization_11_batchnorm_readvariableop_1_resource:$H
:batch_normalization_11_batchnorm_readvariableop_2_resource:$9
'dense_11_matmul_readvariableop_resource:$$6
(dense_11_biasadd_readvariableop_resource:$F
8batch_normalization_12_batchnorm_readvariableop_resource:$J
<batch_normalization_12_batchnorm_mul_readvariableop_resource:$H
:batch_normalization_12_batchnorm_readvariableop_1_resource:$H
:batch_normalization_12_batchnorm_readvariableop_2_resource:$9
'dense_12_matmul_readvariableop_resource:$$6
(dense_12_biasadd_readvariableop_resource:$F
8batch_normalization_13_batchnorm_readvariableop_resource:$J
<batch_normalization_13_batchnorm_mul_readvariableop_resource:$H
:batch_normalization_13_batchnorm_readvariableop_1_resource:$H
:batch_normalization_13_batchnorm_readvariableop_2_resource:$9
'dense_13_matmul_readvariableop_resource:$$6
(dense_13_biasadd_readvariableop_resource:$F
8batch_normalization_14_batchnorm_readvariableop_resource:$J
<batch_normalization_14_batchnorm_mul_readvariableop_resource:$H
:batch_normalization_14_batchnorm_readvariableop_1_resource:$H
:batch_normalization_14_batchnorm_readvariableop_2_resource:$9
'dense_14_matmul_readvariableop_resource:$6
(dense_14_biasadd_readvariableop_resource:
identity¢/batch_normalization_10/batchnorm/ReadVariableOp¢1batch_normalization_10/batchnorm/ReadVariableOp_1¢1batch_normalization_10/batchnorm/ReadVariableOp_2¢3batch_normalization_10/batchnorm/mul/ReadVariableOp¢/batch_normalization_11/batchnorm/ReadVariableOp¢1batch_normalization_11/batchnorm/ReadVariableOp_1¢1batch_normalization_11/batchnorm/ReadVariableOp_2¢3batch_normalization_11/batchnorm/mul/ReadVariableOp¢/batch_normalization_12/batchnorm/ReadVariableOp¢1batch_normalization_12/batchnorm/ReadVariableOp_1¢1batch_normalization_12/batchnorm/ReadVariableOp_2¢3batch_normalization_12/batchnorm/mul/ReadVariableOp¢/batch_normalization_13/batchnorm/ReadVariableOp¢1batch_normalization_13/batchnorm/ReadVariableOp_1¢1batch_normalization_13/batchnorm/ReadVariableOp_2¢3batch_normalization_13/batchnorm/mul/ReadVariableOp¢/batch_normalization_14/batchnorm/ReadVariableOp¢1batch_normalization_14/batchnorm/ReadVariableOp_1¢1batch_normalization_14/batchnorm/ReadVariableOp_2¢3batch_normalization_14/batchnorm/mul/ReadVariableOp¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp¤
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_10/batchnorm/addAddV27batch_normalization_10/batchnorm/ReadVariableOp:value:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¹
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
&batch_normalization_10/batchnorm/mul_1Mulinputs(batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
1batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0·
&batch_normalization_10/batchnorm/mul_2Mul9batch_normalization_10/batchnorm/ReadVariableOp_1:value:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:¨
1batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0·
$batch_normalization_10/batchnorm/subSub9batch_normalization_10/batchnorm/ReadVariableOp_2:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0
dense_10/MatMulMatMul*batch_normalization_10/batchnorm/add_1:z:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$j
dense_10/SoftplusSoftplusdense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¤
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0k
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_11/batchnorm/addAddV27batch_normalization_11/batchnorm/ReadVariableOp:value:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes
:$~
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes
:$¬
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0¹
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ª
&batch_normalization_11/batchnorm/mul_1Muldense_10/Softplus:activations:0(batch_normalization_11/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¨
1batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0·
&batch_normalization_11/batchnorm/mul_2Mul9batch_normalization_11/batchnorm/ReadVariableOp_1:value:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes
:$¨
1batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0·
$batch_normalization_11/batchnorm/subSub9batch_normalization_11/batchnorm/ReadVariableOp_2:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$·
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0
dense_11/MatMulMatMul*batch_normalization_11/batchnorm/add_1:z:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$j
dense_11/SoftplusSoftplusdense_11/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¤
/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0k
&batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_12/batchnorm/addAddV27batch_normalization_12/batchnorm/ReadVariableOp:value:0/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:$~
&batch_normalization_12/batchnorm/RsqrtRsqrt(batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:$¬
3batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0¹
$batch_normalization_12/batchnorm/mulMul*batch_normalization_12/batchnorm/Rsqrt:y:0;batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ª
&batch_normalization_12/batchnorm/mul_1Muldense_11/Softplus:activations:0(batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¨
1batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0·
&batch_normalization_12/batchnorm/mul_2Mul9batch_normalization_12/batchnorm/ReadVariableOp_1:value:0(batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:$¨
1batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0·
$batch_normalization_12/batchnorm/subSub9batch_normalization_12/batchnorm/ReadVariableOp_2:value:0*batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$·
&batch_normalization_12/batchnorm/add_1AddV2*batch_normalization_12/batchnorm/mul_1:z:0(batch_normalization_12/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0
dense_12/MatMulMatMul*batch_normalization_12/batchnorm/add_1:z:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$j
dense_12/SoftplusSoftplusdense_12/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¤
/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0k
&batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_13/batchnorm/addAddV27batch_normalization_13/batchnorm/ReadVariableOp:value:0/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:$~
&batch_normalization_13/batchnorm/RsqrtRsqrt(batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:$¬
3batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0¹
$batch_normalization_13/batchnorm/mulMul*batch_normalization_13/batchnorm/Rsqrt:y:0;batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ª
&batch_normalization_13/batchnorm/mul_1Muldense_12/Softplus:activations:0(batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¨
1batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0·
&batch_normalization_13/batchnorm/mul_2Mul9batch_normalization_13/batchnorm/ReadVariableOp_1:value:0(batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:$¨
1batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0·
$batch_normalization_13/batchnorm/subSub9batch_normalization_13/batchnorm/ReadVariableOp_2:value:0*batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$·
&batch_normalization_13/batchnorm/add_1AddV2*batch_normalization_13/batchnorm/mul_1:z:0(batch_normalization_13/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:$$*
dtype0
dense_13/MatMulMatMul*batch_normalization_13/batchnorm/add_1:z:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype0
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$j
dense_13/SoftplusSoftplusdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¤
/batch_normalization_14/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_14_batchnorm_readvariableop_resource*
_output_shapes
:$*
dtype0k
&batch_normalization_14/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_14/batchnorm/addAddV27batch_normalization_14/batchnorm/ReadVariableOp:value:0/batch_normalization_14/batchnorm/add/y:output:0*
T0*
_output_shapes
:$~
&batch_normalization_14/batchnorm/RsqrtRsqrt(batch_normalization_14/batchnorm/add:z:0*
T0*
_output_shapes
:$¬
3batch_normalization_14/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_14_batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0¹
$batch_normalization_14/batchnorm/mulMul*batch_normalization_14/batchnorm/Rsqrt:y:0;batch_normalization_14/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$ª
&batch_normalization_14/batchnorm/mul_1Muldense_13/Softplus:activations:0(batch_normalization_14/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$¨
1batch_normalization_14/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_14_batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0·
&batch_normalization_14/batchnorm/mul_2Mul9batch_normalization_14/batchnorm/ReadVariableOp_1:value:0(batch_normalization_14/batchnorm/mul:z:0*
T0*
_output_shapes
:$¨
1batch_normalization_14/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_14_batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0·
$batch_normalization_14/batchnorm/subSub9batch_normalization_14/batchnorm/ReadVariableOp_2:value:0*batch_normalization_14/batchnorm/mul_2:z:0*
T0*
_output_shapes
:$·
&batch_normalization_14/batchnorm/add_1AddV2*batch_normalization_14/batchnorm/mul_1:z:0(batch_normalization_14/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:$*
dtype0
dense_14/MatMulMatMul*batch_normalization_14/batchnorm/add_1:z:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_14/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp2^batch_normalization_11/batchnorm/ReadVariableOp_12^batch_normalization_11/batchnorm/ReadVariableOp_24^batch_normalization_11/batchnorm/mul/ReadVariableOp0^batch_normalization_12/batchnorm/ReadVariableOp2^batch_normalization_12/batchnorm/ReadVariableOp_12^batch_normalization_12/batchnorm/ReadVariableOp_24^batch_normalization_12/batchnorm/mul/ReadVariableOp0^batch_normalization_13/batchnorm/ReadVariableOp2^batch_normalization_13/batchnorm/ReadVariableOp_12^batch_normalization_13/batchnorm/ReadVariableOp_24^batch_normalization_13/batchnorm/mul/ReadVariableOp0^batch_normalization_14/batchnorm/ReadVariableOp2^batch_normalization_14/batchnorm/ReadVariableOp_12^batch_normalization_14/batchnorm/ReadVariableOp_24^batch_normalization_14/batchnorm/mul/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2f
1batch_normalization_10/batchnorm/ReadVariableOp_11batch_normalization_10/batchnorm/ReadVariableOp_12f
1batch_normalization_10/batchnorm/ReadVariableOp_21batch_normalization_10/batchnorm/ReadVariableOp_22j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2f
1batch_normalization_11/batchnorm/ReadVariableOp_11batch_normalization_11/batchnorm/ReadVariableOp_12f
1batch_normalization_11/batchnorm/ReadVariableOp_21batch_normalization_11/batchnorm/ReadVariableOp_22j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2f
1batch_normalization_12/batchnorm/ReadVariableOp_11batch_normalization_12/batchnorm/ReadVariableOp_12f
1batch_normalization_12/batchnorm/ReadVariableOp_21batch_normalization_12/batchnorm/ReadVariableOp_22j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2f
1batch_normalization_13/batchnorm/ReadVariableOp_11batch_normalization_13/batchnorm/ReadVariableOp_12f
1batch_normalization_13/batchnorm/ReadVariableOp_21batch_normalization_13/batchnorm/ReadVariableOp_22j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2b
/batch_normalization_14/batchnorm/ReadVariableOp/batch_normalization_14/batchnorm/ReadVariableOp2f
1batch_normalization_14/batchnorm/ReadVariableOp_11batch_normalization_14/batchnorm/ReadVariableOp_12f
1batch_normalization_14/batchnorm/ReadVariableOp_21batch_normalization_14/batchnorm/ReadVariableOp_22j
3batch_normalization_14/batchnorm/mul/ReadVariableOp3batch_normalization_14/batchnorm/mul/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
ÿ6
"__inference__traced_restore_167072
file_prefix;
-assignvariableop_batch_normalization_10_gamma:<
.assignvariableop_1_batch_normalization_10_beta:C
5assignvariableop_2_batch_normalization_10_moving_mean:G
9assignvariableop_3_batch_normalization_10_moving_variance:4
"assignvariableop_4_dense_10_kernel:$.
 assignvariableop_5_dense_10_bias:$=
/assignvariableop_6_batch_normalization_11_gamma:$<
.assignvariableop_7_batch_normalization_11_beta:$C
5assignvariableop_8_batch_normalization_11_moving_mean:$G
9assignvariableop_9_batch_normalization_11_moving_variance:$5
#assignvariableop_10_dense_11_kernel:$$/
!assignvariableop_11_dense_11_bias:$>
0assignvariableop_12_batch_normalization_12_gamma:$=
/assignvariableop_13_batch_normalization_12_beta:$D
6assignvariableop_14_batch_normalization_12_moving_mean:$H
:assignvariableop_15_batch_normalization_12_moving_variance:$5
#assignvariableop_16_dense_12_kernel:$$/
!assignvariableop_17_dense_12_bias:$>
0assignvariableop_18_batch_normalization_13_gamma:$=
/assignvariableop_19_batch_normalization_13_beta:$D
6assignvariableop_20_batch_normalization_13_moving_mean:$H
:assignvariableop_21_batch_normalization_13_moving_variance:$5
#assignvariableop_22_dense_13_kernel:$$/
!assignvariableop_23_dense_13_bias:$>
0assignvariableop_24_batch_normalization_14_gamma:$=
/assignvariableop_25_batch_normalization_14_beta:$D
6assignvariableop_26_batch_normalization_14_moving_mean:$H
:assignvariableop_27_batch_normalization_14_moving_variance:$5
#assignvariableop_28_dense_14_kernel:$/
!assignvariableop_29_dense_14_bias:#
assignvariableop_30_total: #
assignvariableop_31_count: %
assignvariableop_32_total_1: %
assignvariableop_33_count_1: %
assignvariableop_34_total_2: %
assignvariableop_35_count_2: '
assignvariableop_36_adam_iter:	 )
assignvariableop_37_adam_beta_1: )
assignvariableop_38_adam_beta_2: (
assignvariableop_39_adam_decay: %
assignvariableop_40_total_3: %
assignvariableop_41_count_3: %
assignvariableop_42_total_4: %
assignvariableop_43_count_4: %
assignvariableop_44_total_5: %
assignvariableop_45_count_5: E
7assignvariableop_46_adam_batch_normalization_10_gamma_m:D
6assignvariableop_47_adam_batch_normalization_10_beta_m:<
*assignvariableop_48_adam_dense_10_kernel_m:$6
(assignvariableop_49_adam_dense_10_bias_m:$E
7assignvariableop_50_adam_batch_normalization_11_gamma_m:$D
6assignvariableop_51_adam_batch_normalization_11_beta_m:$<
*assignvariableop_52_adam_dense_11_kernel_m:$$6
(assignvariableop_53_adam_dense_11_bias_m:$E
7assignvariableop_54_adam_batch_normalization_12_gamma_m:$D
6assignvariableop_55_adam_batch_normalization_12_beta_m:$<
*assignvariableop_56_adam_dense_12_kernel_m:$$6
(assignvariableop_57_adam_dense_12_bias_m:$E
7assignvariableop_58_adam_batch_normalization_13_gamma_m:$D
6assignvariableop_59_adam_batch_normalization_13_beta_m:$<
*assignvariableop_60_adam_dense_13_kernel_m:$$6
(assignvariableop_61_adam_dense_13_bias_m:$E
7assignvariableop_62_adam_batch_normalization_14_gamma_m:$D
6assignvariableop_63_adam_batch_normalization_14_beta_m:$<
*assignvariableop_64_adam_dense_14_kernel_m:$6
(assignvariableop_65_adam_dense_14_bias_m:E
7assignvariableop_66_adam_batch_normalization_10_gamma_v:D
6assignvariableop_67_adam_batch_normalization_10_beta_v:<
*assignvariableop_68_adam_dense_10_kernel_v:$6
(assignvariableop_69_adam_dense_10_bias_v:$E
7assignvariableop_70_adam_batch_normalization_11_gamma_v:$D
6assignvariableop_71_adam_batch_normalization_11_beta_v:$<
*assignvariableop_72_adam_dense_11_kernel_v:$$6
(assignvariableop_73_adam_dense_11_bias_v:$E
7assignvariableop_74_adam_batch_normalization_12_gamma_v:$D
6assignvariableop_75_adam_batch_normalization_12_beta_v:$<
*assignvariableop_76_adam_dense_12_kernel_v:$$6
(assignvariableop_77_adam_dense_12_bias_v:$E
7assignvariableop_78_adam_batch_normalization_13_gamma_v:$D
6assignvariableop_79_adam_batch_normalization_13_beta_v:$<
*assignvariableop_80_adam_dense_13_kernel_v:$$6
(assignvariableop_81_adam_dense_13_bias_v:$E
7assignvariableop_82_adam_batch_normalization_14_gamma_v:$D
6assignvariableop_83_adam_batch_normalization_14_beta_v:$<
*assignvariableop_84_adam_dense_14_kernel_v:$6
(assignvariableop_85_adam_dense_14_bias_v:
identity_87¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_9Û.
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*.
value÷-Bô-WB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB2loss_tracker_grad/total/.ATTRIBUTES/VARIABLE_VALUEB2loss_tracker_grad/count/.ATTRIBUTES/VARIABLE_VALUEB2loss_tracker_pred/total/.ATTRIBUTES/VARIABLE_VALUEB2loss_tracker_pred/count/.ATTRIBUTES/VARIABLE_VALUEB-loss_tracker/total/.ATTRIBUTES/VARIABLE_VALUEB-loss_tracker/count/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¡
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:W*
dtype0*Ã
value¹B¶WB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ô
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ò
_output_shapesß
Ü:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*e
dtypes[
Y2W	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp-assignvariableop_batch_normalization_10_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp.assignvariableop_1_batch_normalization_10_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_2AssignVariableOp5assignvariableop_2_batch_normalization_10_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_3AssignVariableOp9assignvariableop_3_batch_normalization_10_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_10_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_10_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp/assignvariableop_6_batch_normalization_11_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_11_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_8AssignVariableOp5assignvariableop_8_batch_normalization_11_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_9AssignVariableOp9assignvariableop_9_batch_normalization_11_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_11_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_11_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_12AssignVariableOp0assignvariableop_12_batch_normalization_12_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_13AssignVariableOp/assignvariableop_13_batch_normalization_12_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_14AssignVariableOp6assignvariableop_14_batch_normalization_12_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_15AssignVariableOp:assignvariableop_15_batch_normalization_12_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_12_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp!assignvariableop_17_dense_12_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_18AssignVariableOp0assignvariableop_18_batch_normalization_13_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_19AssignVariableOp/assignvariableop_19_batch_normalization_13_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_20AssignVariableOp6assignvariableop_20_batch_normalization_13_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_21AssignVariableOp:assignvariableop_21_batch_normalization_13_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_13_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp!assignvariableop_23_dense_13_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_24AssignVariableOp0assignvariableop_24_batch_normalization_14_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_25AssignVariableOp/assignvariableop_25_batch_normalization_14_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_26AssignVariableOp6assignvariableop_26_batch_normalization_14_moving_meanIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_27AssignVariableOp:assignvariableop_27_batch_normalization_14_moving_varianceIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_14_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_14_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_totalIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_countIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_total_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_count_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_total_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_count_2Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_36AssignVariableOpassignvariableop_36_adam_iterIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOpassignvariableop_37_adam_beta_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_adam_beta_2Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOpassignvariableop_39_adam_decayIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOpassignvariableop_40_total_3Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOpassignvariableop_41_count_3Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOpassignvariableop_42_total_4Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOpassignvariableop_43_count_4Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOpassignvariableop_44_total_5Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOpassignvariableop_45_count_5Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_46AssignVariableOp7assignvariableop_46_adam_batch_normalization_10_gamma_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_batch_normalization_10_beta_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_dense_10_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense_10_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_50AssignVariableOp7assignvariableop_50_adam_batch_normalization_11_gamma_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_batch_normalization_11_beta_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_dense_11_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_dense_11_bias_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_54AssignVariableOp7assignvariableop_54_adam_batch_normalization_12_gamma_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_batch_normalization_12_beta_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_dense_12_kernel_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_dense_12_bias_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_58AssignVariableOp7assignvariableop_58_adam_batch_normalization_13_gamma_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_batch_normalization_13_beta_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp*assignvariableop_60_adam_dense_13_kernel_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_dense_13_bias_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_62AssignVariableOp7assignvariableop_62_adam_batch_normalization_14_gamma_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_batch_normalization_14_beta_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_dense_14_kernel_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp(assignvariableop_65_adam_dense_14_bias_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_66AssignVariableOp7assignvariableop_66_adam_batch_normalization_10_gamma_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_67AssignVariableOp6assignvariableop_67_adam_batch_normalization_10_beta_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_dense_10_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp(assignvariableop_69_adam_dense_10_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_70AssignVariableOp7assignvariableop_70_adam_batch_normalization_11_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_batch_normalization_11_beta_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_dense_11_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp(assignvariableop_73_adam_dense_11_bias_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_74AssignVariableOp7assignvariableop_74_adam_batch_normalization_12_gamma_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_75AssignVariableOp6assignvariableop_75_adam_batch_normalization_12_beta_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_dense_12_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOp(assignvariableop_77_adam_dense_12_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_78AssignVariableOp7assignvariableop_78_adam_batch_normalization_13_gamma_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adam_batch_normalization_13_beta_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_dense_13_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp(assignvariableop_81_adam_dense_13_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_82AssignVariableOp7assignvariableop_82_adam_batch_normalization_14_gamma_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_83AssignVariableOp6assignvariableop_83_adam_batch_normalization_14_beta_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp*assignvariableop_84_adam_dense_14_kernel_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp(assignvariableop_85_adam_dense_14_bias_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ³
Identity_86Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_87IdentityIdentity_86:output:0^NoOp_1*
T0*
_output_shapes
:  
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_87Identity_87:output:0*Ã
_input_shapes±
®: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
§

õ
D__inference_dense_13_layer_call_and_return_conditional_losses_163126

inputs0
matmul_readvariableop_resource:$$-
biasadd_readvariableop_resource:$
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:$$*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$X
SoftplusSoftplusBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$e
IdentityIdentitySoftplus:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_166246

inputs/
!batchnorm_readvariableop_resource:$3
%batchnorm_mul_readvariableop_resource:$1
#batchnorm_readvariableop_1_resource:$1
#batchnorm_readvariableop_2_resource:$
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:$*
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
:$P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:$~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:$*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:$c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:$*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:$z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:$*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:$r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_13_layer_call_fn_166226

inputs
unknown:$
	unknown_0:$
	unknown_1:$
	unknown_2:$
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_162928o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
Â

)__inference_dense_11_layer_call_fn_166089

inputs
unknown:$$
	unknown_0:$
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_11_layer_call_and_return_conditional_losses_163074o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs<
#__inference_internal_grad_fn_166699CustomGradient-165623"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_30
serving_default_input_3:0ÿÿÿÿÿÿÿÿÿ<
dense_140
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:²û
Ö
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
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer_with_weights-8

layer-9
layer_with_weights-9
layer-10
loss_tracker_grad
loss_tracker_pred
loss_tracker
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	test_step

train_step

signatures"
_tf_keras_network
"
_tf_keras_input_layer
ê
axis
	gamma
beta
moving_mean
moving_variance
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
ê
-axis
	.gamma
/beta
0moving_mean
1moving_variance
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
»

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
Saxis
	Tgamma
Ubeta
Vmoving_mean
Wmoving_variance
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
»

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
faxis
	ggamma
hbeta
imoving_mean
jmoving_variance
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
»

qkernel
rbias
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
N
	ytotal
	zcount
{	variables
|	keras_api"
_tf_keras_metric
O
	}total
	~count
	variables
	keras_api"
_tf_keras_metric
R

total

count
	variables
	keras_api"
_tf_keras_metric
Ô
	iter
beta_1
beta_2

decaymÑmÒ%mÓ&mÔ.mÕ/mÖ8m×9mØAmÙBmÚKmÛLmÜTmÝUmÞ^mß_màgmáhmâqmãrmävåvæ%vç&vè.vé/vê8vë9vìAvíBvîKvïLvðTvñUvò^vó_vôgvõhvöqv÷rvø"
	optimizer
¸
0
1
2
3
%4
&5
.6
/7
08
19
810
911
A12
B13
C14
D15
K16
L17
T18
U19
V20
W21
^22
_23
g24
h25
i26
j27
q28
r29
y30
z31
}32
~33
34
35"
trackable_list_wrapper
¶
0
1
%2
&3
.4
/5
86
97
A8
B9
K10
L11
T12
U13
^14
_15
g16
h17
q18
r19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
3__inference_differential_model_layer_call_fn_163221
3__inference_differential_model_layer_call_fn_163757
3__inference_differential_model_layer_call_fn_163822
3__inference_differential_model_layer_call_fn_163540À
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
kwonlydefaultsª 
annotationsª *
 
2
N__inference_differential_model_layer_call_and_return_conditional_losses_163940
N__inference_differential_model_layer_call_and_return_conditional_losses_164128
N__inference_differential_model_layer_call_and_return_conditional_losses_163614
N__inference_differential_model_layer_call_and_return_conditional_losses_163688À
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
kwonlydefaultsª 
annotationsª *
 
ÌBÉ
!__inference__wrapped_model_162611input_3"
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
annotationsª *
 
Ä2Á
__inference_test_step_164536 
²
FullArgSpec
args
jself
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Å2Â
__inference_train_step_165833 
²
FullArgSpec
args
jself
jdata
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
-
serving_default"
signature_map
 "
trackable_list_wrapper
*:(2batch_normalization_10/gamma
):'2batch_normalization_10/beta
2:0 (2"batch_normalization_10/moving_mean
6:4 (2&batch_normalization_10/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_10_layer_call_fn_165913
7__inference_batch_normalization_10_layer_call_fn_165926´
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
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_165946
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_165980´
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
kwonlydefaultsª 
annotationsª *
 
!:$2dense_10/kernel
:$2dense_10/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_10_layer_call_fn_165989¢
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
annotationsª *
 
î2ë
D__inference_dense_10_layer_call_and_return_conditional_losses_166000¢
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
annotationsª *
 
 "
trackable_list_wrapper
*:($2batch_normalization_11/gamma
):'$2batch_normalization_11/beta
2:0$ (2"batch_normalization_11/moving_mean
6:4$ (2&batch_normalization_11/moving_variance
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_11_layer_call_fn_166013
7__inference_batch_normalization_11_layer_call_fn_166026´
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
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_166046
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_166080´
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
kwonlydefaultsª 
annotationsª *
 
!:$$2dense_11/kernel
:$2dense_11/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_11_layer_call_fn_166089¢
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
annotationsª *
 
î2ë
D__inference_dense_11_layer_call_and_return_conditional_losses_166100¢
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
annotationsª *
 
 "
trackable_list_wrapper
*:($2batch_normalization_12/gamma
):'$2batch_normalization_12/beta
2:0$ (2"batch_normalization_12/moving_mean
6:4$ (2&batch_normalization_12/moving_variance
<
A0
B1
C2
D3"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_12_layer_call_fn_166113
7__inference_batch_normalization_12_layer_call_fn_166126´
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
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_166146
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_166180´
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
kwonlydefaultsª 
annotationsª *
 
!:$$2dense_12/kernel
:$2dense_12/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_12_layer_call_fn_166189¢
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
annotationsª *
 
î2ë
D__inference_dense_12_layer_call_and_return_conditional_losses_166200¢
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
annotationsª *
 
 "
trackable_list_wrapper
*:($2batch_normalization_13/gamma
):'$2batch_normalization_13/beta
2:0$ (2"batch_normalization_13/moving_mean
6:4$ (2&batch_normalization_13/moving_variance
<
T0
U1
V2
W3"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_13_layer_call_fn_166213
7__inference_batch_normalization_13_layer_call_fn_166226´
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
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_166246
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_166280´
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
kwonlydefaultsª 
annotationsª *
 
!:$$2dense_13/kernel
:$2dense_13/bias
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_13_layer_call_fn_166289¢
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
annotationsª *
 
î2ë
D__inference_dense_13_layer_call_and_return_conditional_losses_166300¢
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
annotationsª *
 
 "
trackable_list_wrapper
*:($2batch_normalization_14/gamma
):'$2batch_normalization_14/beta
2:0$ (2"batch_normalization_14/moving_mean
6:4$ (2&batch_normalization_14/moving_variance
<
g0
h1
i2
j3"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_14_layer_call_fn_166313
7__inference_batch_normalization_14_layer_call_fn_166326´
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
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_166346
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_166380´
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
kwonlydefaultsª 
annotationsª *
 
!:$2dense_14/kernel
:2dense_14/bias
.
q0
r1"
trackable_list_wrapper
.
q0
r1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_14_layer_call_fn_166389¢
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
annotationsª *
 
î2ë
D__inference_dense_14_layer_call_and_return_conditional_losses_166399¢
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
annotationsª *
 
:  (2total
:  (2count
.
y0
z1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
:  (2total
:  (2count
.
}0
~1"
trackable_list_wrapper
-
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay

0
1
02
13
C4
D5
V6
W7
i8
j9
y10
z11
}12
~13
14
15"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
M
Á0
Â1
Ã2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
H
	grad_loss
	pred_loss
loss"
trackable_dict_wrapper
ËBÈ
$__inference_signature_wrapper_165900input_3"
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
annotationsª *
 
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
.
00
11"
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
.
C0
D1"
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
.
V0
W1"
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
.
i0
j1"
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
R

Ätotal

Åcount
Æ	variables
Ç	keras_api"
_tf_keras_metric
c

Ètotal

Écount
Ê
_fn_kwargs
Ë	variables
Ì	keras_api"
_tf_keras_metric
R

Ítotal

Îcount
Ï	variables
Ð	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Ä0
Å1"
trackable_list_wrapper
.
Æ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
È0
É1"
trackable_list_wrapper
.
Ë	variables"
_generic_user_object
:  (2total
:  (2count
0
Í0
Î1"
trackable_list_wrapper
.
Ï	variables"
_generic_user_object
/:-2#Adam/batch_normalization_10/gamma/m
.:,2"Adam/batch_normalization_10/beta/m
&:$$2Adam/dense_10/kernel/m
 :$2Adam/dense_10/bias/m
/:-$2#Adam/batch_normalization_11/gamma/m
.:,$2"Adam/batch_normalization_11/beta/m
&:$$$2Adam/dense_11/kernel/m
 :$2Adam/dense_11/bias/m
/:-$2#Adam/batch_normalization_12/gamma/m
.:,$2"Adam/batch_normalization_12/beta/m
&:$$$2Adam/dense_12/kernel/m
 :$2Adam/dense_12/bias/m
/:-$2#Adam/batch_normalization_13/gamma/m
.:,$2"Adam/batch_normalization_13/beta/m
&:$$$2Adam/dense_13/kernel/m
 :$2Adam/dense_13/bias/m
/:-$2#Adam/batch_normalization_14/gamma/m
.:,$2"Adam/batch_normalization_14/beta/m
&:$$2Adam/dense_14/kernel/m
 :2Adam/dense_14/bias/m
/:-2#Adam/batch_normalization_10/gamma/v
.:,2"Adam/batch_normalization_10/beta/v
&:$$2Adam/dense_10/kernel/v
 :$2Adam/dense_10/bias/v
/:-$2#Adam/batch_normalization_11/gamma/v
.:,$2"Adam/batch_normalization_11/beta/v
&:$$$2Adam/dense_11/kernel/v
 :$2Adam/dense_11/bias/v
/:-$2#Adam/batch_normalization_12/gamma/v
.:,$2"Adam/batch_normalization_12/beta/v
&:$$$2Adam/dense_12/kernel/v
 :$2Adam/dense_12/bias/v
/:-$2#Adam/batch_normalization_13/gamma/v
.:,$2"Adam/batch_normalization_13/beta/v
&:$$$2Adam/dense_13/kernel/v
 :$2Adam/dense_13/bias/v
/:-$2#Adam/batch_normalization_14/gamma/v
.:,$2"Adam/batch_normalization_14/beta/v
&:$$2Adam/dense_14/kernel/v
 :2Adam/dense_14/bias/v­
!__inference__wrapped_model_162611%&1.0/89DACBKLWTVU^_jgihqr0¢-
&¢#
!
input_3ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_14"
dense_14ÿÿÿÿÿÿÿÿÿ¸
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_165946b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_165980b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
7__inference_batch_normalization_10_layer_call_fn_165913U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
7__inference_batch_normalization_10_layer_call_fn_165926U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¸
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_166046b1.0/3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ¸
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_166080b01./3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 
7__inference_batch_normalization_11_layer_call_fn_166013U1.0/3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p 
ª "ÿÿÿÿÿÿÿÿÿ$
7__inference_batch_normalization_11_layer_call_fn_166026U01./3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p
ª "ÿÿÿÿÿÿÿÿÿ$¸
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_166146bDACB3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ¸
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_166180bCDAB3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 
7__inference_batch_normalization_12_layer_call_fn_166113UDACB3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p 
ª "ÿÿÿÿÿÿÿÿÿ$
7__inference_batch_normalization_12_layer_call_fn_166126UCDAB3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p
ª "ÿÿÿÿÿÿÿÿÿ$¸
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_166246bWTVU3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ¸
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_166280bVWTU3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 
7__inference_batch_normalization_13_layer_call_fn_166213UWTVU3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p 
ª "ÿÿÿÿÿÿÿÿÿ$
7__inference_batch_normalization_13_layer_call_fn_166226UVWTU3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p
ª "ÿÿÿÿÿÿÿÿÿ$¸
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_166346bjgih3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ¸
R__inference_batch_normalization_14_layer_call_and_return_conditional_losses_166380bijgh3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 
7__inference_batch_normalization_14_layer_call_fn_166313Ujgih3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p 
ª "ÿÿÿÿÿÿÿÿÿ$
7__inference_batch_normalization_14_layer_call_fn_166326Uijgh3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$
p
ª "ÿÿÿÿÿÿÿÿÿ$¤
D__inference_dense_10_layer_call_and_return_conditional_losses_166000\%&/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 |
)__inference_dense_10_layer_call_fn_165989O%&/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ$¤
D__inference_dense_11_layer_call_and_return_conditional_losses_166100\89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ$
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 |
)__inference_dense_11_layer_call_fn_166089O89/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ$
ª "ÿÿÿÿÿÿÿÿÿ$¤
D__inference_dense_12_layer_call_and_return_conditional_losses_166200\KL/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ$
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 |
)__inference_dense_12_layer_call_fn_166189OKL/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ$
ª "ÿÿÿÿÿÿÿÿÿ$¤
D__inference_dense_13_layer_call_and_return_conditional_losses_166300\^_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ$
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 |
)__inference_dense_13_layer_call_fn_166289O^_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ$
ª "ÿÿÿÿÿÿÿÿÿ$¤
D__inference_dense_14_layer_call_and_return_conditional_losses_166399\qr/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ$
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_14_layer_call_fn_166389Oqr/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ$
ª "ÿÿÿÿÿÿÿÿÿÔ
N__inference_differential_model_layer_call_and_return_conditional_losses_163614%&1.0/89DACBKLWTVU^_jgihqr8¢5
.¢+
!
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ô
N__inference_differential_model_layer_call_and_return_conditional_losses_163688%&01./89CDABKLVWTU^_ijghqr8¢5
.¢+
!
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ó
N__inference_differential_model_layer_call_and_return_conditional_losses_163940%&1.0/89DACBKLWTVU^_jgihqr7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ó
N__inference_differential_model_layer_call_and_return_conditional_losses_164128%&01./89CDABKLVWTU^_ijghqr7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 «
3__inference_differential_model_layer_call_fn_163221t%&1.0/89DACBKLWTVU^_jgihqr8¢5
.¢+
!
input_3ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ«
3__inference_differential_model_layer_call_fn_163540t%&01./89CDABKLVWTU^_ijghqr8¢5
.¢+
!
input_3ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿª
3__inference_differential_model_layer_call_fn_163757s%&1.0/89DACBKLWTVU^_jgihqr7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿª
3__inference_differential_model_layer_call_fn_163822s%&01./89CDABKLVWTU^_ijghqr7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÌ
#__inference_internal_grad_fn_166699¤â	¢Þ	
Ö	¢Ò	

 

result_grads_0

result_grads_1

result_grads_2$

result_grads_3$

result_grads_4$

result_grads_5$

result_grads_6$$

result_grads_7$

result_grads_8$

result_grads_9$
 
result_grads_10$$

result_grads_11$

result_grads_12$

result_grads_13$
 
result_grads_14$$

result_grads_15$

result_grads_16$

result_grads_17$
 
result_grads_18$

result_grads_19

result_grads_20

result_grads_21
 
result_grads_22$

result_grads_23$

result_grads_24$

result_grads_25$
 
result_grads_26$$

result_grads_27$

result_grads_28$

result_grads_29$
 
result_grads_30$$

result_grads_31$

result_grads_32$

result_grads_33$
 
result_grads_34$$

result_grads_35$

result_grads_36$

result_grads_37$
 
result_grads_38$

result_grads_39
ª "¼¸

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

20

21

22$

23$

24$

25$

26$$

27$

28$

29$

30$$

31$

32$

33$

34$$

35$

36$

37$

38$

39»
$__inference_signature_wrapper_165900%&1.0/89DACBKLWTVU^_jgihqr;¢8
¢ 
1ª.
,
input_3!
input_3ÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_14"
dense_14ÿÿÿÿÿÿÿÿÿà
__inference_test_step_164536¿2%&1.0/89DACBKLWTVU^_jgihqrÄÅÈÉÍÎyz}~}¢z
s¢p
n¢k
 
data/0ÿÿÿÿÿÿÿÿÿ
G¢D

data/1/0ÿÿÿÿÿÿÿÿÿ
"
data/1/1ÿÿÿÿÿÿÿÿÿ
ª "ª

MAE	
MAE 

RMSE

RMSE 

	grad_loss
	grad_loss 

loss

loss 

	pred_loss
	pred_loss ¸
__inference_train_step_165833%&1.0/89DACBKLWTVU^_jgihqrÄÅÑåÒæÓçÔèÕéÖê×ëØìÙíÚîÛïÜðÝñÞòßóàôáõâöã÷äøÈÉÍÎyz}~}¢z
s¢p
n¢k
 
data/0ÿÿÿÿÿÿÿÿÿ
G¢D

data/1/0ÿÿÿÿÿÿÿÿÿ
"
data/1/1ÿÿÿÿÿÿÿÿÿ
ª "ª

MAE	
MAE 

RMSE

RMSE 

	grad_loss
	grad_loss 

loss

loss 

	pred_loss
	pred_loss 