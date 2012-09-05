


mtlb_colordef
=============

Matlab colordef emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab `colordef` but there
are equivalent instructions.

The function `h = mtlb_colordef(color_option)` or `h =
mtlb_colordef(fig,color_option)` is used by `mfile2sci` to replace
`colordef(color_option)` or `colordef(fig,color_option)` when it was
not possible to know what were the inputs while porting Matlab code to
Scilab. This function will determine the correct semantic at run time.
If you want to have a more efficient code it is possible to replace
`mtlb_colordef` calls:


+ When called with one input parameter, if `color_option` is equal to
  "black" or "none" `mtlb_colordef(color_option)` may be replaced by
  `fig = gcf();fig.background = -1;`
+ When called with one input parameter, if `color_option` is equal to
  "white" `mtlb_colordef(color_option)` may be replaced by `fig =
  gcf();fig.background = -2;`
+ When called with two input parameters, if `fig` is a graphic handle
  and `color_option` is equal to "black" or "none"
  `mtlb_colordef(color_option)` may be replaced by `fig.background =
  -1;`
+ When called with two input parameters, if `fig` is a graphic handle
  and `color_option` is equal to "white" `mtlb_colordef(color_option)`
  may be replaced by `fig.background = -2;`
+ When called with two input parameters, if `fig` is equal to "new"
  and `color_option` is equal to "black" or "none"
  `mtlb_colordef(color_option)` may be replaced by `fig =
  scf(max(winsid())+1);fig.background = -1;`
+ When called with two input parameters, if `fig` is equal to "new"
  and `color_option` is equal to "white" `mtlb_colordef(color_option)`
  may be replaced by `fig = scf(max(winsid())+1);fig.background = -2;`
+ When called with one output parameter `h`, just add `h = fig;` after
  equivalent instructions.


Caution: `mtlb_colordef` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `figure_properties`_ description of the graphics figure entity
  properties


.. _figure_properties: figure_properties.html


