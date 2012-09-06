


mtlb_int8
=========

Matlab int8 emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `int8` behave differently in some particular cases:


+ With complex input: Matlab `int8` can be used with complex values
  what Scilab function can not.
+ With `%inf`: Matlab `int8` returns 127 and Scilab returns 0.
+ With `-%inf`: Matlab `int8` returns -128 and Scilab returns 0.


The function `mtlb_int8(A)` is used by `mfile2sci` to replace
`int8(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_int8` calls:


+ If `A` does not contain `%inf` or `-%inf` values `mtlb_int8(A)` may
  be replaced by `int8(A)`


Caution: `mtlb_int8` has not to be used for hand coded functions.



