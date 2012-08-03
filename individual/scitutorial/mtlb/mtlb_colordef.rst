====
"mtlb_colordef"
====

M2SCI function Last update : 08/06/2004
**mtlb_colordef** - Matlab colordef emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **colordef** but
there are equivalent instructions.

The function **h = mtlb_colordef(color_option)** or **h =
mtlb_colordef(fig,color_option)** is used by **mfile2sci** to replace
**colordef(color_option)** or **colordef(fig,color_option)** when it
was not possible to know what were the inputs while porting Matlab
code to Scilab. This function will determine the correct semantic at
run time. If you want to have a more efficient code it is possible to
replace **mtlb_colordef** calls:

****
