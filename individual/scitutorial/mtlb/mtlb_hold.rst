====
"mtlb_hold"
====

M2SCI function Last update : 01/07/2004
**mtlb_hold** - Matlab hold emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **hold** but there
are equivalent instructions.

The function **mtlb_hold(flag)** is used by **mfile2sci** to replace
**hold flag** when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace **mtlb_hold** calls:

****
