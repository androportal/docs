====
"mtlb_strcmpi"
====

M2SCI function Last update : 09/04/2004
**mtlb_strcmpi** - Matlab strcmpi emulation function



Description
~~~~~~~~~~~

There is no Scilab function equivalent for Matlab **strcmpi** , there
is equivalent instructions.

The function **mtlb_strcmpi(A,B)** is used by **mfile2sci** to replace
**strcmpi(A,B)** when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace **mtlb_strcmpi** calls:

****
