


plot2d2
=======

2D plot (step function)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    plot2d2([x],y)
    plot2d2([x],y,<opt_args>)
    plot2d2([logflag],x,y,[style,strf,leg,rect,nax])




Arguments
~~~~~~~~~

:args see `plot2d` for a description of parameters.
:



Description
~~~~~~~~~~~

`plot2d2` is the same as `plot2d` but the functions given by `(x,y)`
are supposed to be piecewise constant.

By default, successive plots are superposed. To clear the previous
plot, use `clf()`.

Enter the command `plot2d2()` to see a demo. Note that all the modes
proposed by `plot2dxx` (xx = 1 to 4) can be enabled using `plot2d` and
setting the `polyline_style` option to the corresponding number.



Sample
~~~~~~



Examples
~~~~~~~~


::

    // plots a step function of value i on the segment [i,i+1]
    // the last segment is not drawn
    plot2d2([1:4],[1:4],1,"111","step function",[0,0,5,5])
    // compare the following with plot2d
    x=[0:0.1:2*%pi]';
    `clf`_()
    plot2d2(x,[`sin`_(x) `sin`_(2*x) `sin`_(3*x)])
    `clf`_();
    `plot2d`_(x,[`sin`_(x) `sin`_(2*x) `sin`_(3*x)])
    e=`gce`_();
    e.children(1).polyline_style=2;
    e.children(2).polyline_style=2;
    e.children(3).polyline_style=2;




See Also
~~~~~~~~


+ `plot2d`_ 2D plot
+ `plot2d3`_ 2D plot (vertical bars)
+ `plot2d4`_ 2D plot (arrows style)
+ `subplot`_ divide a graphics window into a matrix of sub-windows
+ `clf`_ clear or reset the current graphic figure (window) to default
  values
+ `polyline_properties`_ description of the Polyline entity properties


.. _plot2d4: plot2d4.html
.. _clf: clf.html
.. _plot2d: plot2d.html
.. _subplot: subplot.html
.. _plot2d3: plot2d3.html
.. _polyline_properties: polyline_properties.html


