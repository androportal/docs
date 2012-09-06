


sdf
===

Set default figure.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sdf()
    f = gdf(); set(f,"default_values",1)




Arguments
~~~~~~~~~

:f handle, the handle of the default figure.
:



Description
~~~~~~~~~~~

This routine resets the figure's model to default values.



Examples
~~~~~~~~


::

    x=[0:0.1:2*%pi]';
    f=`get`_("default_figure"); // get the handle of the model figure 
    a=`get`_("default_axes");   // get the handle of the model axes 
                             // setting its' properties
    f.background=4;
    f.auto_resize="off";
    f.figure_size=[400 300];
    f.axes_size=[600 400];
    f.figure_position=[0 -1];
    a.x_location="top";
    a.y_location="left";
    for (i=1:6)
      `xset`_("window",i) // create a figure with the identifier i
      `plot2d`_(x,[`sin`_(x) `cos`_(x)],[i -i])
      `xclick`_();
      if i == 4, sdf(); end // return to the  default values of the figure's model
    end




See Also
~~~~~~~~


+ `sda`_ Set default axes.
+ `gdf`_ Return handle of default figure.
+ `gda`_ Return handle of default axes.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _gdf: gdf.html
.. _gda: gda.html
.. _sda: sda.html


