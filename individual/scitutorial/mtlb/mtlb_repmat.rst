====
"mtlb_repmat"
====

M2SCI function Last update : 13/08/2004
**mtlb_repmat** - Matlab repmat emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **repmat** but there
are equivalent instructions.

The function **mtlb_repmat(M,m[,n])** is used by **mfile2sci** to
replace **repmat(M,m[,n])** when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace **mtlb_repmat** calls:

****
