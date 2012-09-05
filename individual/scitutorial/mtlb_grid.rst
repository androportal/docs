


mtlb_grid
=========

Matlab grid emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab `grid` but there are
equivalent instructions.

The function `mtlb_grid(flag_or_handle[,flag])` is used by `mfile2sci`
to replace `grid(flag_or_handle[,flag])` when it was not possible to
know what were the inputs while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace `mtlb_grid`
calls:


+ With one input, if `flag` is equal to "on" `mtlb_grid(flag)` may be
  replaced by `set(gca(),"grid",[1 1])`
+ With one input, if `flag` is equal to "off" `mtlb_grid(flag)` may be
  replaced by `set(gca(),"grid",[-1 -1])`
+ With two inputs, if `flag` is equal to "on"
  `mtlb_grid(axes_handle,flag)` may be replaced by `axes_handle.grid=[1
  1]`
+ With two inputs, if `arg2` is equal to "off"
  `mtlb_grid(axes_handle,flag)` may be replaced by `axes_handle.grid=[-1
  -1]`


Caution: `mtlb_grid` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `axes_properties`_ description of the axes entity properties


.. _axes_properties: axes_properties.html


