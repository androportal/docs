


gda
===

Return handle of default axes.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    a = gda()
    a = get("default_axes")




Arguments
~~~~~~~~~

:a handle, the handle of the default axes.
:



Description
~~~~~~~~~~~

The default axes is a graphic entity which is never drawn. It is used
as a reference for the axes properties default values. These default
properties values are used to initialize new axes inside figures.

The `gda` function returns the handle on the default axes. The user
can use this handle to set or get the axes properties default values.

Note that an equivalent default graphic entity exists for figure
entities too (see `gdf`).



Examples
~~~~~~~~


::

    a=gda() // get the handle of the model axes 
    // set its' properties
    a.box="off";
    a.foreground=2;
    a.labels_font_size=3;
    a.labels_font_color=5;
    a.sub_tics=[5 5 3];
    a.x_location="top";
    
    //now used the model axes for drawing
    `subplot`_(211) //create an axes entity
    `plot2d`_() 
    
    // set other model's properties
    a.background=`color`_('gray')
    a.grid=[5 5 5];
    `subplot`_(212)
    t=0:0.1:5*%pi; 
    `plot2d`_(`sin`_(t),`cos`_(t)) 
     
    `set`_(a,"default_values",1); // return to the  default values of the model
                               // see sda() function
    `clf`_()
    `plot2d`_(`sin`_(t),`cos`_(t))




See Also
~~~~~~~~


+ `gdf`_ Return handle of default figure.
+ `sda`_ Set default axes.
+ `sdf`_ Set default figure.
+ `clf`_ clear or reset the current graphic figure (window) to default
  values
+ `gca`_ Return handle of current axes.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _sdf: sdf.html
.. _gdf: gdf.html
.. _clf: clf.html
.. _gca: gca.html
.. _sda: sda.html


