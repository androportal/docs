


mtlb_any
========

Matlab any emulation function



Description
~~~~~~~~~~~

Matlab `any` and Scilab `or` behave differently in some particular
cases:


+ When used with one input ( `any(A)`), Matlab `any` treats the values
  along the first non-singleton dimension of A as vectors while Scilab
  `or` treats all A values.
+ When used with two inputs ( `any(A,dim)`), Matlab tolerates `dim` to
  be greater than the number of dimensions of A while Scilab returns an
  error message in this case.


The function `R = mtlb_any(A[,dim])` is used by `mfile2sci` to replace
`any(A[,dim])` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_any` calls:


+ If `A` is a scalar or a vector `R = mtlb_any(A)` may be replaced by
  `R = or(A)`
+ If `A` is a matrix `R = mtlb_any(A)` may be replaced by `R =
  or(A,1)`
+ If `A` is a hypermatrix `R = mtlb_any(A)` may be replaced by `R =
  or(A,firstnonsingleton(A))` or by `R = or(A,user_defined_value)` if
  the first non-singleton dimensions of A is known.
+ If `dim` is less equal to the number of dimensions of A `R =
  mtlb_any(A,dim)` may be replaced by `R = or(A,dim)`
+ If `dim` is greater than then number of dimensions of A `R =
  mtlb_any(A,dim)` may be replaced by `R = A<>0` if A is not an empty
  matrix or by `R = A` if A is an empty matrix.


Caution: `mtlb_any` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `firstnonsingleton`_ Finds first dimension which is not 1


.. _firstnonsingleton: firstnonsingleton.html


