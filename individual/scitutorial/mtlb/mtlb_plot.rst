====
"mtlb_plot"
====

M2SCI function Last update : 30/06/2004
**mtlb_plot** - Matlab plot emulation function



Description
~~~~~~~~~~~

Matlab **plot** and Scilab **plot2d** behave differently.

The function **mtlb_plot(varargin)** is used by **mfile2sci** to
replace **plot(varargin)** when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace **mtlb_plot** calls when
there is no output value, however in this case, you have to set colors
manualy:

****
