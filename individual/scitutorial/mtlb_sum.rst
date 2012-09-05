


mtlb_sum
========

Matlab sum emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `sum` behave differently in some particular cases:


+ When called with one input: Matlab `sum` threts the values along the
  first non-singleton dimension of input while Scilab `sum` threats all
  values of input.
+ When called with two inputs: Matlab `sum` can be used with second
  input giving a non-existing dimension of first input while Scilab
  `sum` returns an error message.


The function `mtlb_sum(A[,dim])` is used by `mfile2sci` to replace
`sum(A[,dim])` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_sum` calls:


+ When called with one input, if `A` is an empty matrix, a scalar or a
  vector, `mtlb_sum(A)` may be replaced by `sum(A)`
+ When called with one input, if `A` is a not-empty matrix,
  `mtlb_sum(A)` may be replaced by `sum(A,1)`
+ When called with one input, if `A` is a multidimensional array,
  `mtlb_sum(A)` may be replaced by `sum(A,firstnonsingleton(A))`
+ When called with two inputs, if `dim` is lesser than the number of
  dimensions of `A` `mtlb_sum(A,dim)` may be replaced by `sum(A,dim)`


Caution: `mtlb_sum` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `firstnonsingleton`_ Finds first dimension which is not 1


.. _firstnonsingleton: firstnonsingleton.html


