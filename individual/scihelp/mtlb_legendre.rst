


mtlb_legendre
=============

Matlab legendre emulation function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    P = mtlb_legendre(n,X)
    P = mtlb_legendre(n,X[,normflag])




Arguments
~~~~~~~~~

:X a scalar, vector, matrix or hypermatrix with elements in [-1,1]
:

:n a positive scalar integer
:

:normflag a string ('sch' or 'norm')
:



Description
~~~~~~~~~~~

Matlab and Scilab `legendre` behave differently in some particular
cases:


+ Scilab `legendre(m,n,X)` evaluates the `legendre` function of degree
  n and order n for the `X` elements. Matlab `legendre(n,X)` evaluates
  the Legendre functions of degree `n` and order `m`=0,1,...,n.
  (emulated by mtlb_legendre) for the `X` elements.
+ The option normflag= `'sch'` does not exist for Scilab legendre
  (emulated)
+ If `X` is a hypermatrix then Scilab `legendre(n,X)` does not work
  (emulated)


The function `mtlb_legendre(n,X[,normflag])` is used by `mfile2sci` to
replace `legendre(n,X[,normflag])` when it was not possible to know
what were the inputs while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace
`mtlb_legendre` call:


+ If `X` is a scalar, a vector or a matrix
  `mtlb_legendre(n,X[,'norm'])`may be replaced by
  `legendre(n,0:n,X[,'norm'])`


Caution: `mtlb_legendre` has not to be used for hand coded functions.



