


plot2d4
=======

2D plot (arrows style)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    plot2d4([logflag,] x,y,[style,strf,leg,rect,nax])
    plot2d4(y)
    plot2d4(x,y <,opt_args>)




Arguments
~~~~~~~~~

:args see `plot2d` for a description of parameters.
:



Description
~~~~~~~~~~~

`plot2d4` is the same as `plot2d` but curves are plotted using arrows
style. This can be useful when plotting solutions of an ODE in a phase
space.

By default, successive plots are superposed. To clear the previous
plot, use `clf()`.

Enter the command `plot2d4()` to see a demo. Note that all the modes
proposed by `plot2dxx` (xx = 1 to 4) can be enabled using `plot2d` and
setting the `polyline_style` option to the corresponding number.



Sample
~~~~~~



Examples
~~~~~~~~


::

    // compare the following with plot2d1
    x=[0:0.1:2*%pi]';
    plot2d4(x,[`sin`_(x) `sin`_(2*x) `sin`_(3*x)])
    `clf`_()
    `plot2d`_(x,[`sin`_(x) `sin`_(2*x) `sin`_(3*x)])
    e=`gce`_();
    e.children(1).polyline_style=4;
    e.children(2).polyline_style=4;
    e.children(3).polyline_style=4;




See Also
~~~~~~~~


+ `fchamp`_ direction field of a 2D first order ODE
+ `plot2d`_ 2D plot
+ `plot2d2`_ 2D plot (step function)
+ `plot2d3`_ 2D plot (vertical bars)
+ `subplot`_ divide a graphics window into a matrix of sub-windows
+ `clf`_ clear or reset the current graphic figure (window) to default
  values
+ `polyline_properties`_ description of the Polyline entity properties


.. _clf: clf.html
.. _plot2d: plot2d.html
.. _subplot: subplot.html
.. _plot2d3: plot2d3.html
.. _plot2d2: plot2d2.html
.. _fchamp: fchamp.html
.. _polyline_properties: polyline_properties.html


