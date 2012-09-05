


fplot2d
=======

2D plot of a curve defined by a function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    fplot2d(xr,f,[style,strf,leg,rect,nax])
    fplot2d(xr,f,<opt_args>)




Arguments
~~~~~~~~~

:xr vector.
: :f external of type `y=f(x)` i.e. a scilab function or a dynamically
  linked routine referred to as a string.
: :style,strf,leg,rect,nax see `plot2d`
: :<opt_args> see `plot2d`
:



Description
~~~~~~~~~~~

`fplot2d` plots a curve defined by the external function `f`. The
curve is approximated by a piecewise linear interpolation using the
points `(xr(i),f(xr(i))`. The values of f(x) are obtained by
`feval(xr,f)`.

Enter the command `fplot2d()` to see a demo.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `deff`_("[y]=f(x)","y=sin(x)+cos(x)")
    x=[0:0.1:10]*%pi/10;
    fplot2d(x,f)
    `clf`_();
    fplot2d(1:10,'parab')




See Also
~~~~~~~~


+ `plot2d`_ 2D plot
+ `feval`_ multiple evaluation
+ `paramfplot2d`_ animated plot of a 2D parametrized curve.


.. _feval: feval.html
.. _plot2d: plot2d.html
.. _paramfplot2d: paramfplot2d.html


