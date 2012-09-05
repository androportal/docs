


unzoom
======

unzoom graphics



Calling Sequence
~~~~~~~~~~~~~~~~


::

    unzoom()
    unzoom(H)




Arguments
~~~~~~~~~

:H A vector of Figure or Axes handle.
:



Description
~~~~~~~~~~~

`unzoom()` is used to remove the zoom effect for all the axes of the
current graphic figure:

`unzoom(H)` is used to remove the zoom effect for all the Figures and
Axes given by the vector of handles `H`. Removing zoom effect for a
Figure is the equivalent of removing zoom effect on all its Axes
children.



Examples
~~~~~~~~


::

    `clf`_()
    x=0:0.01:6*%pi;
    `plot2d`_(x,`sin`_(x^2))
    `zoom_rect`_([16,-1,18,1])
    unzoom()
    
    //subplots accordingly
    `clf`_()
    x=0:0.01:6*%pi;
    `subplot`_(211)
    `plot2d`_(x,`cos`_(x))
    a1=`gca`_();
    `subplot`_(212)
    `plot2d`_(x,`cos`_(2*x))
    a2=`gca`_();
    rect=[3 -2 7 10]; // a rectangle specified in the current axes (last one) coordinates
    `zoom_rect`_(rect) 
    unzoom(a1) // unzoom first plot only
    unzoom(a2) // unzoom second plot only
    `zoom_rect`_(rect) // zoom again
    unzoom(`gcf`_()) // unzoom all the axes, equivalent to unzoom()




See Also
~~~~~~~~


+ `zoom_rect`_ zoom a selection of the current graphic figure
+ `axes_properties`_ description of the axes entity properties


.. _zoom_rect: zoom_rect.html
.. _axes_properties: axes_properties.html


