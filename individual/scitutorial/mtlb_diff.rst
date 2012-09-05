


mtlb_diff
=========

Matlab diff emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `diff` behave differently in some particular cases:


+ With two input parameters: Scilab `diff` considers all values of
  first input as a vector what Matlab does not.
+ With three input parameters: If dimension of first input along
  dimension given by third parameter reaches 1 before n interations have
  been made,Matlab switches to next non-singleton dimension what Scilab
  does not.


The function `mtlb_diff(A[,n[,dim]])` is used by `mfile2sci` to
replace `diff(A[,n[,dim]])` when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_diff` calls:


+ With two inputs, if `A` is a scalar or a vector `mtlb_diff(A,n)` may
  be replaced by `diff(A,n)`
+ With three inputs, if size of A along dimension given by `dim` can
  not reach 1 `mtlb_diff(A,n,dim)` may be replaced by `diff(A,n,dim)`


Caution: `mtlb_diff` has not to be used for hand coded functions.



