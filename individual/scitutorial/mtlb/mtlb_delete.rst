====
"mtlb_delete"
====

M2SCI function Last update : 07/05/2004
**mtlb_delete** - Matlab delete emulation function



Description
~~~~~~~~~~~

The function **mtlb_delete(A)** is used by **mfile2sci** to replace
**delete(A)** when it was not possible to know what was the input
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace **mtlb_delete** calls:

****
