


rotate_axes
===========

Interactive rotation of an Axes handle.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rotate_axes()
    rotate_axes(h)




Arguments
~~~~~~~~~

:h Figure or Axes handle. Specify on which Axes the rotation will
  apply.
:



Description
~~~~~~~~~~~

`rotate_axes` funtion is used to perform an interactive rotation of an
Axes object. When the function is called, the user is requested to
click twice on the graphic window. The first click initializes the
rotation and the second ends it.

If an Axes handle is specified as input argument, the rotation will
apply on it. If a figure handle is specified, the first click
determines the Axes objet to rotate. If the function is called with no
argument, the rotation apply on the current figure.



Examples
~~~~~~~~


::

    `clf`_();
    // create two axes in the figure
    `subplot`_(2, 1, 1);
    `plot2d`_;
    `subplot`_(2, 1, 2);
    `plot3d`_;
    
    // rotate only the second axes
    axes2 = `gca`_();
    rotate_axes(axes2);
    
    // rotate the selected one
    rotate_axes();
    // or
    rotate_axes(`gcf`_());




See Also
~~~~~~~~


+ `zoom_rect`_ zoom a selection of the current graphic figure
+ `axes_properties`_ description of the axes entity properties


.. _zoom_rect: zoom_rect.html
.. _axes_properties: axes_properties.html


