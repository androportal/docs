


mtlb_rcond
==========

Matlab rcond emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `rcond` behave differently in some particular cases:


+ With empty matrix: Matlab `rcond` returns `Inf` and Scilab `rcond`
  returns `[]`


The function `mtlb_rcond(A)` is used by `mfile2sci` to replace
`rcond(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_rcond` calls:


+ If `A` is not an empty matrix, `mtlb_rcond(A)` may be replaced by
  `rcond(A)`


Caution: `mtlb_rcond` has not to be used for hand coded functions.



