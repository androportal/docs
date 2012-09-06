


mtlb_setstr
===========

Matlab setstr emulation function



Description
~~~~~~~~~~~

Matlab `setstr` and Scilab `ascii` behave differently in some
particular cases:


+ With character string input: Matlab `setstr` returns a character
  string while Scilab `ascii` returns ASCII codes.



+ With double matrix input: Matlab `setstr` returns a character matrix
  having the same size as input while Scilab `ascii` returns a single
  character string


The function `mtlb_setstr(A)` is used by `mfile2sci` to replace
`setstr(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_setstr` calls:


+ If `A` is a character string or a character string matrix
  `mtlb_setstr(A)` may be replaced by `A`
+ If `A` is a double row vector `mtlb_setstr(A)` may be replaced by
  `ascii(A)`


Caution: `mtlb_setstr` has not to be used for hand coded functions.



