


mtlb_uint8
==========

Matlab uint8 emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `uint8` behave differently in some particular cases:


+ With complex input: Matlab `uint8` can be used with complex values
  what Scilab function can not.
+ With `%inf`: Matlab `uint8` returns 255 and Scilab returns 0.


The function `mtlb_uint8(A)` is used by `mfile2sci` to replace
`uint8(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_uint8` calls:


+ If `A` does not contain `%inf` values `mtlb_uint8(A)` may be
  replaced by `uint8(A)`


Caution: `mtlb_uint8` has not to be used for hand coded functions.



