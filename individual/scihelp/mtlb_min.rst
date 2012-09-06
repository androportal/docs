


mtlb_min
========

Matlab min emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `min` behave differently in some particular cases:


+ With complex values: Matlab `min` can be used with complex values
  but not Scilab function.
+ When called with one input: Matlab `min` threats values along the
  first non-singleton dimension but Scilab threats all input values.
+ When called with two inputs: if one is an empty matrix, Scilab
  returns an error message but Matlab returns [].
+ When called with three inputs: if `dim` parameter is greater than
  number of dimensions of first input, Scilab returns an error message
  and Matlab returns the first input.


The function `[r[,k]] = mtlb_min(A[,B[,dim]])` is used by `mfile2sci`
to replace `[r[,k]] = min(A[,B[,dim]])` when it was not possible to
know what were the inputs while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace `mtlb_min`
calls:


+ When called with one input, if `A` is a vector or a scalar `[r[,k]]
  = mtlb_min(A)` may be replaced by `min(A)`
+ When called with one input, if `A` is a matrix `[r[,k]] =
  mtlb_min(A)` may be replaced by `min(A,"r")`
+ When called with two inputs, if `A` and `B` are real matrices and
  not empty matrices `[r[,k]] = mtlb_min(A,B)` may be replaced by
  `min(A,B)`
+ When called with three inputs, if `dim` is lesser than the number of
  dimensions of `A` `[r[,k]] = mtlb_min(A,[],dim)` may be replaced by
  `min(A,dim)`


Caution: `mtlb_min` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `firstnonsingleton`_ Finds first dimension which is not 1


.. _firstnonsingleton: firstnonsingleton.html


