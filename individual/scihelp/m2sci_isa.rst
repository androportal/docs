


isa (Matlab function)
=====================

Detect an object of a given type



Matlab/Scilab equivalent
~~~~~~~~~~~~~~~~~~~~~~~~

There is no equivalent function for Matlab *isa* function in Scilab
but it can be replaced by equivalent syntaxes as shown is examples.
****
*Equivalence table*

Matlab

Scilab

a = isa(x,"logical")

a = type(x)==4;

b = isa(x,"char")

b = type(x)==10;

c = isa(x,"numeric")

c = or(type(x)==[1,5,8]);

d = isa(x,"int8")

d = typeof(x)=='int8';

e = isa(x,"uint8")

e = typeof(x)=='uint8';

f = isa(x,"int16")

f = typeof(x)=="int16";

g = isa(x,"uint16")

g = typeof(x)=="uint16";

h = isa(x,"int32")

h = typeof(x)=="int32";

k = isa(x,"uint32")

k = typeof(x)=="uint32";

l = isa(x,"single")

l = type(x)==1;

m = isa(x,"double")

m = type(x)==1;

n = isa(x,"cell")

n = typeof(x)=="ce";

o = isa(x,"struct")

o = typeof(x)=="st";

p = isa(x,"function_handle")

p = type(x)==13;

q = isa(x,"sparse")

q = type(x)==5;

r = isa(x,"lti")

r = typeof(x)=="state-space";



