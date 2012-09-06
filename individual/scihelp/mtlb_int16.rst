


mtlb_int16
==========

Matlab int16 emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `int16` behave differently in some particular cases:


+ With complex input: Matlab `int16` can be used with complex values
  what Scilab function can not.
+ With `%inf`: Matlab `int16` returns 32767 and Scilab returns -32768.
+ With `%nan`: Matlab `int16` returns 0 and Scilab returns -32768.
+ With `-%nan`: Matlab `int16` returns 0 and Scilab returns -32768.


The function `mtlb_int16(A)` is used by `mfile2sci` to replace
`int16(A)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_int16` calls:


+ If `A` does not contain `%inf`, `%nan` or `-%nan` values
  `mtlb_int16(A)` may be replaced by `int16(A)`


Caution: `mtlb_int16` has not to be used for hand coded functions.



