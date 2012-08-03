====
"arc_properties"
====

Scilab Data type Last update : 16/12/2005
**arc_properties** - description of the Arc entity properties



Description
~~~~~~~~~~~

The Arc entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for ellipses and part of ellipses and
the filled ones.

**parent: **This field contains the handle of the parent. The parent
  of the arc entity should be of the type **"Axes"** or **"Compound"** .
**children: **This property contains a vector with the **children** of
  the handle. However, **arc** handles currently do not have any
  **children** .
**thickness: **This field contains the line **thickness** property.
  Its value should be positive integer.
**line_style: **The **line_style** property value should be an integer
  in [1 6]. 1 stands for solid the other value stands for a selection of
  dashes.
**line_mode: **This property allows to display or not the line
  representing the arc. The value must be **"on"** or **"off"** .
**fill_mode: **If **fill_mode** property value is **"on" ** , the arc
  is filled with the **background** color.
**foreground: **This field contains the default **foreground**
  property value used to draw or to fill arc. It should be a color index
  (relative to the current colormap).
**background: **This field contains the color used to fill the arc. It
  should be a color index (relative to the current colormap).
**data: **This property is to return the coordinates of the upper-left
  point, the width and the height of the inclosing rectangle as well as
  the boundary angles of the sector. It is the matrix
  **[xleft,yup,[zup],width,height,a1,a2]** where **a1/64** and **a2/64**
  are the sector boundary angles in degree.
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** . If **"on"** the arc
  is drawn, If **"off"** the arc is not displayed on the screen.
**clip_state: **This field contains the **clip_state** property value
for the arc. Clip_state value should be :
    **** **"off"** this means that the arc is not clipped
    **** **"clipgrf"** this means that the arc is clipped outside the Axes
      box.
    **** **"on"** this means that the arc is clipped outside the arc given
      by property clip_box.


**clip_box: **This field is to determinate the **clip_box** property.
  By Default its value should be an empty matrix if clip_state is "off".
  Other cases the vector **[x,y,w,h]** (upper-left point width height)
  defines the portions of the arc to display, however **clip_state**
  property value will be changed.
**user_data: **This field can be use to store any scilab variable in
  the arc data structure, and to retreive it.




Examples
~~~~~~~~


::

    
       set("figure_style","new") //create a figure
       a=get("current_axes");//get the handle of the newly created axes
       a.data_bounds=[-2,-2;2,2];
    
       xarc(-1.5,1.5,3,3,0,360*64)
    
       arc=get("hdl"); //get handle on current entity (here the arc entity)
       arc.fill_mode="on";
       arc.foreground=5;
       arc.data(:,[3 6])=[2 270*64];  
       xfarc(-.5,1,.4,.6,0,360*64);
       arc.visible="off";
    
     




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **delete** `_,` **xarc** `_,` **xarcs**
`_,` **xfarc** `_,` **xfarcs** `_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/xfarcs.htm
.. _
      : ://./graphics/xfarc.htm
.. _
      : ://./graphics/xarcs.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/delete.htm
.. _
      : ://./graphics/xarc.htm


