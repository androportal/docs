====
"mtlb_isspace"
====

M2SCI function Last update : 08/04/2004
**mtlb_isspace** - Matlab isspace emulation function



Description
~~~~~~~~~~~

There is no Scilab function equivalent for Matlab **isspace** but its
behavior can be reproduced.

The function **mtlb_isspace(A)** is used by **mfile2sci** to replace
**isspace(A)** when it was not possible to know what was the input
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace **mtlb_isspace** calls:

****
