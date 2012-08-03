====
"fec_properties"
====

Scilab Data type Last update : 06/12/2005
**fec_properties** - description of the fec entities properties



Description
~~~~~~~~~~~

The Fec entity is a leaf of the graphics entities hierarchy. It
represents 2D finite elements plots (see **fec** , **Sgrayplot** ).

**parent: **This property contains the handle of the parent. The
  parent of the fec entity should be of the type **"Axes"** or
  **"Compound"** .
**children: **This property contains a vector with the **children** of
  the handle. However, **Fec** handles currently do not have any
  **children** .
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** . By default, the
  plot is visible, the value's property is **"on"** . If **"off"** the
  plot is not drawn on the screen.
**data: **This is a three column matrix **[x,y,f]** , where **x(i)**
  and **y(i)** are the coordinates of the **i** 'th node. **f(i)** is
  the value associated to the node **i** .
**triangles: **This is a five column matrix **[tn,n1,n2,n3,flag]** .
  **tn(j)** is the triangle number. **n1(j)** , **n2(j)** and **n3(j)**
  are the index of the nodes which constitute the triangle. (
  **flag(j)** is not used).
**z_bounds: **This [zmin,zmax] vector gives the z values associated
  with the first and the last color (of the current colormap). More
  exactly if the colormap have nc colors and if we note dz = (zmax-
  zmin)/nc , then the part of the triangulation where zmin + (i-1)dz <=
  z < zmin + i dz is filled with the color i ). By default zmin =
  min(func) and zmax = max(func) . If you want to do an animation with
  func values that varie in time, take for zmin and zmax the global
  minimum and maximum or something close.
**user_data: **This field can be use to store any scilab variable in
  the fec data structure, and to retreive it.




Examples
~~~~~~~~


::

    
    
    
       set("figure_style","new"); //create a figure
    
       x=-10:10; y=-10:10;m =rand(21,21);
       Sgrayplot(x,y,m);
       a=get("current_axes");
       f=a.children.children(1)
       f.data(:,3)=(1:size(f.data,1))';
       a.parent.color_map=hotcolormap(64);
    
     
      




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **delete** `_,` **fec** `_,` **Sgrayplot**
`_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/fec.htm
.. _
      : ://./graphics/Sgrayplot.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/delete.htm


