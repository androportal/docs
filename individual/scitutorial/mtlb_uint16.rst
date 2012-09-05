


mtlb_uint16
===========

Matlab uint16 emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `uint16` behave differently in some particular
cases:


+ With complex input: Matlab `uint16` can be used with complex values
  what Scilab function can not.
+ With `%inf`: Matlab `uint16` returns 65535 and Scilab returns 0.


The function `mtlb_uint16(A)` is used by `mfile2sci` to replace
`uint16(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_uint16` calls:


+ If `A` does not contain `%inf` values `mtlb_uint16(A)` may be
  replaced by `uint16(A)`


Caution: `mtlb_uint16` has not to be used for hand coded functions.



