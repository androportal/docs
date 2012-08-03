====
"mtlb_eval"
====

M2SCI function Last update : 20/12/2004
**mtlb_eval** - Matlab eval emulation function



Description
~~~~~~~~~~~

Scilab equivalent for Matlab **eval** is different according to its
inputs and outputs

The function **mtlb_eval(str1,str2)** is used by **mfile2sci** to
replace **eval** because it was not possible to know what were the
inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace **mtlb_eval** calls:

****
