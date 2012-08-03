====
"mtlb_legendre"
====

M2SCI function Last update : 12/10/2006
**mtlb_legendre** - Matlab legendre emulation function



Calling Sequence
~~~~~~~~~~~~~~~~

P = mtlb_legendre(n,X)
P = mtlb_legendre(n,X[,normflag])




Parameters
~~~~~~~~~~


+ **X** : a scalar, vector, matrix or hypermatrix with elements in
  [-1,1]



+ **n** : a positive scalar integer



+ **normflag** : a string ('sch' or 'norm')




Description
~~~~~~~~~~~

Matlab and Scilab **legendre** behave differently in some particular
cases:

****
