


mtlb_format
===========

Matlab format emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `format` behave differently in some particular
cases:


+ Some Matlab formats do not exist in Scilab
+ Calling sequence for `format` is different in Scilab and Matlab


The function `mtlb_format(type,prec)` is used by `mfile2sci` to
replace `format([type prec])` when it was not possible to know what
were the inputs while porting Matlab code to Scilab. This function
will determine the correct semantic at run time. If you want to have a
more efficient code it is possible to replace `mtlb_format` calls:


+ If `type=""` and `prec=""` `mtlb_format("","")` may be replaced by
  `format("v",6)`
+ If `type="+"` and `prec=""` `mtlb_format("+","")` may be replaced by
  `format(6)`
+ If `type="long"` and `prec=""` `mtlb_format("long","")` may be
  replaced by `format(16)`
+ If `type="long"` and `prec="e"` `mtlb_format("long","e")` may be
  replaced by `format("e"16)`
+ If `type="long"` and `prec="g"` `mtlb_format("long","g")` may be
  replaced by `format("e"16)`
+ If `type="short"` and `prec=""` `mtlb_format("short","")` may be
  replaced by `format(6)`
+ If `type="short"` and `prec="e"` `mtlb_format("short","e")` may be
  replaced by `format("e"6)`
+ If `type="short"` and `prec="g"` `mtlb_format("short","g")` may be
  replaced by `format("e"6)`


Caution: `mtlb_format` has not to be used for hand coded functions.



