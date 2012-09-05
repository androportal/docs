


mtlb_dec2hex
============

Matlab dec2hex emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `dec2hex` behave differently in some particular
cases:


+ With empty matrix: Matlab `dec2hex` returns "" but in Scilab you get
  [].
+ With complex inputs: Matlab `dec2hex` automatically removes complex
  part of inputs but not Scilab one.
+ Matlab `dec2hex` always returns a row vector but in Scilab `dec2hex`
  returns a value which have the same size as the input.
+ Matlab `dec2hex` can have two inputs but not Scilab one.


The function `mtlb_dec2hex(D[,N])` is used by `mfile2sci` to replace
`dec2hex(D[,N])` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_dec2hex` calls:


+ If `D` is not an empty matrix, `mtlb_dec2hex(D)` may be replaced by
  `matrix(dec2hex(real(D)),-1,1)` if `D` is complex and by
  `matrix(dec2hex(D),-1,1)` else.


Caution: `mtlb_dec2hex` has not to be used for hand coded functions.



