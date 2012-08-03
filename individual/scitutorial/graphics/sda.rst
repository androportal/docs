====
"sda"
====

Scilab Function Last update : 13/01/2005
**sda** - Set default axes.



Calling Sequence
~~~~~~~~~~~~~~~~

sda()
a = gda(); set(a,"default_values",1)




Parameters
~~~~~~~~~~


+ **a** : handle, the handle of the default axes.




Description
~~~~~~~~~~~

This routine resets the axes' model to default values.



Examples
~~~~~~~~


::

    
       
      x=[0:0.1:2*%pi]';
      set old_style off
      f=get("default_figure"); // get the handle of the model figure 
      a=get("default_axes"); // get the handle of the model axes 
        // setting its' properties
      f.figure_size=[1200 900];
      f.figure_position=[0 0]; 
      a.background=4; 
      a.box="off";
      a. tics_color=5;
      a.labels_font_color=25;
      a.labels_font_size=4;
      a.sub_tics=[7 3];
      a.x_location="middle";
      a.y_location="middle";
      a.tight_limits="on";
      a.thickness=2;
      a.grid=[-1 24];
      subplot(221);
      plot2d(x-2,sin(x))
      subplot(222);
      plot2d(x-6,[2*cos(x)+.7 2*cos(x)+.9 cos(2*x) .2+sin(3*x)],[-1,-2,-3 -4])
      sda() // return to the  default values of the axes' model
      subplot(223);
      plot2d(x-2,sin(x))
      subplot(224);
      plot2d(x-6,[2*cos(x)+.7 2*cos(x)+.9 cos(2*x) .2+sin(3*x)],[-1,-2,-3 -4])
      xdel(0)
      plot2d(x-2,sin(x))
      
    
      




See Also
~~~~~~~~

` **sdf** `_,` **gda** `_,` **gdf** `_,` **set** `_,`
**graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/gdf.htm
.. _
      : ://./graphics/gda.htm
.. _
      : ://./graphics/sdf.htm


