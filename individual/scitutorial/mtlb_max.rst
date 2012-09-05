


mtlb_max
========

Matlab max emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `max` behave differently in some particular cases:


+ With complex values: Matlab `max` can be used with complex values
  but not Scilab function.
+ When called with one input: Matlab `max` threats values along the
  first non-singleton dimension but Scilab threats all input values.
+ When called with two inputs: if one is an empty matrix, Scilab
  returns an error message but Matlab returns [].
+ When called with three inputs: if `dim` parameter is greater than
  number of dimensions of first input, Scilab returns an error message
  and Matlab returns the first input.


The function `[r[,k]] = mtlb_max(A[,B[,dim]])` is used by `mfile2sci`
to replace `[r[,k]] = max(A[,B[,dim]])` when it was not possible to
know what were the inputs while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace `mtlb_max`
calls:


+ When called with one input, if `A` is a vector or a scalar `[r[,k]]
  = mtlb_max(A)` may be replaced by `max(A)`
+ When called with one input, if `A` is a matrix `[r[,k]] =
  mtlb_max(A)` may be replaced by `max(A,"r")`
+ When called with two inputs, if `A` and `B` are real matrices and
  not empty matrices `[r[,k]] = mtlb_max(A,B)` may be replaced by
  `max(A,B)`
+ When called with three inputs, if `dim` is lesser than the number of
  dimensions of `A` `[r[,k]] = mtlb_max(A,[],dim)` may be replaced by
  `max(A,dim)`


Caution: `mtlb_max` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `firstnonsingleton`_ Finds first dimension which is not 1


.. _firstnonsingleton: firstnonsingleton.html


