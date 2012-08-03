====
"polyline_properties"
====

Scilab Data type Last update : 05/01/2006
**polyline_properties** - description of the Polyline entity
properties



Description
~~~~~~~~~~~

The Polyline entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for polylines.

**parent: **This field contains the handle of the parent. The parent
  of the polyline entity should be of the type **"Axes"** or
  **"Compound"** .
**children: **This property contains a vector with the **children** of
  the handle. However, polyline handles currently do not have any
  **children** .
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** . By default, the
  polyline is visible, the value's property is **"on" ** . If **"off"**
  the polyline is not drawn on the screen.
**data: **This field contains the values for the x and y coordinates.
  Component Z is to be added in the case of three-dimensional axes. It
  is a two (three) column matrix **[x,y,[z]]** of points.
**closed: **This field determines wether the polyline is closed or
  not: its value can be **"on"** or **"off"** (no default value, it
  depends on the primitive used to create the polyline).
**line_mode: **This field contains the default **line_mode** property
  value for the polyline. Its value should be **"on" ** (line drawn) or
  **"off"** (no line drawn).
**fill_mode: **If the **polyline_style** field is different of 5, fill
  the background of the curve with color defined by the **background**
  property.
**line_style: **The **line_style** property value should be an integer
  in [1 6]. 1 stands for solid the other value stands for a selection of
  dashes (see ` **getlinestyle** `_).
**thickness: **This field contains the line **thickness** property.
  It's value should be positive integer.
**arrow_size_factor: **This integer allows to set the size of arrows
  drawn on the polyline. The actual size of arrows is the product of the
  **thickness** and the the size factor.
**polyline_style: **This property sets several polyline drawing mode:
    ****If the value is 0 or 1 lines are drawn between two consecutives
      points.
    ****If the value is 2 the polyline produces a staircase plot. Two
      consecutives points are linked by an horizontal line followed by a
      vertical line.
    ****If the value is 3 the polyline produces a bar plot. For each given
      point (x,y) a vertical line is drawn from (x,y) to (x,0).
    ****If the value is 4 arrows are drawn between two consecutives
      points.
    ****If the value is 5 the polyline is filled (patch).
    ****If the value is 6 the polyline is a Matlab-like bar object. The
      properties **bar_shift** and **bar_width** command its appearance.


**foreground: **This field contains the default **foreground**
  property used to draw the polyline. Its value should be a color index
  (relative to the current colormap).
**background: **This field contains the color used to fill the
  background of the polyline. Its value should be a color index
  (relative to the current colormap).
**interp_color_vector: **This field contains the vector of color
  indices used to fill in the polyline when the **interp_color_mode**
  property is set to **"on"** . It defines the intervals of colormap
  indices used to fill each segment. For instance, the first segment
  will be filled by every colors whose index is between the first two
  elements of the vecor. It is only applicable if the polyline is
  defined by 3 or 4 points. Therefore, the size of the vector must match
  this dimension.
**interp_color_mode: **This field determines if we are using the
  interpolated shading mode to fill the polyline : its value can be
  **"on"** or **"off"** . Note that an **interp_color_vector** must be
  defined before switching to "on" value (see above).
**mark_mode: **This field contains the default **mark_mode** property
  value for the polyline. Its value should be **"on"** (marks drawn) or
  **"off"** (no marks drawn).
**mark_style: **The **mark_style** property value is used to select
  the type of mark to use when **mark_mode** property is **"on"** . The
  value should be an integer in [0 14] which stands for: dot, plus,
  cross, star, filled diamond, diamond, triangle up, triangle down,
  diamond plus, circle, asterisk, square, triangle right, triangle left
  and pentagram.
**mark_size_unit: **This field contains the default **mark_size_unit**
  property value. If **mark_size_unit** is set to **"point"** , then the
  **mark_size** value is directly given in points. When
  **mark_size_unit** is set to **"tabulated"** , **mark_size** is
  computed relative to the font size array: therefore, its value should
  be an integer in [0 5] which stands for 8pt, 10pt, 12pt, 14pt, 18pt
  and 24pt. Note that ` **plot2d** `_ and pure scilab functions use
  **tabulated** mode as default ; when using ` **plot** `_ function, the
  **point** mode is automatically enabled.
**mark_size: **The **mark_size** property is used to select the type
  of size of the marks when **mark_mode** property is **"on"** . Its
  value should be an integer between 0 and 5 whith stands for 8pt, 10pt,
  12pt, 14pt, 18pt and 24pt.
**mark_foreground: **This field contains the **mark_foreground**
  property value which is the marks' edge color. Its value should be a
  color index (relative to the current color_map).
**mark_background: **This field contains the **mark_background**
  property value which is the marks' face color. Its value should be a
  color index (relative to the current color_map).
**x_shift: **This field contains the offset computed by a call to the
  ` **bar** `_ function (or re-computed by a call to ` **barhomogenize**
  `_) and is used to perform a nice vertical bar representation. Note
  that this offset is also taken into account for all the other
  **polyline_style** . The unit is expressed in user coordinates.
**y_shift: **This field contains the offset computed by a call to the
  ` **bar** `_ function (or re-computed by a call to ` **barhomogenize**
  `_) and is used to perform a nice horizontal bar representation. Note
  that this offset is also taken into account for all the other
  **polyline_style** . The unit is expressed in user coordinates.
**z_shift: **This field contains the offset the user may specify. Note
  that this offset is taken into account for all the **polyline_style**
  . The unit is expressed in user coordinates.
**bar_width: **This field determines the width of the selected
  polyline when its **polyline_style** is set to bar mode (case 6) : the
  unit is expressed in user coordinates.
**clip_state: **This field contains the **clip_state** property value
for the polyline. It should be :
    **** **"off"** this means that the polyline is not clipped.
    **** **"clipgrf"** this means that the polyline is clipped outside the
      Axes box.
    **** **"on"** this means that the polyline is clipped outside the
      rectangle given by property clip_box.


**clip_box: **This field is to determinate the **clip_box** property.
  By Default its value should be an empty matrix if clip_state is "off".
  Other cases the vector **[x,y,w,h]** (upper-left point width height)
  defines the portions of the polyline to display, however
  **clip_state** property value will be changed.
**user_data: **This field can be use to store any scilab variable in
  the polyline data structure, and to retrieve it.




Examples
~~~~~~~~


::

      
    
       set("figure_style","new") //create a figure
       a=get("current_axes")//get the handle of the newly created axes
       a.data_bounds=[-2,-2;2,2];
    
       xpoly(sin(2*%pi*(0:5)/5),cos(2*%pi*(0:5)/5),"lines",0)
       p=get("hdl"); //get handle on current entity (here the polyline entity)
       p.foreground=2;
       p.thickness=3;
       p.mark_style=9;
       d=p.data;d(1,:)=[0 0];p.data=d;
       a.rotation_angles=[0 45];
       
       p.data=[(-2:0.1:2)' sin((-2:0.1:2)*%pi)']
       p.mark_mode="off";
       p.polyline_style=3;
       p.line_style=4;
    
    
     




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **delete** `_,` **xpoly** `_,` **xfpoly**
`_,` **xpolys** `_,` **xfpolys** `_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/xpolys.htm
.. _
        : ://./graphics/plot2d.htm
.. _
      : ://./graphics/xfpolys.htm
.. _
        : ://./graphics/plot.htm
.. _
        : ://./graphics/bar.htm
.. _
        : ://./graphics/barhomogenize.htm
.. _
        : ://./graphics/getlinestyle.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/xpoly.htm
.. _
      : ://./graphics/delete.htm
.. _
      : ://./graphics/xfpoly.htm


