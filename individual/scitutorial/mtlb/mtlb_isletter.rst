====
"mtlb_isletter"
====

M2SCI function Last update : 29/07/2004
**mtlb_isletter** - Matlab isletter emulation function



Description
~~~~~~~~~~~

There is no Scilab equivalent function for Matlab **isletter** and
equivalent instructions are quite ugly, so **mfile2sci** uses
**mtlb_isletter(A)** to replace **isletter(A)** . If you want to have
a more efficient code it is possible to replace **mtlb_isletter**
calls:

****
