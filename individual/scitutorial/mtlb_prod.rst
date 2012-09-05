


mtlb_prod
=========

Matlab prod emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `prod` behave differently in some particular cases:


+ When called with one input: Matlab `prod` threts the values along
  the first non-singleton dimension of input while Scilab `prod` threats
  all values of input.
+ When called with two inputs: Matlab `prod` can be used with second
  input giving a non-existing dimension of first input while Scilab
  `prod` returns an error message.


The function `mtlb_prod(A[,dim])` is used by `mfile2sci` to replace
`prod(A[,dim])` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_prod` calls:


+ When called with one input, if `A` is an empty matrix, a scalar or a
  vector, `mtlb_prod(A)` may be replaced by `prod(A)`
+ When called with one input, if `A` is a not-empty matrix,
  `mtlb_prod(A)` may be replaced by `prod(A,1)`
+ When called with one input, if `A` is a multidimensional array,
  `mtlb_prod(A)` may be replaced by `prod(A,firstnonsingleton(A))`
+ When called with two inputs, if `dim` is lesser than the number of
  dimensions of `A` `mtlb_prod(A,dim)` may be replaced by `prod(A,dim)`


Caution: `mtlb_prod` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `firstnonsingleton`_ Finds first dimension which is not 1


.. _firstnonsingleton: firstnonsingleton.html


