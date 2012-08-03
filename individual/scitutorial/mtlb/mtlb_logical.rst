====
"mtlb_logical"
====

M2SCI function Last update : 08/04/2004
**mtlb_logical** - Matlab logical emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **logical** but its
behavior can be easyly reproduced.

The function **mtlb_logical(A)** is used by **mfile2sci** to replace
**logical(A)** when it was not possible to know what was the input
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace **mtlb_logical** calls:

****
