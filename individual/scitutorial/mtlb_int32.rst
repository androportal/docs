


mtlb_int32
==========

Matlab int32 emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `int32` behave differently in some particular cases:


+ With complex input: Matlab `int32` can be used with complex values
  what Scilab function can not.
+ With `%inf`: Matlab `int32` returns 2147483647 and Scilab returns
  -2147483648.
+ With `%nan`: Matlab `int32` returns 0 and Scilab returns
  -2147483648.
+ With `-%nan`: Matlab `int32` returns 0 and Scilab returns
  -2147483648.


The function `mtlb_int32(A)` is used by `mfile2sci` to replace
`int32(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_int32` calls:


+ If `A` does not contain `%inf`, `%nan` or `-%nan` values
  `mtlb_int32(A)` may be replaced by `int32(A)`


Caution: `mtlb_int32` has not to be used for hand coded functions.



