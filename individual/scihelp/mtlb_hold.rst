


mtlb_hold
=========

Matlab hold emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab `hold` but there are
equivalent instructions.

The function `mtlb_hold(flag)` is used by `mfile2sci` to replace `hold
flag` when it was not possible to know what were the inputs while
porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_hold` calls:


+ If `flag` is equal to "on" `mtlb_hold(flag)` may be replaced by
  `set(gca(),"auto_clear","off")`
+ If `flag` is equal to "off" `mtlb_hold(flag)` may be replaced by
  `set(gca(),"auto_clear","on")`


Caution: `mtlb_hold` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `axes_properties`_ description of the axes entity properties


.. _axes_properties: axes_properties.html


