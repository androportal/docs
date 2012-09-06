


mtlb_echo
=========

Matlab echo emulation function



Description
~~~~~~~~~~~

There is no equivalent for Matlab `echo` in Scilab but some cases can
be replaced by calls to Scilab `mode`:


+ `echo`: is equivalent to Scilab `mode(abs(mode()-1))` for scripts
  and non-compiled functions
+ `echo on`: is equivalent to Scilab `mode(1)` for scripts and non-
  compiled functions
+ `echo off`: is equivalent to Scilab `mode(0)`


The function `mtlb_echo(arg1[,arg2])` is used by `mfile2sci` to
replace `echo arg1 [arg2]` when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_echo` calls:


+ If `arg1` is equal to "on" `mtlb_echo(arg1)` may be replaced by
  `mode(1)`
+ If `arg1` is equal to "off" `mtlb_echo(arg1)` may be replaced by
  `mode(0)`


Caution: `mtlb_echo` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `mode`_ select a mode in an exec-file


.. _mode: mode.html


