


mtlb_fopen
==========

Matlab fopen emulation function



Description
~~~~~~~~~~~

Matlab `fopen` and Scilab `mopen` behave differently in some
particular cases:


+ Scilab function returns no usable error message
+ Scilab file identified does not exist in case of error but Matlab
  one is set to `-1`.
+ Matlab function can work with inputs which do not exist in Scilab
  such as permission options...


The function `mtlb_fopen(filename,permission)` is used by `mfile2sci`
to replace `mopen(filename,permission)` when it was not possible to
know what were the inputs while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace `mtlb_fopen`
calls:


+ If error message is not used and no error can occurs,
  `mtlb_fopen(filename,permission)` may be replaced by
  `mopen(filename,permission,0)`


Caution: `mtlb_fopen` has not to be used for hand coded functions.



