


mtlb_box
========

Matlab box emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab `box` but it can be
easyly replaced.

The function `mtlb_box([axes_handle[,val]])` is used by `mfile2sci` to
replace `box([axes_handle[,va]]l)` when it was not possible to know
what were the inputs while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace `mtlb_box`
calls:


+ When called without input parameters, `mtlb_box()` may be replaced
  by `a=gca();if a.box=="on" then a.box="off";else a.box="on";end;`
+ If `axes_handle` is a character string, `mtlb_box(axes_handle)` may
  be replaced by `a=gca();a.box=convstr(axes_handle,"l");`
+ If `axes_handle` is a graphic handle `mtlb_box(axes_handle)` may be
  replaced by `if axes_handle.box=="on" then axes_handle.box="off";else
  axes_handle.box="on";end;`
+ If `axes_handle` is a graphic handle and `val` is a character string
  `mtlb_box(axes_handle,val)` may be replaced by
  `axes_handle.box=convstr(val,"l");`


Caution: `mtlb_box` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `axes_properties`_ description of the axes entity properties


.. _axes_properties: axes_properties.html


