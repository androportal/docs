


mtlb_uint32
===========

Matlab uint32 emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `uint32` behave differently in some particular
cases:


+ With complex input: Matlab `uint32` can be used with complex values
  what Scilab function can not.
+ With `%inf`: Matlab `uint32` returns 4294967295 and Scilab returns
  0.


The function `mtlb_uint32(A)` is used by `mfile2sci` to replace
`uint32(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_uint32` calls:


+ If `A` does not contain `%inf` values `mtlb_uint32(A)` may be
  replaced by `uint32(A)`


Caution: `mtlb_uint32` has not to be used for hand coded functions.



