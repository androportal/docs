


gdf
===

Return handle of default figure.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = gdf()
    f = get("default_figure")




Arguments
~~~~~~~~~

:f handle, the handle of the default figure.
:



Description
~~~~~~~~~~~

The default figure is a graphic entity which is never drawn. It is
used as a reference for the figure properties default values. These
default properties values are used to initialize new figures.

The `gdf` function returns the handle on the default figure. The user
can use this handle to set or get the figure properties default
values.

Note that an equivalent default graphic entity exists for axes
entities too (see `gda`).



Examples
~~~~~~~~


::

    f=gdf() // get the handle of the model figure 
    // setting its' properties
    f.background=7;
    f.figure_name="Function gdf()";
    f.figure_position=[-1 100];
    f.auto_resize="off";
    f.figure_size=[300 461];
    f.axes_size=[600 400];
    `plot2d`_() //create a figure
    `scf`_(1);
    `plot3d`_() //create a second figure
    `set`_(f,"default_values",1); // return to the  default values of figure's model
                               // see sdf() function
    `scf`_(2);
    `plot2d`_()




See Also
~~~~~~~~


+ `gda`_ Return handle of default axes.
+ `sdf`_ Set default figure.
+ `sda`_ Set default axes.
+ `gcf`_ Return handle of current graphic window.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `scf`_ set the current graphic figure (window)
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _gcf: gcf.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _sdf: sdf.html
.. _set: set.html
.. _scf: scf.html
.. _gda: gda.html
.. _sda: sda.html


