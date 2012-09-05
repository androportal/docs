


mtlb_all
========

Matlab all emulation function



Description
~~~~~~~~~~~

Matlab `all` and Scilab `and` behave differently in some particular
cases:


+ When used with one input ( `all(A)`), Matlab `all` treats the values
  along the first non-singleton dimension of A as vectors while Scilab
  `and` treats all A values.
+ When used with two inputs ( `all(A,dim)`), Matlab tolerates `dim` to
  be greater than the number of dimensions of A while Scilab returns an
  error message in this case.


The function `R = mtlb_all(A[,dim])` is used by `mfile2sci` to replace
`all(A[,dim])` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_all` calls:


+ If `A` is a scalar or a vector `R = mtlb_all(A)` may be replaced by
  `R = and(A)`
+ If `A` is a matrix `R = mtlb_all(A)` may be replaced by `R =
  and(A,1)`
+ If `A` is a hypermatrix `R = mtlb_all(A)` may be replaced by `R =
  and(A,firstnonsingleton(A))` or by `R = and(A,user_defined_value)` if
  the first non-singleton dimensions of A is known.
+ If `dim` is less equal to the number of dimensions of A `R =
  mtlb_all(A,dim)` may be replaced by `R = and(A,dim)`
+ If `dim` is greater than then number of dimensions of A `R =
  mtlb_all(A,dim)` may be replaced by `R = A<>0` if A is not an empty
  matrix or by `R = A` if A is an empty matrix.


Caution: `mtlb_all` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `firstnonsingleton`_ Finds first dimension which is not 1


.. _firstnonsingleton: firstnonsingleton.html


