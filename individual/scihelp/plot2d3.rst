


plot2d3
=======

2D plot (vertical bars)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    plot2d3([logflags,] x,y,[style,strf,leg,rect,nax])
    plot232(y)
    plot2d3(x,y <,opt_args>)




Arguments
~~~~~~~~~

:args see `plot2d` for a description of parameters.
:



Description
~~~~~~~~~~~

`plot2d3` is the same as `plot2d` but curves are plotted using
vertical bars.

By default, successive plots are superposed. To clear the previous
plot, use `clf()`.

Enter the command `plot2d3()` to see a demo. Note that all the modes
proposed by `plot2dxx` (xx = 1 to 4) can be enabled using `plot2d` and
setting the `polyline_style` option to the corresponding number.



Sample
~~~~~~



Examples
~~~~~~~~


::

    // compare the following with plot2d1
    x=[0:0.1:2*%pi]';
    plot2d3(x,[`sin`_(x) `sin`_(2*x) `sin`_(3*x)])
    `clf`_()
    `plot2d`_(x,[`sin`_(x) `sin`_(2*x) `sin`_(3*x)])
    e=`gce`_();
    e.children(1).polyline_style=3;
    e.children(2).polyline_style=3;
    e.children(3).polyline_style=3;




See Also
~~~~~~~~


+ `plot2d`_ 2D plot
+ `plot2d2`_ 2D plot (step function)
+ `plot2d4`_ 2D plot (arrows style)
+ `clf`_ clear or reset the current graphic figure (window) to default
  values
+ `polyline_properties`_ description of the Polyline entity properties


.. _plot2d4: plot2d4.html
.. _clf: clf.html
.. _plot2d: plot2d.html
.. _plot2d2: plot2d2.html
.. _polyline_properties: polyline_properties.html


