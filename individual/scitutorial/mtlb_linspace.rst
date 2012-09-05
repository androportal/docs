


mtlb_linspace
=============

Matlab linspace emulation function



Description
~~~~~~~~~~~

Matlab and Scilab `linspace` behave differently in some particular
cases:


+ With character string inputs: Matlab `linspace(A,B[,n])` returns a
  character string vector if `A` and/or `B` are character strings, but
  Scilab function does not work with such inputs.


The function `mtlb_linspace(A,B[,n])` is used by `mfile2sci` to
replace `linspace(A,B[,n])` when it was not possible to know what were
the inputs while porting Matlab code to Scilab. This function will
determine the correct semantic at run time. If you want to have a more
efficient code it is possible to replace `mtlb_linspace` calls:


+ If `A` and `B` are not character strings `mtlb_linspace(A,B[,n])`
  may be replaced by `linspace(A,B[,n])`
+ If `A` or `B` are character strings `mtlb_linspace(A,B[,n])` may be
  replaced by `ascii(linspace(ascii(A),ascii(B)[,n]))`


Caution: `mtlb_linspace` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `ascii`_ string ascii conversions


.. _ascii: ascii.html


