


optimplotx
==========

Plot the value of the parameters of an optimization algorithm



SYNOPSIS
~~~~~~~~


::

    optimplotx ( x , optimValues , state )




Description
~~~~~~~~~~~

This function creates and updates a plot of the value of the
parameters depending on the number of iterations. It is a pre-defined
plot function which should be used as an option of the "PlotFcns"
option.



Example
~~~~~~~

In the following example, we use the `optimplotx` function for use
with the `fminsearch` function.


::

    function y=rosenbrock(x)
      y = 100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
    endfunction
    opt = `optimset`_ ( "PlotFcns" , optimplotx );
    [x fval] = `fminsearch`_ ( rosenbrock , [-1.2 1] , opt );




See Also
~~~~~~~~


+ `optimset`_ Configures and returns an optimization data structure.
+ `fminsearch`_ Computes the unconstrained minimimum of given function
  with the Nelder-Mead algorithm.
+ `optimplotfval`_ Plot the function value of an optimization
  algorithm
+ `optimplotfunccount`_ Plot the number of function evaluations of an
  optimization algorithm


.. _optimset: optimset.html
.. _fminsearch: fminsearch.html
.. _optimplotfunccount: optimplotfunccount.html
.. _optimplotfval: optimplotfval.html


