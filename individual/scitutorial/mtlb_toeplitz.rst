


mtlb_toeplitz
=============

Matlab toeplitz emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `toeplitz` behave differently in some particular
cases:


+ With one input parameter: if this parameter is complex or is a
  matrix, output value of Matlab and Scilab `toeplitz` can be different.
+ With two input parameters: if they are vectors and their first
  elements are not equal, Scilab returns an error but Matlab gives
  priority to the column element. If they are matrices, output value of
  Matlab and Scilab `toeplitz` are different.


The function `mtlb_toeplitz(c[,r])` is used by `mfile2sci` to replace
`toeplitz(c[,r])` when it was not possible to know what were the
operands/inputs[CUSTOM] while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace
`mtlb_toeplitz` calls:


+ When called with one input, if `c` is a real scalar or vector
  `mtlb_toeplitz(c)` may be replaced by `toeplitz(c)`
+ When called with two inputs, if `c` and `r` are scalars or vectors
  and their first elements are equal `mtlb_toeplitz(c,r)` may be
  replaced by `toeplitz(c,r)`


Caution: `mtlb_toeplitz` has not to be used for hand coded functions.



