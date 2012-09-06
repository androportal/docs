


sda
===

Set default axes.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sda()
    a = gda(); set(a,"default_values",1)




Arguments
~~~~~~~~~

:a handle, the handle of the default axes.
:



Description
~~~~~~~~~~~

This routine resets the axes' model to default values.



Examples
~~~~~~~~


::

    x=[0:0.1:2*%pi]';
    f=`get`_("default_figure"); // get the handle of the model figure 
    a=`get`_("default_axes");   // get the handle of the model axes 
                             // setting its' properties
    f.figure_size=[1200 900];
    f.figure_position=[0 0]; 
    a.background=4; 
    a.box="off";
    a.foreground=5;
    a.labels_font_color=25;
    a.labels_font_size=4;
    a.sub_tics=[7 3];
    a.x_location="middle";
    a.y_location="middle";
    a.tight_limits="on";
    a.thickness=2;
    a.grid=[-1 24];
    `subplot`_(221);
    `plot2d`_(x-2,`sin`_(x))
    `subplot`_(222);
    `plot2d`_(x-6,[2*`cos`_(x)+.7 2*`cos`_(x)+.9 `cos`_(2*x) .2+`sin`_(3*x)],[-1,-2,-3 -4])
    sda() // return to the default values of the axes' model
    `subplot`_(223);
    `plot2d`_(x-2,`sin`_(x))
    `subplot`_(224);
    `plot2d`_(x-6,[2*`cos`_(x)+.7 2*`cos`_(x)+.9 `cos`_(2*x) .2+`sin`_(3*x)],[-1,-2,-3 -4])
    `xdel`_(0)
    `plot2d`_(x-2,`sin`_(x))




See Also
~~~~~~~~


+ `sdf`_ Set default figure.
+ `gda`_ Return handle of default axes.
+ `gdf`_ Return handle of default figure.
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _sdf: sdf.html
.. _gdf: gdf.html
.. _gda: gda.html


