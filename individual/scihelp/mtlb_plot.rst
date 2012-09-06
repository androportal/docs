


mtlb_plot
=========

Matlab plot emulation function



Description
~~~~~~~~~~~

Matlab `plot` and Scilab `plot2d` behave differently.

The function `mtlb_plot(varargin)` is used by `mfile2sci` to replace
`plot(varargin)` when it was not possible to know what were the inputs
while porting Matlab code to Scilab. This function will determine the
correct semantic at run time. If you want to have a more efficient
code it is possible to replace `mtlb_plot` calls when there is no
output value, however in this case, you have to set colors manualy:


+ With one input, if `Y` is real, `mtlb_plot(Y)` may be replaced by
  `plot2d(Y)`
+ With one input, if `Y` is complex, `mtlb_plot(Y)` may be replaced by
  `plot2d(real(Y),imag(Y))`
+ With two inputs `X` and `Y`, if `Y` is not a character string,
  `mtlb_plot(X,Y)` may be replaced by `plot2d(X,Y)`


Caution: `mtlb_plot` has not to be used for hand coded functions.



See Also
~~~~~~~~


+ `plot2d`_ 2D plot


.. _plot2d: plot2d.html


