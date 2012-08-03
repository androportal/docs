====
"mtlb_findstr"
====

M2SCI function Last update : 28/07/2004
**mtlb_findstr** - Matlab findstr emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent for Matlab **findstr** .

The function **mtlb_findstr(A,B)** is used by **mfile2sci** to replace
**findstr(A,B)** when it was not possible to know what were the
operands/inputs[CUSTOM] while porting Matlab code to Scilab. This
function will determine the correct semantic at run time. If you want
to have a more efficient code it is possible to replace
**mtlb_findstr** calls:

****
