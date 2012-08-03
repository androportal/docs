====
"mtlb_exist"
====

M2SCI function Last update : 07/04/2004
**mtlb_exist** - Matlab exist emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent for Matlab **exist** except when input
is a variable. Scilab **mtlb_exist** is a partial emulation of of this
function.

The function **r = mtlb_exist(nam[,tp])** is used by **mfile2sci** to
replace **exist(nam[,tp])** when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace **mtlb_exist** calls:

****
