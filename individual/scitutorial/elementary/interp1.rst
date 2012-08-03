====
"interp1"
====

Scilab Function Last update : 31/03/2005
**interp1** - one_dimension interpolation function



Calling Sequence
~~~~~~~~~~~~~~~~

[yp]=interp1(x, y,xp [, method,[extrapolation]])




Parameters
~~~~~~~~~~


+ **xp** : reals scalar, vector or matrix (or hypermatrix)
+ **x** : reals vector
+ **method** : (optional) string defining the interpolation method
+ **extrapolation** : (optional) string, or real value defining the
  yp(j) components for xp(j) values outside [x1,xn] interval.
+ **yp** : vector, or matrix (or hypermatrix)




Description
~~~~~~~~~~~

Given **(x,y,xp)** , this function performs the yp components
corresponding to xp by the interpolation(linear by default) defined by
x and y.

If **yp** is a vector then the length of xp is equal to the length of
**yp,** if **yp** is a matrix then **xp** have the same length than
the length of each columns of yp, if **yp** is a hypermatrix then the
length of **xp** have the same length than the first dimension of
**yp. **

If size(y)=[C,M1,M2,M3,...,Mj] and size(xp)=[N1,N2,N3,...,Nk] then
size(yp)=[N1,N2,..,Nk,M1,M2,...Mj] and length of x must be equal to
size(y,1)

The **method** parameter sets the evaluation rule for interpolation

