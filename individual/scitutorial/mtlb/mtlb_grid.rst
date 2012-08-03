====
"mtlb_grid"
====

M2SCI function Last update : 28/07/2004
**mtlb_grid** - Matlab grid emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **grid** but there
are equivalent instructions.

The function **mtlb_grid(flag_or_handle[,flag])** is used by
**mfile2sci** to replace **grid(flag_or_handle[,flag])** when it was
not possible to know what were the inputs while porting Matlab code to
Scilab. This function will determine the correct semantic at run time.
If you want to have a more efficient code it is possible to replace
**mtlb_grid** calls:

****
