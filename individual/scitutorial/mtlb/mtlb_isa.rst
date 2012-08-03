====
"mtlb_isa"
====

M2SCI function Last update : 07/05/2004
**mtlb_isa** - Matlab isa emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **isa** but some
equivalent expressions can be used when the object "class" exists in
Scilab.

The function **mtlb_isa(OBJ,class)** is used by **mfile2sci** to
replace **isa(OBJ,class)** when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace **mtlb_isa** calls:

****
