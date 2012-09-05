


mtlb_false
==========

Matlab false emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent for Matlab `false`. However, Scilab
`zeros` returns a result interpreted in an equivalent way for Scilab.

Matlab `false` and Scilab `zeros` behave differently in some
particular cases:


+ With a scalar input: Matlab `false` returns a n x n matrix of zeros
  while Scilab `zeros` returns a 0.


The function `mtlb_false(A)` is used by `mfile2sci` to replace
`false(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_false` calls:


+ If `A` is a scalar `mtlb_false(A)` may be replaced by `zeros(A,A)`
+ If `A` is not a scalar `mtlb_false(A)` may be replaced by `zeros(A)`


Caution: `mtlb_false` has not to be used for hand coded functions.



