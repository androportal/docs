


mtlb_cumsum
===========

Matlab cumsum emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `cumsum` behave differently in some particular
cases:


+ When used with one input ( `cumsum(A)`), Matlab `cumsum` treats the
  values along the first non-singleton dimension of A as vectors while
  Scilab `cumsum` treats all A values.
+ When used with two inputs ( `cumsum(A,dim)`), Matlab tolerates `dim`
  to be greater than the number of dimensions of A while Scilab returns
  an error message in this case.


The function `R = mtlb_cumsum(A[,dim])` is used by `mfile2sci` to
replace `cumsum(A[,dim])` when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_cumsum` calls:


+ If `dim` is less equal to the number of dimensions of A `R =
  mtlb_cumsum(A,dim)` may be replaced by `R = cumsum(A,dim)`
+ If `dim` is greater than then number of dimensions of A `R =
  mtlb_cumsum(A,dim)` may be replaced by `R = A`.


Caution: `mtlb_cumsum` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `firstnonsingleton`_ Finds first dimension which is not 1


.. _firstnonsingleton: firstnonsingleton.html


