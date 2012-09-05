


mtlb_more
=========

Matlab more emulation function



Description
~~~~~~~~~~~

Matlab `more` and Scilab `lines` behave differently in some particular
cases:


+ With character strings as input: Matlab `more` can take "on" and
  "off" as input but not Scilab `lines` but there are equivalents (0 and
  60).


The function `mtlb_more(in)` is used by `mfile2sci` to replace
`more(in)` when it was not possible to know what was the input while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_more` calls:


+ If `in` is equal to "on" `mtlb_more(in)` may be replaced by
  `lines(60)`
+ If `in` is equal to "off" `mtlb_more(in)` may be replaced by
  `lines(0)`
+ If `in` is a double value `mtlb_more(in)` may be replaced by
  `lines(in)`


Caution: `mtlb_more` has not to be used for hand coded functions.



