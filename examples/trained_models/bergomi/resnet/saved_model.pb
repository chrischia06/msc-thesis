¼
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
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68©

batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_5/gamma

/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:*
dtype0

batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_5/beta

.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:*
dtype0

!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_5/moving_mean

5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:*
dtype0
¢
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_5/moving_variance

9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	ü*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:ü*
dtype0

batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*,
shared_namebatch_normalization_6/gamma

/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:ü*
dtype0

batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*+
shared_namebatch_normalization_6/beta

.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:ü*
dtype0

!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!batch_normalization_6/moving_mean

5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:ü*
dtype0
£
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*6
shared_name'%batch_normalization_6/moving_variance

9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:ü*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
üü*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:ü*
dtype0

batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*,
shared_namebatch_normalization_7/gamma

/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:ü*
dtype0

batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*+
shared_namebatch_normalization_7/beta

.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:ü*
dtype0

!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!batch_normalization_7/moving_mean

5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:ü*
dtype0
£
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*6
shared_name'%batch_normalization_7/moving_variance

9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:ü*
dtype0
z
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*
shared_namedense_7/kernel
s
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel* 
_output_shapes
:
üü*
dtype0
q
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*
shared_namedense_7/bias
j
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes	
:ü*
dtype0

batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*,
shared_namebatch_normalization_8/gamma

/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes	
:ü*
dtype0

batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*+
shared_namebatch_normalization_8/beta

.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes	
:ü*
dtype0

!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!batch_normalization_8/moving_mean

5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes	
:ü*
dtype0
£
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*6
shared_name'%batch_normalization_8/moving_variance

9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes	
:ü*
dtype0
z
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
üü*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:ü*
dtype0

batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*,
shared_namebatch_normalization_9/gamma

/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes	
:ü*
dtype0

batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*+
shared_namebatch_normalization_9/beta

.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes	
:ü*
dtype0

!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!batch_normalization_9/moving_mean

5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes	
:ü*
dtype0
£
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*6
shared_name'%batch_normalization_9/moving_variance

9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes	
:ü*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	ü*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
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

"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_5/gamma/m

6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes
:*
dtype0

!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_5/beta/m

5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	ü*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes	
:ü*
dtype0

"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*3
shared_name$"Adam/batch_normalization_6/gamma/m

6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes	
:ü*
dtype0

!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!Adam/batch_normalization_6/beta/m

5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes	
:ü*
dtype0

Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m* 
_output_shapes
:
üü*
dtype0

Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*$
shared_nameAdam/dense_6/bias/m
x
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes	
:ü*
dtype0

"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*3
shared_name$"Adam/batch_normalization_7/gamma/m

6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes	
:ü*
dtype0

!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!Adam/batch_normalization_7/beta/m

5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes	
:ü*
dtype0

Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m* 
_output_shapes
:
üü*
dtype0

Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*$
shared_nameAdam/dense_7/bias/m
x
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes	
:ü*
dtype0

"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*3
shared_name$"Adam/batch_normalization_8/gamma/m

6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes	
:ü*
dtype0

!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!Adam/batch_normalization_8/beta/m

5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes	
:ü*
dtype0

Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m* 
_output_shapes
:
üü*
dtype0

Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*$
shared_nameAdam/dense_8/bias/m
x
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes	
:ü*
dtype0

"Adam/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*3
shared_name$"Adam/batch_normalization_9/gamma/m

6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/m*
_output_shapes	
:ü*
dtype0

!Adam/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!Adam/batch_normalization_9/beta/m

5Adam/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/m*
_output_shapes	
:ü*
dtype0

Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	ü*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_5/gamma/v

6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes
:*
dtype0

!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_5/beta/v

5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	ü*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes	
:ü*
dtype0

"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*3
shared_name$"Adam/batch_normalization_6/gamma/v

6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes	
:ü*
dtype0

!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!Adam/batch_normalization_6/beta/v

5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes	
:ü*
dtype0

Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v* 
_output_shapes
:
üü*
dtype0

Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*$
shared_nameAdam/dense_6/bias/v
x
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes	
:ü*
dtype0

"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*3
shared_name$"Adam/batch_normalization_7/gamma/v

6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes	
:ü*
dtype0

!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!Adam/batch_normalization_7/beta/v

5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes	
:ü*
dtype0

Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v* 
_output_shapes
:
üü*
dtype0

Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*$
shared_nameAdam/dense_7/bias/v
x
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes	
:ü*
dtype0

"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*3
shared_name$"Adam/batch_normalization_8/gamma/v

6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes	
:ü*
dtype0

!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!Adam/batch_normalization_8/beta/v

5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes	
:ü*
dtype0

Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
üü*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v* 
_output_shapes
:
üü*
dtype0

Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*$
shared_nameAdam/dense_8/bias/v
x
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes	
:ü*
dtype0

"Adam/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*3
shared_name$"Adam/batch_normalization_9/gamma/v

6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/v*
_output_shapes	
:ü*
dtype0

!Adam/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ü*2
shared_name#!Adam/batch_normalization_9/beta/v

5Adam/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/v*
_output_shapes	
:ü*
dtype0

Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ü*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	ü*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ï
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueþBú Bò

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
Õ
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
¦

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
Õ
+axis
	,gamma
-beta
.moving_mean
/moving_variance
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses*
¦

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*

>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses* 
Õ
Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
¦

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*

W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 
Õ
]axis
	^gamma
_beta
`moving_mean
amoving_variance
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses*
¦

hkernel
ibias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses*

p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
Ö
vaxis
	wgamma
xbeta
ymoving_mean
zmoving_variance
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses*
®
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
É
	iter
beta_1
beta_2

decaymämå#mæ$mç,mè-mé6mê7mëEmìFmíOmîPmï^mð_mñhmòimówmôxmõ	mö	m÷vøvù#vú$vû,vü-vý6vþ7vÿEvFvOvPv^v_vhvivwvxv	v	v*
ì
0
1
2
3
#4
$5
,6
-7
.8
/9
610
711
E12
F13
G14
H15
O16
P17
^18
_19
`20
a21
h22
i23
w24
x25
y26
z27
28
29*

0
1
#2
$3
,4
-5
66
77
E8
F9
O10
P11
^12
_13
h14
i15
w16
x17
18
19*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
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

serving_default* 
* 
jd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
0
1
2
3*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
,0
-1
.2
/3*

,0
-1*
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

60
71*

60
71*
* 

¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
* 
* 
* 

§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
E0
F1
G2
H3*

E0
F1*
* 

¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
^0
_1
`2
a3*

^0
_1*
* 

»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

h0
i1*

h0
i1*
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
w0
x1
y2
z3*

w0
x1*
* 

Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
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
J
0
1
.2
/3
G4
H5
`6
a7
y8
z9*
j
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
10
11
12
13*

Ô0
Õ1
Ö2*
* 
* 
* 

0
1*
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
.0
/1*
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

G0
H1*
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

`0
a1*
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

y0
z1*
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

×total

Øcount
Ù	variables
Ú	keras_api*
M

Ûtotal

Ücount
Ý
_fn_kwargs
Þ	variables
ß	keras_api*
<

àtotal

ácount
â	variables
ã	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

×0
Ø1*

Ù	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Û0
Ü1*

Þ	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

à0
á1*

â	variables*

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_5/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_6/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_7/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_9/gamma/mQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_9/beta/mPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_5/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_6/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_7/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_9/gamma/vQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_9/beta/vPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
serving_default_input_2Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betadense_5/kerneldense_5/bias%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betadense_6/kerneldense_6/bias%batch_normalization_7/moving_variancebatch_normalization_7/gamma!batch_normalization_7/moving_meanbatch_normalization_7/betadense_7/kerneldense_7/bias%batch_normalization_8/moving_variancebatch_normalization_8/gamma!batch_normalization_8/moving_meanbatch_normalization_8/betadense_8/kerneldense_8/bias%batch_normalization_9/moving_variancebatch_normalization_9/gamma!batch_normalization_9/moving_meanbatch_normalization_9/betadense_9/kerneldense_9/bias**
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
GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_95127
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
°
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_5/beta/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_9/beta/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_5/beta/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_9/beta/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpConst*]
TinV
T2R	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_95925
ë
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variancedense_5/kerneldense_5/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_variancedense_6/kerneldense_6/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variancedense_7/kerneldense_7/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_8/kerneldense_8/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_variancedense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotalcounttotal_1count_1total_2count_2"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/dense_5/kernel/mAdam/dense_5/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/mAdam/dense_6/kernel/mAdam/dense_6/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/mAdam/dense_7/kernel/mAdam/dense_7/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/dense_8/kernel/mAdam/dense_8/bias/m"Adam/batch_normalization_9/gamma/m!Adam/batch_normalization_9/beta/mAdam/dense_9/kernel/mAdam/dense_9/bias/m"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/dense_5/kernel/vAdam/dense_5/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/vAdam/dense_6/kernel/vAdam/dense_6/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/vAdam/dense_7/kernel/vAdam/dense_7/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/dense_8/kernel/vAdam/dense_8/bias/v"Adam/batch_normalization_9/gamma/v!Adam/batch_normalization_9/beta/vAdam/dense_9/kernel/vAdam/dense_9/bias/v*\
TinU
S2Q*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_96175Û¬
±

ö
B__inference_dense_8_layer_call_and_return_conditional_losses_94014

inputs2
matmul_readvariableop_resource:
üü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüY
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüf
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ß
³
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93753

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ï¿
æ
 __inference__wrapped_model_93483
input_2M
?model_1_batch_normalization_5_batchnorm_readvariableop_resource:Q
Cmodel_1_batch_normalization_5_batchnorm_mul_readvariableop_resource:O
Amodel_1_batch_normalization_5_batchnorm_readvariableop_1_resource:O
Amodel_1_batch_normalization_5_batchnorm_readvariableop_2_resource:A
.model_1_dense_5_matmul_readvariableop_resource:	ü>
/model_1_dense_5_biasadd_readvariableop_resource:	üN
?model_1_batch_normalization_6_batchnorm_readvariableop_resource:	üR
Cmodel_1_batch_normalization_6_batchnorm_mul_readvariableop_resource:	üP
Amodel_1_batch_normalization_6_batchnorm_readvariableop_1_resource:	üP
Amodel_1_batch_normalization_6_batchnorm_readvariableop_2_resource:	üB
.model_1_dense_6_matmul_readvariableop_resource:
üü>
/model_1_dense_6_biasadd_readvariableop_resource:	üN
?model_1_batch_normalization_7_batchnorm_readvariableop_resource:	üR
Cmodel_1_batch_normalization_7_batchnorm_mul_readvariableop_resource:	üP
Amodel_1_batch_normalization_7_batchnorm_readvariableop_1_resource:	üP
Amodel_1_batch_normalization_7_batchnorm_readvariableop_2_resource:	üB
.model_1_dense_7_matmul_readvariableop_resource:
üü>
/model_1_dense_7_biasadd_readvariableop_resource:	üN
?model_1_batch_normalization_8_batchnorm_readvariableop_resource:	üR
Cmodel_1_batch_normalization_8_batchnorm_mul_readvariableop_resource:	üP
Amodel_1_batch_normalization_8_batchnorm_readvariableop_1_resource:	üP
Amodel_1_batch_normalization_8_batchnorm_readvariableop_2_resource:	üB
.model_1_dense_8_matmul_readvariableop_resource:
üü>
/model_1_dense_8_biasadd_readvariableop_resource:	üN
?model_1_batch_normalization_9_batchnorm_readvariableop_resource:	üR
Cmodel_1_batch_normalization_9_batchnorm_mul_readvariableop_resource:	üP
Amodel_1_batch_normalization_9_batchnorm_readvariableop_1_resource:	üP
Amodel_1_batch_normalization_9_batchnorm_readvariableop_2_resource:	üA
.model_1_dense_9_matmul_readvariableop_resource:	ü=
/model_1_dense_9_biasadd_readvariableop_resource:
identity¢6model_1/batch_normalization_5/batchnorm/ReadVariableOp¢8model_1/batch_normalization_5/batchnorm/ReadVariableOp_1¢8model_1/batch_normalization_5/batchnorm/ReadVariableOp_2¢:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp¢6model_1/batch_normalization_6/batchnorm/ReadVariableOp¢8model_1/batch_normalization_6/batchnorm/ReadVariableOp_1¢8model_1/batch_normalization_6/batchnorm/ReadVariableOp_2¢:model_1/batch_normalization_6/batchnorm/mul/ReadVariableOp¢6model_1/batch_normalization_7/batchnorm/ReadVariableOp¢8model_1/batch_normalization_7/batchnorm/ReadVariableOp_1¢8model_1/batch_normalization_7/batchnorm/ReadVariableOp_2¢:model_1/batch_normalization_7/batchnorm/mul/ReadVariableOp¢6model_1/batch_normalization_8/batchnorm/ReadVariableOp¢8model_1/batch_normalization_8/batchnorm/ReadVariableOp_1¢8model_1/batch_normalization_8/batchnorm/ReadVariableOp_2¢:model_1/batch_normalization_8/batchnorm/mul/ReadVariableOp¢6model_1/batch_normalization_9/batchnorm/ReadVariableOp¢8model_1/batch_normalization_9/batchnorm/ReadVariableOp_1¢8model_1/batch_normalization_9/batchnorm/ReadVariableOp_2¢:model_1/batch_normalization_9/batchnorm/mul/ReadVariableOp¢&model_1/dense_5/BiasAdd/ReadVariableOp¢%model_1/dense_5/MatMul/ReadVariableOp¢&model_1/dense_6/BiasAdd/ReadVariableOp¢%model_1/dense_6/MatMul/ReadVariableOp¢&model_1/dense_7/BiasAdd/ReadVariableOp¢%model_1/dense_7/MatMul/ReadVariableOp¢&model_1/dense_8/BiasAdd/ReadVariableOp¢%model_1/dense_8/MatMul/ReadVariableOp¢&model_1/dense_9/BiasAdd/ReadVariableOp¢%model_1/dense_9/MatMul/ReadVariableOp²
6model_1/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0r
-model_1/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ñ
+model_1/batch_normalization_5/batchnorm/addAddV2>model_1/batch_normalization_5/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:
-model_1/batch_normalization_5/batchnorm/RsqrtRsqrt/model_1/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:º
:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Î
+model_1/batch_normalization_5/batchnorm/mulMul1model_1/batch_normalization_5/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 
-model_1/batch_normalization_5/batchnorm/mul_1Mulinput_2/model_1/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Ì
-model_1/batch_normalization_5/batchnorm/mul_2Mul@model_1/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:¶
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Ì
+model_1/batch_normalization_5/batchnorm/subSub@model_1/batch_normalization_5/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Ì
-model_1/batch_normalization_5/batchnorm/add_1AddV21model_1/batch_normalization_5/batchnorm/mul_1:z:0/model_1/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%model_1/dense_5/MatMul/ReadVariableOpReadVariableOp.model_1_dense_5_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype0µ
model_1/dense_5/MatMulMatMul1model_1/batch_normalization_5/batchnorm/add_1:z:0-model_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
&model_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0§
model_1/dense_5/BiasAddBiasAdd model_1/dense_5/MatMul:product:0.model_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüy
model_1/dense_5/SoftplusSoftplus model_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü³
6model_1/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0r
-model_1/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ò
+model_1/batch_normalization_6/batchnorm/addAddV2>model_1/batch_normalization_6/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü
-model_1/batch_normalization_6/batchnorm/RsqrtRsqrt/model_1/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:ü»
:model_1/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ï
+model_1/batch_normalization_6/batchnorm/mulMul1model_1/batch_normalization_6/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üÀ
-model_1/batch_normalization_6/batchnorm/mul_1Mul&model_1/dense_5/Softplus:activations:0/model_1/batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü·
8model_1/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0Í
-model_1/batch_normalization_6/batchnorm/mul_2Mul@model_1/batch_normalization_6/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü·
8model_1/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0Í
+model_1/batch_normalization_6/batchnorm/subSub@model_1/batch_normalization_6/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üÍ
-model_1/batch_normalization_6/batchnorm/add_1AddV21model_1/batch_normalization_6/batchnorm/mul_1:z:0/model_1/batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
%model_1/dense_6/MatMul/ReadVariableOpReadVariableOp.model_1_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0µ
model_1/dense_6/MatMulMatMul1model_1/batch_normalization_6/batchnorm/add_1:z:0-model_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
&model_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0§
model_1/dense_6/BiasAddBiasAdd model_1/dense_6/MatMul:product:0.model_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüy
model_1/dense_6/SoftplusSoftplus model_1/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü¦
model_1/add/addAddV2&model_1/dense_6/Softplus:activations:01model_1/batch_normalization_6/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü³
6model_1/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0r
-model_1/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ò
+model_1/batch_normalization_7/batchnorm/addAddV2>model_1/batch_normalization_7/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü
-model_1/batch_normalization_7/batchnorm/RsqrtRsqrt/model_1/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:ü»
:model_1/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ï
+model_1/batch_normalization_7/batchnorm/mulMul1model_1/batch_normalization_7/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü­
-model_1/batch_normalization_7/batchnorm/mul_1Mulmodel_1/add/add:z:0/model_1/batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü·
8model_1/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0Í
-model_1/batch_normalization_7/batchnorm/mul_2Mul@model_1/batch_normalization_7/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü·
8model_1/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0Í
+model_1/batch_normalization_7/batchnorm/subSub@model_1/batch_normalization_7/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üÍ
-model_1/batch_normalization_7/batchnorm/add_1AddV21model_1/batch_normalization_7/batchnorm/mul_1:z:0/model_1/batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
%model_1/dense_7/MatMul/ReadVariableOpReadVariableOp.model_1_dense_7_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0µ
model_1/dense_7/MatMulMatMul1model_1/batch_normalization_7/batchnorm/add_1:z:0-model_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
&model_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_7_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0§
model_1/dense_7/BiasAddBiasAdd model_1/dense_7/MatMul:product:0.model_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüy
model_1/dense_7/SoftplusSoftplus model_1/dense_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü¨
model_1/add_1/addAddV2&model_1/dense_7/Softplus:activations:01model_1/batch_normalization_7/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü³
6model_1/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0r
-model_1/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ò
+model_1/batch_normalization_8/batchnorm/addAddV2>model_1/batch_normalization_8/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü
-model_1/batch_normalization_8/batchnorm/RsqrtRsqrt/model_1/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:ü»
:model_1/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ï
+model_1/batch_normalization_8/batchnorm/mulMul1model_1/batch_normalization_8/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü¯
-model_1/batch_normalization_8/batchnorm/mul_1Mulmodel_1/add_1/add:z:0/model_1/batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü·
8model_1/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0Í
-model_1/batch_normalization_8/batchnorm/mul_2Mul@model_1/batch_normalization_8/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü·
8model_1/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0Í
+model_1/batch_normalization_8/batchnorm/subSub@model_1/batch_normalization_8/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üÍ
-model_1/batch_normalization_8/batchnorm/add_1AddV21model_1/batch_normalization_8/batchnorm/mul_1:z:0/model_1/batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
%model_1/dense_8/MatMul/ReadVariableOpReadVariableOp.model_1_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0µ
model_1/dense_8/MatMulMatMul1model_1/batch_normalization_8/batchnorm/add_1:z:0-model_1/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
&model_1/dense_8/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0§
model_1/dense_8/BiasAddBiasAdd model_1/dense_8/MatMul:product:0.model_1/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüy
model_1/dense_8/SoftplusSoftplus model_1/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü¨
model_1/add_2/addAddV2&model_1/dense_8/Softplus:activations:01model_1/batch_normalization_8/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü³
6model_1/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp?model_1_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0r
-model_1/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ò
+model_1/batch_normalization_9/batchnorm/addAddV2>model_1/batch_normalization_9/batchnorm/ReadVariableOp:value:06model_1/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü
-model_1/batch_normalization_9/batchnorm/RsqrtRsqrt/model_1/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:ü»
:model_1/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpCmodel_1_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ï
+model_1/batch_normalization_9/batchnorm/mulMul1model_1/batch_normalization_9/batchnorm/Rsqrt:y:0Bmodel_1/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü¯
-model_1/batch_normalization_9/batchnorm/mul_1Mulmodel_1/add_2/add:z:0/model_1/batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü·
8model_1/batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOpAmodel_1_batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0Í
-model_1/batch_normalization_9/batchnorm/mul_2Mul@model_1/batch_normalization_9/batchnorm/ReadVariableOp_1:value:0/model_1/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü·
8model_1/batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOpAmodel_1_batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0Í
+model_1/batch_normalization_9/batchnorm/subSub@model_1/batch_normalization_9/batchnorm/ReadVariableOp_2:value:01model_1/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üÍ
-model_1/batch_normalization_9/batchnorm/add_1AddV21model_1/batch_normalization_9/batchnorm/mul_1:z:0/model_1/batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
%model_1/dense_9/MatMul/ReadVariableOpReadVariableOp.model_1_dense_9_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype0´
model_1/dense_9/MatMulMatMul1model_1/batch_normalization_9/batchnorm/add_1:z:0-model_1/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&model_1/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_1/dense_9/BiasAddBiasAdd model_1/dense_9/MatMul:product:0.model_1/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
IdentityIdentity model_1/dense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ÷
NoOpNoOp7^model_1/batch_normalization_5/batchnorm/ReadVariableOp9^model_1/batch_normalization_5/batchnorm/ReadVariableOp_19^model_1/batch_normalization_5/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_6/batchnorm/ReadVariableOp9^model_1/batch_normalization_6/batchnorm/ReadVariableOp_19^model_1/batch_normalization_6/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_6/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_7/batchnorm/ReadVariableOp9^model_1/batch_normalization_7/batchnorm/ReadVariableOp_19^model_1/batch_normalization_7/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_7/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_8/batchnorm/ReadVariableOp9^model_1/batch_normalization_8/batchnorm/ReadVariableOp_19^model_1/batch_normalization_8/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_8/batchnorm/mul/ReadVariableOp7^model_1/batch_normalization_9/batchnorm/ReadVariableOp9^model_1/batch_normalization_9/batchnorm/ReadVariableOp_19^model_1/batch_normalization_9/batchnorm/ReadVariableOp_2;^model_1/batch_normalization_9/batchnorm/mul/ReadVariableOp'^model_1/dense_5/BiasAdd/ReadVariableOp&^model_1/dense_5/MatMul/ReadVariableOp'^model_1/dense_6/BiasAdd/ReadVariableOp&^model_1/dense_6/MatMul/ReadVariableOp'^model_1/dense_7/BiasAdd/ReadVariableOp&^model_1/dense_7/MatMul/ReadVariableOp'^model_1/dense_8/BiasAdd/ReadVariableOp&^model_1/dense_8/MatMul/ReadVariableOp'^model_1/dense_9/BiasAdd/ReadVariableOp&^model_1/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6model_1/batch_normalization_5/batchnorm/ReadVariableOp6model_1/batch_normalization_5/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_18model_1/batch_normalization_5/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_5/batchnorm/ReadVariableOp_28model_1/batch_normalization_5/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_5/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_6/batchnorm/ReadVariableOp6model_1/batch_normalization_6/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_6/batchnorm/ReadVariableOp_18model_1/batch_normalization_6/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_6/batchnorm/ReadVariableOp_28model_1/batch_normalization_6/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_6/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_6/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_7/batchnorm/ReadVariableOp6model_1/batch_normalization_7/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_7/batchnorm/ReadVariableOp_18model_1/batch_normalization_7/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_7/batchnorm/ReadVariableOp_28model_1/batch_normalization_7/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_7/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_7/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_8/batchnorm/ReadVariableOp6model_1/batch_normalization_8/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_8/batchnorm/ReadVariableOp_18model_1/batch_normalization_8/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_8/batchnorm/ReadVariableOp_28model_1/batch_normalization_8/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_8/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_8/batchnorm/mul/ReadVariableOp2p
6model_1/batch_normalization_9/batchnorm/ReadVariableOp6model_1/batch_normalization_9/batchnorm/ReadVariableOp2t
8model_1/batch_normalization_9/batchnorm/ReadVariableOp_18model_1/batch_normalization_9/batchnorm/ReadVariableOp_12t
8model_1/batch_normalization_9/batchnorm/ReadVariableOp_28model_1/batch_normalization_9/batchnorm/ReadVariableOp_22x
:model_1/batch_normalization_9/batchnorm/mul/ReadVariableOp:model_1/batch_normalization_9/batchnorm/mul/ReadVariableOp2P
&model_1/dense_5/BiasAdd/ReadVariableOp&model_1/dense_5/BiasAdd/ReadVariableOp2N
%model_1/dense_5/MatMul/ReadVariableOp%model_1/dense_5/MatMul/ReadVariableOp2P
&model_1/dense_6/BiasAdd/ReadVariableOp&model_1/dense_6/BiasAdd/ReadVariableOp2N
%model_1/dense_6/MatMul/ReadVariableOp%model_1/dense_6/MatMul/ReadVariableOp2P
&model_1/dense_7/BiasAdd/ReadVariableOp&model_1/dense_7/BiasAdd/ReadVariableOp2N
%model_1/dense_7/MatMul/ReadVariableOp%model_1/dense_7/MatMul/ReadVariableOp2P
&model_1/dense_8/BiasAdd/ReadVariableOp&model_1/dense_8/BiasAdd/ReadVariableOp2N
%model_1/dense_8/MatMul/ReadVariableOp%model_1/dense_8/MatMul/ReadVariableOp2P
&model_1/dense_9/BiasAdd/ReadVariableOp&model_1/dense_9/BiasAdd/ReadVariableOp2N
%model_1/dense_9/MatMul/ReadVariableOp%model_1/dense_9/MatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
¤
Ð
5__inference_batch_normalization_5_layer_call_fn_95153

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_93554o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
Ð
5__inference_batch_normalization_5_layer_call_fn_95140

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_93507o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
é
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_95207

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
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
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
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
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
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
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
³
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_95273

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
±

ö
B__inference_dense_6_layer_call_and_return_conditional_losses_93946

inputs2
matmul_readvariableop_resource:
üü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüY
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüf
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ß
³
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_93671

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs

O
#__inference_add_layer_call_fn_95333
inputs_0
inputs_1
identity·
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_93958a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/1
ÏG
ª
B__inference_model_1_layer_call_and_return_conditional_losses_94537
input_2)
batch_normalization_5_94463:)
batch_normalization_5_94465:)
batch_normalization_5_94467:)
batch_normalization_5_94469: 
dense_5_94472:	ü
dense_5_94474:	ü*
batch_normalization_6_94477:	ü*
batch_normalization_6_94479:	ü*
batch_normalization_6_94481:	ü*
batch_normalization_6_94483:	ü!
dense_6_94486:
üü
dense_6_94488:	ü*
batch_normalization_7_94492:	ü*
batch_normalization_7_94494:	ü*
batch_normalization_7_94496:	ü*
batch_normalization_7_94498:	ü!
dense_7_94501:
üü
dense_7_94503:	ü*
batch_normalization_8_94507:	ü*
batch_normalization_8_94509:	ü*
batch_normalization_8_94511:	ü*
batch_normalization_8_94513:	ü!
dense_8_94516:
üü
dense_8_94518:	ü*
batch_normalization_9_94522:	ü*
batch_normalization_9_94524:	ü*
batch_normalization_9_94526:	ü*
batch_normalization_9_94528:	ü 
dense_9_94531:	ü
dense_9_94533:
identity¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢-batch_normalization_7/StatefulPartitionedCall¢-batch_normalization_8/StatefulPartitionedCall¢-batch_normalization_9/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallà
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCallinput_2batch_normalization_5_94463batch_normalization_5_94465batch_normalization_5_94467batch_normalization_5_94469*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_93507
dense_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_5_94472dense_5_94474*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_93920
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0batch_normalization_6_94477batch_normalization_6_94479batch_normalization_6_94481batch_normalization_6_94483*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_93589
dense_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_6_94486dense_6_94488*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_93946
add/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:06batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_93958ö
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0batch_normalization_7_94492batch_normalization_7_94494batch_normalization_7_94496batch_normalization_7_94498*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_93671
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_7_94501dense_7_94503*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_93980
add_1/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:06batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_93992ø
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0batch_normalization_8_94507batch_normalization_8_94509batch_normalization_8_94511batch_normalization_8_94513*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93753
dense_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_8_94516dense_8_94518*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_94014
add_2/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:06batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_94026ø
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0batch_normalization_9_94522batch_normalization_9_94524batch_normalization_9_94526batch_normalization_9_94528*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_93835
dense_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_9_94531dense_9_94533*
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
GPU 2J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_94047w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
¬
Ô
5__inference_batch_normalization_8_layer_call_fn_95477

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93800p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
%
é
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_93554

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
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
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
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
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
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
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
³
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_95385

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
 
Q
%__inference_add_2_layer_call_fn_95557
inputs_0
inputs_1
identity¹
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_94026a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/1
®%
í
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95531

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿül
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:üy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:üw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Å

'__inference_dense_7_layer_call_fn_95428

inputs
unknown:
üü
	unknown_0:	ü
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_93980p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
¬
Ô
5__inference_batch_normalization_9_layer_call_fn_95589

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_93882p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ß
³
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_93835

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ú¨
¥
B__inference_model_1_layer_call_and_return_conditional_losses_95060

inputsK
=batch_normalization_5_assignmovingavg_readvariableop_resource:M
?batch_normalization_5_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_5_batchnorm_mul_readvariableop_resource:E
7batch_normalization_5_batchnorm_readvariableop_resource:9
&dense_5_matmul_readvariableop_resource:	ü6
'dense_5_biasadd_readvariableop_resource:	üL
=batch_normalization_6_assignmovingavg_readvariableop_resource:	üN
?batch_normalization_6_assignmovingavg_1_readvariableop_resource:	üJ
;batch_normalization_6_batchnorm_mul_readvariableop_resource:	üF
7batch_normalization_6_batchnorm_readvariableop_resource:	ü:
&dense_6_matmul_readvariableop_resource:
üü6
'dense_6_biasadd_readvariableop_resource:	üL
=batch_normalization_7_assignmovingavg_readvariableop_resource:	üN
?batch_normalization_7_assignmovingavg_1_readvariableop_resource:	üJ
;batch_normalization_7_batchnorm_mul_readvariableop_resource:	üF
7batch_normalization_7_batchnorm_readvariableop_resource:	ü:
&dense_7_matmul_readvariableop_resource:
üü6
'dense_7_biasadd_readvariableop_resource:	üL
=batch_normalization_8_assignmovingavg_readvariableop_resource:	üN
?batch_normalization_8_assignmovingavg_1_readvariableop_resource:	üJ
;batch_normalization_8_batchnorm_mul_readvariableop_resource:	üF
7batch_normalization_8_batchnorm_readvariableop_resource:	ü:
&dense_8_matmul_readvariableop_resource:
üü6
'dense_8_biasadd_readvariableop_resource:	üL
=batch_normalization_9_assignmovingavg_readvariableop_resource:	üN
?batch_normalization_9_assignmovingavg_1_readvariableop_resource:	üJ
;batch_normalization_9_batchnorm_mul_readvariableop_resource:	üF
7batch_normalization_9_batchnorm_readvariableop_resource:	ü9
&dense_9_matmul_readvariableop_resource:	ü5
'dense_9_biasadd_readvariableop_resource:
identity¢%batch_normalization_5/AssignMovingAvg¢4batch_normalization_5/AssignMovingAvg/ReadVariableOp¢'batch_normalization_5/AssignMovingAvg_1¢6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_5/batchnorm/ReadVariableOp¢2batch_normalization_5/batchnorm/mul/ReadVariableOp¢%batch_normalization_6/AssignMovingAvg¢4batch_normalization_6/AssignMovingAvg/ReadVariableOp¢'batch_normalization_6/AssignMovingAvg_1¢6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_6/batchnorm/ReadVariableOp¢2batch_normalization_6/batchnorm/mul/ReadVariableOp¢%batch_normalization_7/AssignMovingAvg¢4batch_normalization_7/AssignMovingAvg/ReadVariableOp¢'batch_normalization_7/AssignMovingAvg_1¢6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_7/batchnorm/ReadVariableOp¢2batch_normalization_7/batchnorm/mul/ReadVariableOp¢%batch_normalization_8/AssignMovingAvg¢4batch_normalization_8/AssignMovingAvg/ReadVariableOp¢'batch_normalization_8/AssignMovingAvg_1¢6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_8/batchnorm/ReadVariableOp¢2batch_normalization_8/batchnorm/mul/ReadVariableOp¢%batch_normalization_9/AssignMovingAvg¢4batch_normalization_9/AssignMovingAvg/ReadVariableOp¢'batch_normalization_9/AssignMovingAvg_1¢6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_9/batchnorm/ReadVariableOp¢2batch_normalization_9/batchnorm/mul/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢dense_9/MatMul/ReadVariableOp~
4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: «
"batch_normalization_5/moments/meanMeaninputs=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes

:³
/batch_normalization_5/moments/SquaredDifferenceSquaredDifferenceinputs3batch_normalization_5/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: à
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<®
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ã
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes
:º
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp=batch_normalization_5_assignmovingavg_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0É
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes
:À
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_5_assignmovingavg_1_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:³
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:ª
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¶
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
%batch_normalization_5/batchnorm/mul_1Mulinputs'batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:¢
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0²
#batch_normalization_5/batchnorm/subSub6batch_normalization_5/batchnorm/ReadVariableOp:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:´
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype0
dense_5/MatMulMatMul)batch_normalization_5/batchnorm/add_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
dense_5/SoftplusSoftplusdense_5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü~
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ä
"batch_normalization_6/moments/meanMeandense_5/Softplus:activations:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:	üÌ
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferencedense_5/Softplus:activations:03batch_normalization_6/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: á
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
  
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 p
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¯
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ä
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0*
T0*
_output_shapes	
:ü»
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ê
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:üÁ
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü}
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:ü«
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0·
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü¨
%batch_normalization_6/batchnorm/mul_1Muldense_5/Softplus:activations:0'batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü«
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü£
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0³
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üµ
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0
dense_6/MatMulMatMul)batch_normalization_6/batchnorm/add_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
dense_6/SoftplusSoftplusdense_6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
add/addAddV2dense_6/Softplus:activations:0)batch_normalization_6/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü~
4batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ±
"batch_normalization_7/moments/meanMeanadd/add:z:0=batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(
*batch_normalization_7/moments/StopGradientStopGradient+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes
:	ü¹
/batch_normalization_7/moments/SquaredDifferenceSquaredDifferenceadd/add:z:03batch_normalization_7/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
8batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: á
&batch_normalization_7/moments/varianceMean3batch_normalization_7/moments/SquaredDifference:z:0Abatch_normalization_7/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(
%batch_normalization_7/moments/SqueezeSqueeze+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
  
'batch_normalization_7/moments/Squeeze_1Squeeze/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 p
+batch_normalization_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¯
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ä
)batch_normalization_7/AssignMovingAvg/subSub<batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_7/moments/Squeeze:output:0*
T0*
_output_shapes	
:ü»
)batch_normalization_7/AssignMovingAvg/mulMul-batch_normalization_7/AssignMovingAvg/sub:z:04batch_normalization_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü
%batch_normalization_7/AssignMovingAvgAssignSubVariableOp=batch_normalization_7_assignmovingavg_readvariableop_resource-batch_normalization_7/AssignMovingAvg/mul:z:05^batch_normalization_7/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ê
+batch_normalization_7/AssignMovingAvg_1/subSub>batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_7/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:üÁ
+batch_normalization_7/AssignMovingAvg_1/mulMul/batch_normalization_7/AssignMovingAvg_1/sub:z:06batch_normalization_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü
'batch_normalization_7/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_7_assignmovingavg_1_readvariableop_resource/batch_normalization_7/AssignMovingAvg_1/mul:z:07^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_7/batchnorm/addAddV20batch_normalization_7/moments/Squeeze_1:output:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü}
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:ü«
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0·
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü
%batch_normalization_7/batchnorm/mul_1Muladd/add:z:0'batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü«
%batch_normalization_7/batchnorm/mul_2Mul.batch_normalization_7/moments/Squeeze:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü£
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0³
#batch_normalization_7/batchnorm/subSub6batch_normalization_7/batchnorm/ReadVariableOp:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üµ
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0
dense_7/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
dense_7/SoftplusSoftplusdense_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
	add_1/addAddV2dense_7/Softplus:activations:0)batch_normalization_7/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü~
4batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ³
"batch_normalization_8/moments/meanMeanadd_1/add:z:0=batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(
*batch_normalization_8/moments/StopGradientStopGradient+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes
:	ü»
/batch_normalization_8/moments/SquaredDifferenceSquaredDifferenceadd_1/add:z:03batch_normalization_8/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
8batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: á
&batch_normalization_8/moments/varianceMean3batch_normalization_8/moments/SquaredDifference:z:0Abatch_normalization_8/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(
%batch_normalization_8/moments/SqueezeSqueeze+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
  
'batch_normalization_8/moments/Squeeze_1Squeeze/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 p
+batch_normalization_8/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¯
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ä
)batch_normalization_8/AssignMovingAvg/subSub<batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_8/moments/Squeeze:output:0*
T0*
_output_shapes	
:ü»
)batch_normalization_8/AssignMovingAvg/mulMul-batch_normalization_8/AssignMovingAvg/sub:z:04batch_normalization_8/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü
%batch_normalization_8/AssignMovingAvgAssignSubVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource-batch_normalization_8/AssignMovingAvg/mul:z:05^batch_normalization_8/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_8/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ê
+batch_normalization_8/AssignMovingAvg_1/subSub>batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_8/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:üÁ
+batch_normalization_8/AssignMovingAvg_1/mulMul/batch_normalization_8/AssignMovingAvg_1/sub:z:06batch_normalization_8/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü
'batch_normalization_8/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource/batch_normalization_8/AssignMovingAvg_1/mul:z:07^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_8/batchnorm/addAddV20batch_normalization_8/moments/Squeeze_1:output:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü}
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:ü«
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0·
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü
%batch_normalization_8/batchnorm/mul_1Muladd_1/add:z:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü«
%batch_normalization_8/batchnorm/mul_2Mul.batch_normalization_8/moments/Squeeze:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü£
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0³
#batch_normalization_8/batchnorm/subSub6batch_normalization_8/batchnorm/ReadVariableOp:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üµ
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0
dense_8/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
dense_8/SoftplusSoftplusdense_8/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
	add_2/addAddV2dense_8/Softplus:activations:0)batch_normalization_8/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü~
4batch_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ³
"batch_normalization_9/moments/meanMeanadd_2/add:z:0=batch_normalization_9/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(
*batch_normalization_9/moments/StopGradientStopGradient+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes
:	ü»
/batch_normalization_9/moments/SquaredDifferenceSquaredDifferenceadd_2/add:z:03batch_normalization_9/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
8batch_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: á
&batch_normalization_9/moments/varianceMean3batch_normalization_9/moments/SquaredDifference:z:0Abatch_normalization_9/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(
%batch_normalization_9/moments/SqueezeSqueeze+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
  
'batch_normalization_9/moments/Squeeze_1Squeeze/batch_normalization_9/moments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 p
+batch_normalization_9/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¯
4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_9_assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ä
)batch_normalization_9/AssignMovingAvg/subSub<batch_normalization_9/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_9/moments/Squeeze:output:0*
T0*
_output_shapes	
:ü»
)batch_normalization_9/AssignMovingAvg/mulMul-batch_normalization_9/AssignMovingAvg/sub:z:04batch_normalization_9/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü
%batch_normalization_9/AssignMovingAvgAssignSubVariableOp=batch_normalization_9_assignmovingavg_readvariableop_resource-batch_normalization_9/AssignMovingAvg/mul:z:05^batch_normalization_9/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_9/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_9_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0Ê
+batch_normalization_9/AssignMovingAvg_1/subSub>batch_normalization_9/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_9/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:üÁ
+batch_normalization_9/AssignMovingAvg_1/mulMul/batch_normalization_9/AssignMovingAvg_1/sub:z:06batch_normalization_9/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü
'batch_normalization_9/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_9_assignmovingavg_1_readvariableop_resource/batch_normalization_9/AssignMovingAvg_1/mul:z:07^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_9/batchnorm/addAddV20batch_normalization_9/moments/Squeeze_1:output:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü}
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:ü«
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0·
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü
%batch_normalization_9/batchnorm/mul_1Muladd_2/add:z:0'batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü«
%batch_normalization_9/batchnorm/mul_2Mul.batch_normalization_9/moments/Squeeze:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü£
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0³
#batch_normalization_9/batchnorm/subSub6batch_normalization_9/batchnorm/ReadVariableOp:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üµ
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype0
dense_9/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
NoOpNoOp&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp3^batch_normalization_5/batchnorm/mul/ReadVariableOp&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp3^batch_normalization_7/batchnorm/mul/ReadVariableOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp&^batch_normalization_9/AssignMovingAvg5^batch_normalization_9/AssignMovingAvg/ReadVariableOp(^batch_normalization_9/AssignMovingAvg_17^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2N
%batch_normalization_7/AssignMovingAvg%batch_normalization_7/AssignMovingAvg2l
4batch_normalization_7/AssignMovingAvg/ReadVariableOp4batch_normalization_7/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_1'batch_normalization_7/AssignMovingAvg_12p
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2N
%batch_normalization_8/AssignMovingAvg%batch_normalization_8/AssignMovingAvg2l
4batch_normalization_8/AssignMovingAvg/ReadVariableOp4batch_normalization_8/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_8/AssignMovingAvg_1'batch_normalization_8/AssignMovingAvg_12p
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2N
%batch_normalization_9/AssignMovingAvg%batch_normalization_9/AssignMovingAvg2l
4batch_normalization_9/AssignMovingAvg/ReadVariableOp4batch_normalization_9/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_9/AssignMovingAvg_1'batch_normalization_9/AssignMovingAvg_12p
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
Ô
5__inference_batch_normalization_6_layer_call_fn_95253

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_93636p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
¹©
§
B__inference_model_1_layer_call_and_return_conditional_losses_94869

inputsE
7batch_normalization_5_batchnorm_readvariableop_resource:I
;batch_normalization_5_batchnorm_mul_readvariableop_resource:G
9batch_normalization_5_batchnorm_readvariableop_1_resource:G
9batch_normalization_5_batchnorm_readvariableop_2_resource:9
&dense_5_matmul_readvariableop_resource:	ü6
'dense_5_biasadd_readvariableop_resource:	üF
7batch_normalization_6_batchnorm_readvariableop_resource:	üJ
;batch_normalization_6_batchnorm_mul_readvariableop_resource:	üH
9batch_normalization_6_batchnorm_readvariableop_1_resource:	üH
9batch_normalization_6_batchnorm_readvariableop_2_resource:	ü:
&dense_6_matmul_readvariableop_resource:
üü6
'dense_6_biasadd_readvariableop_resource:	üF
7batch_normalization_7_batchnorm_readvariableop_resource:	üJ
;batch_normalization_7_batchnorm_mul_readvariableop_resource:	üH
9batch_normalization_7_batchnorm_readvariableop_1_resource:	üH
9batch_normalization_7_batchnorm_readvariableop_2_resource:	ü:
&dense_7_matmul_readvariableop_resource:
üü6
'dense_7_biasadd_readvariableop_resource:	üF
7batch_normalization_8_batchnorm_readvariableop_resource:	üJ
;batch_normalization_8_batchnorm_mul_readvariableop_resource:	üH
9batch_normalization_8_batchnorm_readvariableop_1_resource:	üH
9batch_normalization_8_batchnorm_readvariableop_2_resource:	ü:
&dense_8_matmul_readvariableop_resource:
üü6
'dense_8_biasadd_readvariableop_resource:	üF
7batch_normalization_9_batchnorm_readvariableop_resource:	üJ
;batch_normalization_9_batchnorm_mul_readvariableop_resource:	üH
9batch_normalization_9_batchnorm_readvariableop_1_resource:	üH
9batch_normalization_9_batchnorm_readvariableop_2_resource:	ü9
&dense_9_matmul_readvariableop_resource:	ü5
'dense_9_biasadd_readvariableop_resource:
identity¢.batch_normalization_5/batchnorm/ReadVariableOp¢0batch_normalization_5/batchnorm/ReadVariableOp_1¢0batch_normalization_5/batchnorm/ReadVariableOp_2¢2batch_normalization_5/batchnorm/mul/ReadVariableOp¢.batch_normalization_6/batchnorm/ReadVariableOp¢0batch_normalization_6/batchnorm/ReadVariableOp_1¢0batch_normalization_6/batchnorm/ReadVariableOp_2¢2batch_normalization_6/batchnorm/mul/ReadVariableOp¢.batch_normalization_7/batchnorm/ReadVariableOp¢0batch_normalization_7/batchnorm/ReadVariableOp_1¢0batch_normalization_7/batchnorm/ReadVariableOp_2¢2batch_normalization_7/batchnorm/mul/ReadVariableOp¢.batch_normalization_8/batchnorm/ReadVariableOp¢0batch_normalization_8/batchnorm/ReadVariableOp_1¢0batch_normalization_8/batchnorm/ReadVariableOp_2¢2batch_normalization_8/batchnorm/mul/ReadVariableOp¢.batch_normalization_9/batchnorm/ReadVariableOp¢0batch_normalization_9/batchnorm/ReadVariableOp_1¢0batch_normalization_9/batchnorm/ReadVariableOp_2¢2batch_normalization_9/batchnorm/mul/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢dense_6/BiasAdd/ReadVariableOp¢dense_6/MatMul/ReadVariableOp¢dense_7/BiasAdd/ReadVariableOp¢dense_7/MatMul/ReadVariableOp¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢dense_9/MatMul/ReadVariableOp¢
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:ª
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¶
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
%batch_normalization_5/batchnorm/mul_1Mulinputs'batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0´
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:¦
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0´
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:´
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype0
dense_5/MatMulMatMul)batch_normalization_5/batchnorm/add_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
dense_5/SoftplusSoftplusdense_5/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü£
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü}
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:ü«
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0·
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü¨
%batch_normalization_6/batchnorm/mul_1Muldense_5/Softplus:activations:0'batch_normalization_6/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü§
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0µ
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü§
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0µ
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üµ
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0
dense_6/MatMulMatMul)batch_normalization_6/batchnorm/add_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
dense_6/SoftplusSoftplusdense_6/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
add/addAddV2dense_6/Softplus:activations:0)batch_normalization_6/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü£
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
#batch_normalization_7/batchnorm/addAddV26batch_normalization_7/batchnorm/ReadVariableOp:value:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü}
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:ü«
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0·
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü
%batch_normalization_7/batchnorm/mul_1Muladd/add:z:0'batch_normalization_7/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü§
0batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0µ
%batch_normalization_7/batchnorm/mul_2Mul8batch_normalization_7/batchnorm/ReadVariableOp_1:value:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü§
0batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0µ
#batch_normalization_7/batchnorm/subSub8batch_normalization_7/batchnorm/ReadVariableOp_2:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üµ
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0
dense_7/MatMulMatMul)batch_normalization_7/batchnorm/add_1:z:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
dense_7/SoftplusSoftplusdense_7/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
	add_1/addAddV2dense_7/Softplus:activations:0)batch_normalization_7/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü£
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0j
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
#batch_normalization_8/batchnorm/addAddV26batch_normalization_8/batchnorm/ReadVariableOp:value:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü}
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:ü«
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0·
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü
%batch_normalization_8/batchnorm/mul_1Muladd_1/add:z:0'batch_normalization_8/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü§
0batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0µ
%batch_normalization_8/batchnorm/mul_2Mul8batch_normalization_8/batchnorm/ReadVariableOp_1:value:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü§
0batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0µ
#batch_normalization_8/batchnorm/subSub8batch_normalization_8/batchnorm/ReadVariableOp_2:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üµ
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0
dense_8/MatMulMatMul)batch_normalization_8/batchnorm/add_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
dense_8/SoftplusSoftplusdense_8/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
	add_2/addAddV2dense_8/Softplus:activations:0)batch_normalization_8/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü£
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0j
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
#batch_normalization_9/batchnorm/addAddV26batch_normalization_9/batchnorm/ReadVariableOp:value:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:ü}
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:ü«
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0·
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ü
%batch_normalization_9/batchnorm/mul_1Muladd_2/add:z:0'batch_normalization_9/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü§
0batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0µ
%batch_normalization_9/batchnorm/mul_2Mul8batch_normalization_9/batchnorm/ReadVariableOp_1:value:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:ü§
0batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0µ
#batch_normalization_9/batchnorm/subSub8batch_normalization_9/batchnorm/ReadVariableOp_2:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üµ
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	ü*
dtype0
dense_9/MatMulMatMul)batch_normalization_9/batchnorm/add_1:z:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2d
0batch_normalization_7/batchnorm/ReadVariableOp_10batch_normalization_7/batchnorm/ReadVariableOp_12d
0batch_normalization_7/batchnorm/ReadVariableOp_20batch_normalization_7/batchnorm/ReadVariableOp_22h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2d
0batch_normalization_8/batchnorm/ReadVariableOp_10batch_normalization_8/batchnorm/ReadVariableOp_12d
0batch_normalization_8/batchnorm/ReadVariableOp_20batch_normalization_8/batchnorm/ReadVariableOp_22h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2d
0batch_normalization_9/batchnorm/ReadVariableOp_10batch_normalization_9/batchnorm/ReadVariableOp_12d
0batch_normalization_9/batchnorm/ReadVariableOp_20batch_normalization_9/batchnorm/ReadVariableOp_22h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð

'__inference_model_1_layer_call_fn_94683

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:	ü
	unknown_9:
üü

unknown_10:	ü

unknown_11:	ü

unknown_12:	ü

unknown_13:	ü

unknown_14:	ü

unknown_15:
üü

unknown_16:	ü

unknown_17:	ü

unknown_18:	ü

unknown_19:	ü

unknown_20:	ü

unknown_21:
üü

unknown_22:	ü

unknown_23:	ü

unknown_24:	ü

unknown_25:	ü

unknown_26:	ü

unknown_27:	ü

unknown_28:
identity¢StatefulPartitionedCallÖ
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
GPU 2J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_94054o
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
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÂG
©
B__inference_model_1_layer_call_and_return_conditional_losses_94332

inputs)
batch_normalization_5_94258:)
batch_normalization_5_94260:)
batch_normalization_5_94262:)
batch_normalization_5_94264: 
dense_5_94267:	ü
dense_5_94269:	ü*
batch_normalization_6_94272:	ü*
batch_normalization_6_94274:	ü*
batch_normalization_6_94276:	ü*
batch_normalization_6_94278:	ü!
dense_6_94281:
üü
dense_6_94283:	ü*
batch_normalization_7_94287:	ü*
batch_normalization_7_94289:	ü*
batch_normalization_7_94291:	ü*
batch_normalization_7_94293:	ü!
dense_7_94296:
üü
dense_7_94298:	ü*
batch_normalization_8_94302:	ü*
batch_normalization_8_94304:	ü*
batch_normalization_8_94306:	ü*
batch_normalization_8_94308:	ü!
dense_8_94311:
üü
dense_8_94313:	ü*
batch_normalization_9_94317:	ü*
batch_normalization_9_94319:	ü*
batch_normalization_9_94321:	ü*
batch_normalization_9_94323:	ü 
dense_9_94326:	ü
dense_9_94328:
identity¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢-batch_normalization_7/StatefulPartitionedCall¢-batch_normalization_8/StatefulPartitionedCall¢-batch_normalization_9/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallÝ
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_5_94258batch_normalization_5_94260batch_normalization_5_94262batch_normalization_5_94264*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_93554
dense_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_5_94267dense_5_94269*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_93920
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0batch_normalization_6_94272batch_normalization_6_94274batch_normalization_6_94276batch_normalization_6_94278*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_93636
dense_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_6_94281dense_6_94283*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_93946
add/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:06batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_93958ô
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0batch_normalization_7_94287batch_normalization_7_94289batch_normalization_7_94291batch_normalization_7_94293*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_93718
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_7_94296dense_7_94298*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_93980
add_1/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:06batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_93992ö
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0batch_normalization_8_94302batch_normalization_8_94304batch_normalization_8_94306batch_normalization_8_94308*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93800
dense_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_8_94311dense_8_94313*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_94014
add_2/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:06batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_94026ö
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0batch_normalization_9_94317batch_normalization_9_94319batch_normalization_9_94321batch_normalization_9_94323*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_93882
dense_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_9_94326dense_9_94328*
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
GPU 2J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_94047w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±

ö
B__inference_dense_7_layer_call_and_return_conditional_losses_95439

inputs2
matmul_readvariableop_resource:
üü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüY
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüf
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
±

ö
B__inference_dense_6_layer_call_and_return_conditional_losses_95327

inputs2
matmul_readvariableop_resource:
üü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüY
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüf
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ß
³
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95497

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Á

'__inference_dense_9_layer_call_fn_95652

inputs
unknown:	ü
	unknown_0:
identity¢StatefulPartitionedCall×
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
GPU 2J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_94047o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ó

'__inference_model_1_layer_call_fn_94117
input_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:	ü
	unknown_9:
üü

unknown_10:	ü

unknown_11:	ü

unknown_12:	ü

unknown_13:	ü

unknown_14:	ü

unknown_15:
üü

unknown_16:	ü

unknown_17:	ü

unknown_18:	ü

unknown_19:	ü

unknown_20:	ü

unknown_21:
üü

unknown_22:	ü

unknown_23:	ü

unknown_24:	ü

unknown_25:	ü

unknown_26:	ü

unknown_27:	ü

unknown_28:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_94054o
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
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
»
j
@__inference_add_2_layer_call_and_return_conditional_losses_94026

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
É	
ô
B__inference_dense_9_layer_call_and_return_conditional_losses_95662

inputs1
matmul_readvariableop_resource:	ü-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ü*
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
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
¬
Ô
5__inference_batch_normalization_7_layer_call_fn_95365

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_93718p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
·Â
4
!__inference__traced_restore_96175
file_prefix:
,assignvariableop_batch_normalization_5_gamma:;
-assignvariableop_1_batch_normalization_5_beta:B
4assignvariableop_2_batch_normalization_5_moving_mean:F
8assignvariableop_3_batch_normalization_5_moving_variance:4
!assignvariableop_4_dense_5_kernel:	ü.
assignvariableop_5_dense_5_bias:	ü=
.assignvariableop_6_batch_normalization_6_gamma:	ü<
-assignvariableop_7_batch_normalization_6_beta:	üC
4assignvariableop_8_batch_normalization_6_moving_mean:	üG
8assignvariableop_9_batch_normalization_6_moving_variance:	ü6
"assignvariableop_10_dense_6_kernel:
üü/
 assignvariableop_11_dense_6_bias:	ü>
/assignvariableop_12_batch_normalization_7_gamma:	ü=
.assignvariableop_13_batch_normalization_7_beta:	üD
5assignvariableop_14_batch_normalization_7_moving_mean:	üH
9assignvariableop_15_batch_normalization_7_moving_variance:	ü6
"assignvariableop_16_dense_7_kernel:
üü/
 assignvariableop_17_dense_7_bias:	ü>
/assignvariableop_18_batch_normalization_8_gamma:	ü=
.assignvariableop_19_batch_normalization_8_beta:	üD
5assignvariableop_20_batch_normalization_8_moving_mean:	üH
9assignvariableop_21_batch_normalization_8_moving_variance:	ü6
"assignvariableop_22_dense_8_kernel:
üü/
 assignvariableop_23_dense_8_bias:	ü>
/assignvariableop_24_batch_normalization_9_gamma:	ü=
.assignvariableop_25_batch_normalization_9_beta:	üD
5assignvariableop_26_batch_normalization_9_moving_mean:	üH
9assignvariableop_27_batch_normalization_9_moving_variance:	ü5
"assignvariableop_28_dense_9_kernel:	ü.
 assignvariableop_29_dense_9_bias:'
assignvariableop_30_adam_iter:	 )
assignvariableop_31_adam_beta_1: )
assignvariableop_32_adam_beta_2: (
assignvariableop_33_adam_decay: #
assignvariableop_34_total: #
assignvariableop_35_count: %
assignvariableop_36_total_1: %
assignvariableop_37_count_1: %
assignvariableop_38_total_2: %
assignvariableop_39_count_2: D
6assignvariableop_40_adam_batch_normalization_5_gamma_m:C
5assignvariableop_41_adam_batch_normalization_5_beta_m:<
)assignvariableop_42_adam_dense_5_kernel_m:	ü6
'assignvariableop_43_adam_dense_5_bias_m:	üE
6assignvariableop_44_adam_batch_normalization_6_gamma_m:	üD
5assignvariableop_45_adam_batch_normalization_6_beta_m:	ü=
)assignvariableop_46_adam_dense_6_kernel_m:
üü6
'assignvariableop_47_adam_dense_6_bias_m:	üE
6assignvariableop_48_adam_batch_normalization_7_gamma_m:	üD
5assignvariableop_49_adam_batch_normalization_7_beta_m:	ü=
)assignvariableop_50_adam_dense_7_kernel_m:
üü6
'assignvariableop_51_adam_dense_7_bias_m:	üE
6assignvariableop_52_adam_batch_normalization_8_gamma_m:	üD
5assignvariableop_53_adam_batch_normalization_8_beta_m:	ü=
)assignvariableop_54_adam_dense_8_kernel_m:
üü6
'assignvariableop_55_adam_dense_8_bias_m:	üE
6assignvariableop_56_adam_batch_normalization_9_gamma_m:	üD
5assignvariableop_57_adam_batch_normalization_9_beta_m:	ü<
)assignvariableop_58_adam_dense_9_kernel_m:	ü5
'assignvariableop_59_adam_dense_9_bias_m:D
6assignvariableop_60_adam_batch_normalization_5_gamma_v:C
5assignvariableop_61_adam_batch_normalization_5_beta_v:<
)assignvariableop_62_adam_dense_5_kernel_v:	ü6
'assignvariableop_63_adam_dense_5_bias_v:	üE
6assignvariableop_64_adam_batch_normalization_6_gamma_v:	üD
5assignvariableop_65_adam_batch_normalization_6_beta_v:	ü=
)assignvariableop_66_adam_dense_6_kernel_v:
üü6
'assignvariableop_67_adam_dense_6_bias_v:	üE
6assignvariableop_68_adam_batch_normalization_7_gamma_v:	üD
5assignvariableop_69_adam_batch_normalization_7_beta_v:	ü=
)assignvariableop_70_adam_dense_7_kernel_v:
üü6
'assignvariableop_71_adam_dense_7_bias_v:	üE
6assignvariableop_72_adam_batch_normalization_8_gamma_v:	üD
5assignvariableop_73_adam_batch_normalization_8_beta_v:	ü=
)assignvariableop_74_adam_dense_8_kernel_v:
üü6
'assignvariableop_75_adam_dense_8_bias_v:	üE
6assignvariableop_76_adam_batch_normalization_9_gamma_v:	üD
5assignvariableop_77_adam_batch_normalization_9_beta_v:	ü<
)assignvariableop_78_adam_dense_9_kernel_v:	ü5
'assignvariableop_79_adam_dense_9_bias_v:
identity_81¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_9­,
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*Ó+
valueÉ+BÆ+QB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*·
value­BªQB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¶
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ú
_output_shapesÇ
Ä:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*_
dtypesU
S2Q	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_5_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_5_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_5_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_5_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp.assignvariableop_6_batch_normalization_6_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp-assignvariableop_7_batch_normalization_6_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_8AssignVariableOp4assignvariableop_8_batch_normalization_6_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_9AssignVariableOp8assignvariableop_9_batch_normalization_6_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_6_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_6_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_batch_normalization_7_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp.assignvariableop_13_batch_normalization_7_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_14AssignVariableOp5assignvariableop_14_batch_normalization_7_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_15AssignVariableOp9assignvariableop_15_batch_normalization_7_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_7_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_7_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_8_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp.assignvariableop_19_batch_normalization_8_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_20AssignVariableOp5assignvariableop_20_batch_normalization_8_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_21AssignVariableOp9assignvariableop_21_batch_normalization_8_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp"assignvariableop_22_dense_8_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_8_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_24AssignVariableOp/assignvariableop_24_batch_normalization_9_gammaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp.assignvariableop_25_batch_normalization_9_betaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_26AssignVariableOp5assignvariableop_26_batch_normalization_9_moving_meanIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_27AssignVariableOp9assignvariableop_27_batch_normalization_9_moving_varianceIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp"assignvariableop_28_dense_9_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp assignvariableop_29_dense_9_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_iterIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_beta_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_beta_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_totalIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOpassignvariableop_35_countIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOpassignvariableop_36_total_1Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOpassignvariableop_37_count_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_2Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_2Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_batch_normalization_5_gamma_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adam_batch_normalization_5_beta_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_5_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_dense_5_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_batch_normalization_6_gamma_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_batch_normalization_6_beta_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_dense_6_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp'assignvariableop_47_adam_dense_6_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_batch_normalization_7_gamma_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_batch_normalization_7_beta_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_7_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_7_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_batch_normalization_8_gamma_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_53AssignVariableOp5assignvariableop_53_adam_batch_normalization_8_beta_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_dense_8_kernel_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_dense_8_bias_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_9_gamma_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_batch_normalization_9_beta_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_9_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_9_bias_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_60AssignVariableOp6assignvariableop_60_adam_batch_normalization_5_gamma_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_61AssignVariableOp5assignvariableop_61_adam_batch_normalization_5_beta_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_dense_5_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp'assignvariableop_63_adam_dense_5_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_batch_normalization_6_gamma_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_65AssignVariableOp5assignvariableop_65_adam_batch_normalization_6_beta_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_dense_6_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_dense_6_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_batch_normalization_7_gamma_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_69AssignVariableOp5assignvariableop_69_adam_batch_normalization_7_beta_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_dense_7_kernel_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp'assignvariableop_71_adam_dense_7_bias_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_72AssignVariableOp6assignvariableop_72_adam_batch_normalization_8_gamma_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_73AssignVariableOp5assignvariableop_73_adam_batch_normalization_8_beta_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_dense_8_kernel_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp'assignvariableop_75_adam_dense_8_bias_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_76AssignVariableOp6assignvariableop_76_adam_batch_normalization_9_gamma_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_77AssignVariableOp5assignvariableop_77_adam_batch_normalization_9_beta_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_dense_9_kernel_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOp'assignvariableop_79_adam_dense_9_bias_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¯
Identity_80Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_81IdentityIdentity_80:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_81Identity_81:output:0*·
_input_shapes¥
¢: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Å

'__inference_dense_8_layer_call_fn_95540

inputs
unknown:
üü
	unknown_0:	ü
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_94014p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
®%
í
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_93636

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿül
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:üy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:üw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
é

'__inference_model_1_layer_call_fn_94460
input_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:	ü
	unknown_9:
üü

unknown_10:	ü

unknown_11:	ü

unknown_12:	ü

unknown_13:	ü

unknown_14:	ü

unknown_15:
üü

unknown_16:	ü

unknown_17:	ü

unknown_18:	ü

unknown_19:	ü

unknown_20:	ü

unknown_21:
üü

unknown_22:	ü

unknown_23:	ü

unknown_24:	ü

unknown_25:	ü

unknown_26:	ü

unknown_27:	ü

unknown_28:
identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_94332o
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
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
®
Ô
5__inference_batch_normalization_9_layer_call_fn_95576

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_93835p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
®
Ô
5__inference_batch_normalization_7_layer_call_fn_95352

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_93671p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
±

ö
B__inference_dense_7_layer_call_and_return_conditional_losses_93980

inputs2
matmul_readvariableop_resource:
üü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüY
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüf
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
®%
í
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93800

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿül
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:üy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:üw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
®%
í
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_95643

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿül
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:üy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:üw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
­

õ
B__inference_dense_5_layer_call_and_return_conditional_losses_93920

inputs1
matmul_readvariableop_resource:	ü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ü*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüY
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüf
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É	
ô
B__inference_dense_9_layer_call_and_return_conditional_losses_94047

inputs1
matmul_readvariableop_resource:	ü-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ü*
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
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
±

ö
B__inference_dense_8_layer_call_and_return_conditional_losses_95551

inputs2
matmul_readvariableop_resource:
üü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
üü*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüY
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüf
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
¹
h
>__inference_add_layer_call_and_return_conditional_losses_93958

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
ß
³
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_95609

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
®%
í
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_93718

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿül
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:üy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:üw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
®%
í
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_95307

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿül
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:üy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:üw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Í
¯
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_95173

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â

'__inference_dense_5_layer_call_fn_95216

inputs
unknown:	ü
	unknown_0:	ü
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_93920p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¡$
__inference__traced_save_95925
file_prefix:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop
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
: ª,
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*Ó+
valueÉ+BÆ+QB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*·
value­BªQB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ö"
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop<savev2_adam_batch_normalization_5_beta_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop<savev2_adam_batch_normalization_9_beta_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop<savev2_adam_batch_normalization_5_beta_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop<savev2_adam_batch_normalization_9_beta_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *_
dtypesU
S2Q	
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

identity_1Identity_1:output:0*Ñ
_input_shapes¿
¼: :::::	ü:ü:ü:ü:ü:ü:
üü:ü:ü:ü:ü:ü:
üü:ü:ü:ü:ü:ü:
üü:ü:ü:ü:ü:ü:	ü:: : : : : : : : : : :::	ü:ü:ü:ü:
üü:ü:ü:ü:
üü:ü:ü:ü:
üü:ü:ü:ü:	ü::::	ü:ü:ü:ü:
üü:ü:ü:ü:
üü:ü:ü:ü:
üü:ü:ü:ü:	ü:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!	

_output_shapes	
:ü:!


_output_shapes	
:ü:&"
 
_output_shapes
:
üü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:&"
 
_output_shapes
:
üü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:&"
 
_output_shapes
:
üü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:!

_output_shapes	
:ü:%!

_output_shapes
:	ü: 
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
: : )

_output_shapes
:: *

_output_shapes
::%+!

_output_shapes
:	ü:!,

_output_shapes	
:ü:!-

_output_shapes	
:ü:!.

_output_shapes	
:ü:&/"
 
_output_shapes
:
üü:!0

_output_shapes	
:ü:!1

_output_shapes	
:ü:!2

_output_shapes	
:ü:&3"
 
_output_shapes
:
üü:!4

_output_shapes	
:ü:!5

_output_shapes	
:ü:!6

_output_shapes	
:ü:&7"
 
_output_shapes
:
üü:!8

_output_shapes	
:ü:!9

_output_shapes	
:ü:!:

_output_shapes	
:ü:%;!

_output_shapes
:	ü: <

_output_shapes
:: =

_output_shapes
:: >

_output_shapes
::%?!

_output_shapes
:	ü:!@

_output_shapes	
:ü:!A

_output_shapes	
:ü:!B

_output_shapes	
:ü:&C"
 
_output_shapes
:
üü:!D

_output_shapes	
:ü:!E

_output_shapes	
:ü:!F

_output_shapes	
:ü:&G"
 
_output_shapes
:
üü:!H

_output_shapes	
:ü:!I

_output_shapes	
:ü:!J

_output_shapes	
:ü:&K"
 
_output_shapes
:
üü:!L

_output_shapes	
:ü:!M

_output_shapes	
:ü:!N

_output_shapes	
:ü:%O!

_output_shapes
:	ü: P

_output_shapes
::Q

_output_shapes
: 
Ã
l
@__inference_add_2_layer_call_and_return_conditional_losses_95563
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/1
Á
j
>__inference_add_layer_call_and_return_conditional_losses_95339
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/1
®%
í
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_93882

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿül
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:üy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:üw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
 
Q
%__inference_add_1_layer_call_fn_95445
inputs_0
inputs_1
identity¹
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_93992a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/1
ß
³
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_93589

inputs0
!batchnorm_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü2
#batchnorm_readvariableop_1_resource:	ü2
#batchnorm_readvariableop_2_resource:	ü
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:ü{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:ü*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
­

õ
B__inference_dense_5_layer_call_and_return_conditional_losses_95227

inputs1
matmul_readvariableop_resource:	ü.
biasadd_readvariableop_resource:	ü
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ü*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ü*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüY
SoftplusSoftplusBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüf
IdentityIdentitySoftplus:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í

#__inference_signature_wrapper_95127
input_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:	ü
	unknown_9:
üü

unknown_10:	ü

unknown_11:	ü

unknown_12:	ü

unknown_13:	ü

unknown_14:	ü

unknown_15:
üü

unknown_16:	ü

unknown_17:	ü

unknown_18:	ü

unknown_19:	ü

unknown_20:	ü

unknown_21:
üü

unknown_22:	ü

unknown_23:	ü

unknown_24:	ü

unknown_25:	ü

unknown_26:	ü

unknown_27:	ü

unknown_28:
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
GPU 2J 8 *)
f$R"
 __inference__wrapped_model_93483o
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
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
ÅG
ª
B__inference_model_1_layer_call_and_return_conditional_losses_94614
input_2)
batch_normalization_5_94540:)
batch_normalization_5_94542:)
batch_normalization_5_94544:)
batch_normalization_5_94546: 
dense_5_94549:	ü
dense_5_94551:	ü*
batch_normalization_6_94554:	ü*
batch_normalization_6_94556:	ü*
batch_normalization_6_94558:	ü*
batch_normalization_6_94560:	ü!
dense_6_94563:
üü
dense_6_94565:	ü*
batch_normalization_7_94569:	ü*
batch_normalization_7_94571:	ü*
batch_normalization_7_94573:	ü*
batch_normalization_7_94575:	ü!
dense_7_94578:
üü
dense_7_94580:	ü*
batch_normalization_8_94584:	ü*
batch_normalization_8_94586:	ü*
batch_normalization_8_94588:	ü*
batch_normalization_8_94590:	ü!
dense_8_94593:
üü
dense_8_94595:	ü*
batch_normalization_9_94599:	ü*
batch_normalization_9_94601:	ü*
batch_normalization_9_94603:	ü*
batch_normalization_9_94605:	ü 
dense_9_94608:	ü
dense_9_94610:
identity¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢-batch_normalization_7/StatefulPartitionedCall¢-batch_normalization_8/StatefulPartitionedCall¢-batch_normalization_9/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallÞ
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCallinput_2batch_normalization_5_94540batch_normalization_5_94542batch_normalization_5_94544batch_normalization_5_94546*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_93554
dense_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_5_94549dense_5_94551*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_93920
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0batch_normalization_6_94554batch_normalization_6_94556batch_normalization_6_94558batch_normalization_6_94560*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_93636
dense_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_6_94563dense_6_94565*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_93946
add/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:06batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_93958ô
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0batch_normalization_7_94569batch_normalization_7_94571batch_normalization_7_94573batch_normalization_7_94575*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_93718
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_7_94578dense_7_94580*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_93980
add_1/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:06batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_93992ö
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0batch_normalization_8_94584batch_normalization_8_94586batch_normalization_8_94588batch_normalization_8_94590*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93800
dense_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_8_94593dense_8_94595*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_94014
add_2/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:06batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_94026ö
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0batch_normalization_9_94599batch_normalization_9_94601batch_normalization_9_94603batch_normalization_9_94605*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_93882
dense_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_9_94608dense_9_94610*
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
GPU 2J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_94047w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
»
j
@__inference_add_1_layer_call_and_return_conditional_losses_93992

inputs
inputs_1
identityQ
addAddV2inputsinputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Å

'__inference_dense_6_layer_call_fn_95316

inputs
unknown:
üü
	unknown_0:	ü
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_93946p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
®%
í
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_95419

inputs6
'assignmovingavg_readvariableop_resource:	ü8
)assignmovingavg_1_readvariableop_resource:	ü4
%batchnorm_mul_readvariableop_resource:	ü0
!batchnorm_readvariableop_resource:	ü
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	ü
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿül
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	ü*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:ü*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:üy
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü¬
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
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:ü*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ü
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:ü´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:üQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:ü
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:ü*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:üd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:üw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:ü*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:üs
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
Ã
l
@__inference_add_1_layer_call_and_return_conditional_losses_95451
inputs_0
inputs_1
identityS
addAddV2inputs_0inputs_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿüP
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿü:ÿÿÿÿÿÿÿÿÿü:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
"
_user_specified_name
inputs/1
ÌG
©
B__inference_model_1_layer_call_and_return_conditional_losses_94054

inputs)
batch_normalization_5_93900:)
batch_normalization_5_93902:)
batch_normalization_5_93904:)
batch_normalization_5_93906: 
dense_5_93921:	ü
dense_5_93923:	ü*
batch_normalization_6_93926:	ü*
batch_normalization_6_93928:	ü*
batch_normalization_6_93930:	ü*
batch_normalization_6_93932:	ü!
dense_6_93947:
üü
dense_6_93949:	ü*
batch_normalization_7_93960:	ü*
batch_normalization_7_93962:	ü*
batch_normalization_7_93964:	ü*
batch_normalization_7_93966:	ü!
dense_7_93981:
üü
dense_7_93983:	ü*
batch_normalization_8_93994:	ü*
batch_normalization_8_93996:	ü*
batch_normalization_8_93998:	ü*
batch_normalization_8_94000:	ü!
dense_8_94015:
üü
dense_8_94017:	ü*
batch_normalization_9_94028:	ü*
batch_normalization_9_94030:	ü*
batch_normalization_9_94032:	ü*
batch_normalization_9_94034:	ü 
dense_9_94048:	ü
dense_9_94050:
identity¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢-batch_normalization_7/StatefulPartitionedCall¢-batch_normalization_8/StatefulPartitionedCall¢-batch_normalization_9/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢dense_6/StatefulPartitionedCall¢dense_7/StatefulPartitionedCall¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCallß
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_5_93900batch_normalization_5_93902batch_normalization_5_93904batch_normalization_5_93906*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_93507
dense_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0dense_5_93921dense_5_93923*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_93920
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0batch_normalization_6_93926batch_normalization_6_93928batch_normalization_6_93930batch_normalization_6_93932*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_93589
dense_6/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0dense_6_93947dense_6_93949*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_93946
add/PartitionedCallPartitionedCall(dense_6/StatefulPartitionedCall:output:06batch_normalization_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_93958ö
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0batch_normalization_7_93960batch_normalization_7_93962batch_normalization_7_93964batch_normalization_7_93966*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_93671
dense_7/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0dense_7_93981dense_7_93983*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_93980
add_1/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:06batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_93992ø
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0batch_normalization_8_93994batch_normalization_8_93996batch_normalization_8_93998batch_normalization_8_94000*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93753
dense_8/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0dense_8_94015dense_8_94017*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_94014
add_2/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:06batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_94026ø
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0batch_normalization_9_94028batch_normalization_9_94030batch_normalization_9_94032batch_normalization_9_94034*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_93835
dense_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0dense_9_94048dense_9_94050*
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
GPU 2J 8 *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_94047w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
NoOpNoOp.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
¯
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_93507

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ

'__inference_model_1_layer_call_fn_94748

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:	ü
	unknown_4:	ü
	unknown_5:	ü
	unknown_6:	ü
	unknown_7:	ü
	unknown_8:	ü
	unknown_9:
üü

unknown_10:	ü

unknown_11:	ü

unknown_12:	ü

unknown_13:	ü

unknown_14:	ü

unknown_15:
üü

unknown_16:	ü

unknown_17:	ü

unknown_18:	ü

unknown_19:	ü

unknown_20:	ü

unknown_21:
üü

unknown_22:	ü

unknown_23:	ü

unknown_24:	ü

unknown_25:	ü

unknown_26:	ü

unknown_27:	ü

unknown_28:
identity¢StatefulPartitionedCallÌ
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
GPU 2J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_94332o
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
O:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
Ô
5__inference_batch_normalization_6_layer_call_fn_95240

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_93589p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs
®
Ô
5__inference_batch_normalization_8_layer_call_fn_95464

inputs
unknown:	ü
	unknown_0:	ü
	unknown_1:	ü
	unknown_2:	ü
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_93753p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿü: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ª
serving_default
;
input_20
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿ;
dense_90
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:é
¡
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
ê
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
»

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
+axis
	,gamma
-beta
.moving_mean
/moving_variance
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
»

6kernel
7bias
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
Daxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
]axis
	^gamma
_beta
`moving_mean
amoving_variance
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
»

hkernel
ibias
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
ë
vaxis
	wgamma
xbeta
ymoving_mean
zmoving_variance
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ø
	iter
beta_1
beta_2

decaymämå#mæ$mç,mè-mé6mê7mëEmìFmíOmîPmï^mð_mñhmòimówmôxmõ	mö	m÷vøvù#vú$vû,vü-vý6vþ7vÿEvFvOvPv^v_vhvivwvxv	v	v"
	optimizer

0
1
2
3
#4
$5
,6
-7
.8
/9
610
711
E12
F13
G14
H15
O16
P17
^18
_19
`20
a21
h22
i23
w24
x25
y26
z27
28
29"
trackable_list_wrapper
¸
0
1
#2
$3
,4
-5
66
77
E8
F9
O10
P11
^12
_13
h14
i15
w16
x17
18
19"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ê2ç
'__inference_model_1_layer_call_fn_94117
'__inference_model_1_layer_call_fn_94683
'__inference_model_1_layer_call_fn_94748
'__inference_model_1_layer_call_fn_94460À
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
Ö2Ó
B__inference_model_1_layer_call_and_return_conditional_losses_94869
B__inference_model_1_layer_call_and_return_conditional_losses_95060
B__inference_model_1_layer_call_and_return_conditional_losses_94537
B__inference_model_1_layer_call_and_return_conditional_losses_94614À
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
ËBÈ
 __inference__wrapped_model_93483input_2"
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
-
serving_default"
signature_map
 "
trackable_list_wrapper
):'2batch_normalization_5/gamma
(:&2batch_normalization_5/beta
1:/ (2!batch_normalization_5/moving_mean
5:3 (2%batch_normalization_5/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
¨2¥
5__inference_batch_normalization_5_layer_call_fn_95140
5__inference_batch_normalization_5_layer_call_fn_95153´
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
Þ2Û
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_95173
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_95207´
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
!:	ü2dense_5/kernel
:ü2dense_5/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_5_layer_call_fn_95216¢
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
ì2é
B__inference_dense_5_layer_call_and_return_conditional_losses_95227¢
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
*:(ü2batch_normalization_6/gamma
):'ü2batch_normalization_6/beta
2:0ü (2!batch_normalization_6/moving_mean
6:4ü (2%batch_normalization_6/moving_variance
<
,0
-1
.2
/3"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
¨2¥
5__inference_batch_normalization_6_layer_call_fn_95240
5__inference_batch_normalization_6_layer_call_fn_95253´
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
Þ2Û
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_95273
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_95307´
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
": 
üü2dense_6/kernel
:ü2dense_6/bias
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¢non_trainable_variables
£layers
¤metrics
 ¥layer_regularization_losses
¦layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_6_layer_call_fn_95316¢
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
ì2é
B__inference_dense_6_layer_call_and_return_conditional_losses_95327¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
Í2Ê
#__inference_add_layer_call_fn_95333¢
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
è2å
>__inference_add_layer_call_and_return_conditional_losses_95339¢
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
*:(ü2batch_normalization_7/gamma
):'ü2batch_normalization_7/beta
2:0ü (2!batch_normalization_7/moving_mean
6:4ü (2%batch_normalization_7/moving_variance
<
E0
F1
G2
H3"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¬non_trainable_variables
­layers
®metrics
 ¯layer_regularization_losses
°layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
¨2¥
5__inference_batch_normalization_7_layer_call_fn_95352
5__inference_batch_normalization_7_layer_call_fn_95365´
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
Þ2Û
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_95385
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_95419´
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
": 
üü2dense_7/kernel
:ü2dense_7/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_7_layer_call_fn_95428¢
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
ì2é
B__inference_dense_7_layer_call_and_return_conditional_losses_95439¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¶non_trainable_variables
·layers
¸metrics
 ¹layer_regularization_losses
ºlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_add_1_layer_call_fn_95445¢
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
ê2ç
@__inference_add_1_layer_call_and_return_conditional_losses_95451¢
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
*:(ü2batch_normalization_8/gamma
):'ü2batch_normalization_8/beta
2:0ü (2!batch_normalization_8/moving_mean
6:4ü (2%batch_normalization_8/moving_variance
<
^0
_1
`2
a3"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
»non_trainable_variables
¼layers
½metrics
 ¾layer_regularization_losses
¿layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
¨2¥
5__inference_batch_normalization_8_layer_call_fn_95464
5__inference_batch_normalization_8_layer_call_fn_95477´
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
Þ2Û
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95497
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95531´
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
": 
üü2dense_8/kernel
:ü2dense_8/bias
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_8_layer_call_fn_95540¢
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
ì2é
B__inference_dense_8_layer_call_and_return_conditional_losses_95551¢
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ånon_trainable_variables
Ælayers
Çmetrics
 Èlayer_regularization_losses
Élayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_add_2_layer_call_fn_95557¢
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
ê2ç
@__inference_add_2_layer_call_and_return_conditional_losses_95563¢
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
*:(ü2batch_normalization_9/gamma
):'ü2batch_normalization_9/beta
2:0ü (2!batch_normalization_9/moving_mean
6:4ü (2%batch_normalization_9/moving_variance
<
w0
x1
y2
z3"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
´
Ênon_trainable_variables
Ëlayers
Ìmetrics
 Ílayer_regularization_losses
Îlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥
5__inference_batch_normalization_9_layer_call_fn_95576
5__inference_batch_normalization_9_layer_call_fn_95589´
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
Þ2Û
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_95609
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_95643´
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
!:	ü2dense_9/kernel
:2dense_9/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ïnon_trainable_variables
Ðlayers
Ñmetrics
 Òlayer_regularization_losses
Ólayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_9_layer_call_fn_95652¢
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
ì2é
B__inference_dense_9_layer_call_and_return_conditional_losses_95662¢
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
f
0
1
.2
/3
G4
H5
`6
a7
y8
z9"
trackable_list_wrapper

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
10
11
12
13"
trackable_list_wrapper
8
Ô0
Õ1
Ö2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÊBÇ
#__inference_signature_wrapper_95127input_2"
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
0
1"
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
.0
/1"
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
.
G0
H1"
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
.
`0
a1"
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
.
y0
z1"
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

×total

Øcount
Ù	variables
Ú	keras_api"
_tf_keras_metric
c

Ûtotal

Ücount
Ý
_fn_kwargs
Þ	variables
ß	keras_api"
_tf_keras_metric
R

àtotal

ácount
â	variables
ã	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
×0
Ø1"
trackable_list_wrapper
.
Ù	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Û0
Ü1"
trackable_list_wrapper
.
Þ	variables"
_generic_user_object
:  (2total
:  (2count
0
à0
á1"
trackable_list_wrapper
.
â	variables"
_generic_user_object
.:,2"Adam/batch_normalization_5/gamma/m
-:+2!Adam/batch_normalization_5/beta/m
&:$	ü2Adam/dense_5/kernel/m
 :ü2Adam/dense_5/bias/m
/:-ü2"Adam/batch_normalization_6/gamma/m
.:,ü2!Adam/batch_normalization_6/beta/m
':%
üü2Adam/dense_6/kernel/m
 :ü2Adam/dense_6/bias/m
/:-ü2"Adam/batch_normalization_7/gamma/m
.:,ü2!Adam/batch_normalization_7/beta/m
':%
üü2Adam/dense_7/kernel/m
 :ü2Adam/dense_7/bias/m
/:-ü2"Adam/batch_normalization_8/gamma/m
.:,ü2!Adam/batch_normalization_8/beta/m
':%
üü2Adam/dense_8/kernel/m
 :ü2Adam/dense_8/bias/m
/:-ü2"Adam/batch_normalization_9/gamma/m
.:,ü2!Adam/batch_normalization_9/beta/m
&:$	ü2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
.:,2"Adam/batch_normalization_5/gamma/v
-:+2!Adam/batch_normalization_5/beta/v
&:$	ü2Adam/dense_5/kernel/v
 :ü2Adam/dense_5/bias/v
/:-ü2"Adam/batch_normalization_6/gamma/v
.:,ü2!Adam/batch_normalization_6/beta/v
':%
üü2Adam/dense_6/kernel/v
 :ü2Adam/dense_6/bias/v
/:-ü2"Adam/batch_normalization_7/gamma/v
.:,ü2!Adam/batch_normalization_7/beta/v
':%
üü2Adam/dense_7/kernel/v
 :ü2Adam/dense_7/bias/v
/:-ü2"Adam/batch_normalization_8/gamma/v
.:,ü2!Adam/batch_normalization_8/beta/v
':%
üü2Adam/dense_8/kernel/v
 :ü2Adam/dense_8/bias/v
/:-ü2"Adam/batch_normalization_9/gamma/v
.:,ü2!Adam/batch_normalization_9/beta/v
&:$	ü2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v¬
 __inference__wrapped_model_93483 #$/,.-67HEGFOPa^`_hizwyx0¢-
&¢#
!
input_2ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_9!
dense_9ÿÿÿÿÿÿÿÿÿË
@__inference_add_1_layer_call_and_return_conditional_losses_95451\¢Y
R¢O
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿü
# 
inputs/1ÿÿÿÿÿÿÿÿÿü
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 ¢
%__inference_add_1_layer_call_fn_95445y\¢Y
R¢O
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿü
# 
inputs/1ÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿüË
@__inference_add_2_layer_call_and_return_conditional_losses_95563\¢Y
R¢O
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿü
# 
inputs/1ÿÿÿÿÿÿÿÿÿü
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 ¢
%__inference_add_2_layer_call_fn_95557y\¢Y
R¢O
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿü
# 
inputs/1ÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿüÉ
>__inference_add_layer_call_and_return_conditional_losses_95339\¢Y
R¢O
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿü
# 
inputs/1ÿÿÿÿÿÿÿÿÿü
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
  
#__inference_add_layer_call_fn_95333y\¢Y
R¢O
MJ
# 
inputs/0ÿÿÿÿÿÿÿÿÿü
# 
inputs/1ÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿü¶
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_95173b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_95207b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
5__inference_batch_normalization_5_layer_call_fn_95140U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
5__inference_batch_normalization_5_layer_call_fn_95153U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¸
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_95273d/,.-4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 ¸
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_95307d./,-4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 
5__inference_batch_normalization_6_layer_call_fn_95240W/,.-4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "ÿÿÿÿÿÿÿÿÿü
5__inference_batch_normalization_6_layer_call_fn_95253W./,-4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "ÿÿÿÿÿÿÿÿÿü¸
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_95385dHEGF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 ¸
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_95419dGHEF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 
5__inference_batch_normalization_7_layer_call_fn_95352WHEGF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "ÿÿÿÿÿÿÿÿÿü
5__inference_batch_normalization_7_layer_call_fn_95365WGHEF4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "ÿÿÿÿÿÿÿÿÿü¸
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95497da^`_4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 ¸
P__inference_batch_normalization_8_layer_call_and_return_conditional_losses_95531d`a^_4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 
5__inference_batch_normalization_8_layer_call_fn_95464Wa^`_4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "ÿÿÿÿÿÿÿÿÿü
5__inference_batch_normalization_8_layer_call_fn_95477W`a^_4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "ÿÿÿÿÿÿÿÿÿü¸
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_95609dzwyx4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 ¸
P__inference_batch_normalization_9_layer_call_and_return_conditional_losses_95643dyzwx4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 
5__inference_batch_normalization_9_layer_call_fn_95576Wzwyx4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p 
ª "ÿÿÿÿÿÿÿÿÿü
5__inference_batch_normalization_9_layer_call_fn_95589Wyzwx4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿü
p
ª "ÿÿÿÿÿÿÿÿÿü£
B__inference_dense_5_layer_call_and_return_conditional_losses_95227]#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 {
'__inference_dense_5_layer_call_fn_95216P#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿü¤
B__inference_dense_6_layer_call_and_return_conditional_losses_95327^670¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 |
'__inference_dense_6_layer_call_fn_95316Q670¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿü¤
B__inference_dense_7_layer_call_and_return_conditional_losses_95439^OP0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 |
'__inference_dense_7_layer_call_fn_95428QOP0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿü¤
B__inference_dense_8_layer_call_and_return_conditional_losses_95551^hi0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "&¢#

0ÿÿÿÿÿÿÿÿÿü
 |
'__inference_dense_8_layer_call_fn_95540Qhi0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿü¥
B__inference_dense_9_layer_call_and_return_conditional_losses_95662_0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
'__inference_dense_9_layer_call_fn_95652R0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿü
ª "ÿÿÿÿÿÿÿÿÿÊ
B__inference_model_1_layer_call_and_return_conditional_losses_94537 #$/,.-67HEGFOPa^`_hizwyx8¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ê
B__inference_model_1_layer_call_and_return_conditional_losses_94614 #$./,-67GHEFOP`a^_hiyzwx8¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 É
B__inference_model_1_layer_call_and_return_conditional_losses_94869 #$/,.-67HEGFOPa^`_hizwyx7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 É
B__inference_model_1_layer_call_and_return_conditional_losses_95060 #$./,-67GHEFOP`a^_hiyzwx7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¡
'__inference_model_1_layer_call_fn_94117v #$/,.-67HEGFOPa^`_hizwyx8¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¡
'__inference_model_1_layer_call_fn_94460v #$./,-67GHEFOP`a^_hiyzwx8¢5
.¢+
!
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
'__inference_model_1_layer_call_fn_94683u #$/,.-67HEGFOPa^`_hizwyx7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
'__inference_model_1_layer_call_fn_94748u #$./,-67GHEFOP`a^_hiyzwx7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿº
#__inference_signature_wrapper_95127 #$/,.-67HEGFOPa^`_hizwyx;¢8
¢ 
1ª.
,
input_2!
input_2ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_9!
dense_9ÿÿÿÿÿÿÿÿÿ