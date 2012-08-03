====
"sdf"
====

Scilab Function Last update : 13/01/2005
**sdf** - Set default figure.



Calling Sequence
~~~~~~~~~~~~~~~~

sdf()
f = gdf(); set(f,"default_values",1)




Parameters
~~~~~~~~~~


+ **f** : handle, the handle of the default figure.




Description
~~~~~~~~~~~

This routine resets the figure's model to default values.



Examples
~~~~~~~~


::

    
       
       x=[0:0.1:2*%pi]';
       set old_style off
       f=get("default_figure"); // get the handle of the model figure 
       a=get("default_axes"); // get the handle of the model axes 
         // setting its' properties
       f.background=4;
       f.auto_resize="off";
       f.figure_size=[400 300];
       f.axes_size=[600 400];
       f.figure_position=[0 -1];
       a.x_location="top";
       a.y_location="left";
       for (i=1:6)
         xset("window",i) // create a figure with the identifier i
         plot2d(x,[sin(x) cos(x)],[i -i])
         xclick();
         if i == 4, sdf(); end // return to the  default values of the figure's model
        end
        
      




See Also
~~~~~~~~

` **sda** `_,` **gdf** `_,` **gda** `_,` **set** `_,`
**graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/sda.htm
.. _
      : ://./graphics/gdf.htm
.. _
      : ://./graphics/gda.htm


