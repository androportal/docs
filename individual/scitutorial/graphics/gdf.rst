====
"gdf"
====

Scilab Function Last update : 30/06/2004
**gdf** - Return handle of default figure.



Calling Sequence
~~~~~~~~~~~~~~~~

f = gdf()
f = get("default_figure")




Parameters
~~~~~~~~~~


+ **f** : handle, the handle of the default figure.




Description
~~~~~~~~~~~

The default figure is a graphic entity which is never drawn. It is
used as a reference for the figure properties default values. These
default properties values are used to initialize new figures.

The **gdf** function returns the handle on the default figure. The
user can use this handle to set or get the figure properties default
values.

Note that an equivalent default graphic entity exists for axes
entities too (see **gda** ).



Examples
~~~~~~~~


::

    
       
       set old_style off
       f=gdf() // get the handle of the model figure 
       // setting its' properties
       f.background=7;
       f.figure_name="Function gdf()";
       f.figure_position=[-1 100];
       f.auto_resize="off";
       f.figure_size=[300 461];
       f.axes_size=[600 400];
       plot2d() //create a figure
       scf(1);
       plot3d() //create a second figure
       set(f,"default_values",1); // return to the  default values of figure's model
                                  // see sdf() function
       scf(2);
       plot2d() 
    
      




See Also
~~~~~~~~

` **gda** `_,` **sdf** `_,` **sda** `_,` **gcf** `_,` **get** `_,`
**scf** `_,` **set** `_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/gcf.htm
.. _
      : ://./graphics/scf.htm
.. _
      : ://./graphics/sda.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/gda.htm
.. _
      : ://./graphics/sdf.htm
.. _
      : ://./graphics/get.htm


