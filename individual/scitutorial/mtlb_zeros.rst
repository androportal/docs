


mtlb_zeros
==========

Matlab zeros emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `zeros` behave differently in some particular cases:


+ With a scalar input: Matlab `zeros` returns a n x n matrix while
  Scilab returns a 0.


The function `mtlb_zeros(A)` is used by `mfile2sci` to replace
`zeros(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_zeros` calls:


+ If `A` is a scalar `mtlb_zeros(A)` may be replaced by `zeros(A,A)`
+ If `A` is not a scalar `mtlb_zeros(A)` may be replaced by `zeros(A)`


Caution: `mtlb_zeros` has not to be used for hand coded functions.



