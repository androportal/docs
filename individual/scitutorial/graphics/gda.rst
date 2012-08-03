====
"gda"
====

Scilab Function Last update : 13/12/2005
**gda** - Return handle of default axes.



Calling Sequence
~~~~~~~~~~~~~~~~

a = gda()
a = get("default_axes")




Parameters
~~~~~~~~~~


+ **a** : handle, the handle of the default axes.




Description
~~~~~~~~~~~

The default axes is a graphic entity which is never drawn. It is used
as a reference for the axes properties default values. These default
properties values are used to initialize new axes inside figures.

The **gda** function returns the handle on the default axes. The user
can use this handle to set or get the axes properties default values.

Note that an equivalent default graphic entity exists for figure
entities too (see **gdf** ).



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
        set("figure_style","new")
        subplot(211) //create an axes entity
        plot2d() 
    
       // set other model's properties
        a.background=color('gray')
        a.grid=[5 5 5];
        subplot(212)
        t=0:0.1:5*%pi; 
        plot2d(sin(t),cos(t)) 
    
     
        set(a,"default_values",1); // return to the  default values of the model
                                   // see sda() function
        clf()
        plot2d(sin(t),cos(t))
    
      




See Also
~~~~~~~~

` **gdf** `_,` **sda** `_,` **sdf** `_,` **clf** `_,` **gca** `_,`
**get** `_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/sda.htm
.. _
      : ://./graphics/gdf.htm
.. _
      : ://./graphics/gca.htm
.. _
      : ://./graphics/sdf.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/clf.htm


