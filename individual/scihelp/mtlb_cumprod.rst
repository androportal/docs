


mtlb_cumprod
============

Matlab cumprod emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `cumprod` behave differently in some particular
cases:


+ When used with one input ( `cumprod(A)`), Matlab `cumprod` treats
  the values along the first non-singleton dimension of A as vectors
  while Scilab `cumprod` treats all A values.
+ When used with two inputs ( `cumprod(A,dim)`), Matlab tolerates
  `dim` to be greater than the number of dimensions of A while Scilab
  returns an error message in this case.


The function `R = mtlb_cumprod(A[,dim])` is used by `mfile2sci` to
replace `cumprod(A[,dim])` when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_cumprod` calls:


+ If `dim` is less equal to the number of dimensions of A `R =
  mtlb_cumprod(A,dim)` may be replaced by `R = cumprod(A,dim)`
+ If `dim` is greater than then number of dimensions of A `R =
  mtlb_cumprod(A,dim)` may be replaced by `R = A`.


Caution: `mtlb_cumprod` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `firstnonsingleton`_ Finds first dimension which is not 1


.. _firstnonsingleton: firstnonsingleton.html


