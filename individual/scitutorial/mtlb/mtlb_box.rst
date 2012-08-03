====
"mtlb_box"
====

M2SCI function Last update : 08/06/2004
**mtlb_box** - Matlab box emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **box** but it can
be easyly replaced.

The function **mtlb_box([axes_handle[,val]])** is used by
**mfile2sci** to replace **box([axes_handle[,va]]l)** when it was not
possible to know what were the inputs while porting Matlab code to
Scilab. This function will determine the correct semantic at run time.
If you want to have a more efficient code it is possible to replace
**mtlb_box** calls:

****
