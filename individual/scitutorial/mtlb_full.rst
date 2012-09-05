


mtlb_full
=========

Matlab full emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `full` behave differently in some particular cases:


+ With character strings input: Matlab `full` can be used with
  character string input while Scilab function cannot.
+ With boolean input: Matlab `full` can be used with boolean input
  while Scilab function cannot.


The function `mtlb_full(A)` is used by `mfile2sci` to replace
`full(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_full` calls:


+ If `A` is a double matrix `mtlb_full(A)` may be replaced by
  `full(A)`
+ If `A` is a boolean matrix `mtlb_full(A)` may be replaced by
  `full(bool2s(A))`


Caution: `mtlb_full` has not to be used for hand coded functions.



