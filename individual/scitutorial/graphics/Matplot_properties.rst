====
"Matplot_properties"
====

Scilab Data type Last update : 13/12/2005
**Matplot_properties** - description of the Matplot entities
properties



Description
~~~~~~~~~~~

The Matplot entity is a leaf of the graphics entities hierarchy. It
represents 2D plots of surface using colors and images (see
**Matplot** and **Matplot1** ).

**parent: **This property contains the handle of the parent. The
  parent of the Matplot entity should be of the type **"Axes"** .
**children: **This property contains a vector with the **children** of
  the handle. However, **Matplot** handles currently do not have any
  **children** .
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** . By default, the
  plot is visible, the value's property is **"on"** . If **"off"** the
  plot is not drawn on the screen.
**data: **This field defines a [ **m** x **n** ] **color** data matrix
  using the current colormap. The color associated to **color(i,j)** is
  used do draw a small square of length 1 with center at location
  **(x=j,y=(m-i+1))** .
**user_data: **This field can be use to store any scilab variable in
  the Matplot data structure, and to retreive it.




Examples
~~~~~~~~


::

    
    
       set("figure_style","new") //create a figure
        
       Matplot((1:xget("lastpattern")))
       e=gce(); // get current entity
    
       e.data=e.data($:-1:1) // reverse order
    
     
      




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **delete** `_,` **grayplot** `_,`
**Matplot** `_,` **Matplot1** `_,` **graphics_entities** `_,`
**grayplot_properties** `_,



Author
~~~~~~

F.Leray

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/Matplot1.htm
.. _
      : ://./graphics/grayplot_properties.htm
.. _
      : ://./graphics/Matplot.htm
.. _
      : ://./graphics/grayplot.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/delete.htm


