====
"label_properties"
====

Scilab Data type Last update : 24/01/2006
**label_properties** - description of the Label entity properties



Description
~~~~~~~~~~~

The Label entity is a child of an **Axes** entity. When an Axes entity
is built, the Title and Labels handles come with it and are part of
the Axes properties. Therefore, the properties of those sub-objects
are editable via the Axes handle (see **gca** and **gda** ). This
entity defines the parameters for label drawing:

**parent: **This property contains the handle of the parent. The
  parent of the label entity should be of type **"Axes"** .Note that,
  for now, Label entity is exclusively used in **title** , **x_label** ,
  **y_label** and **z_label** building.
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** .By default, the
  label is visible, the value's property is **"on"** . If **"off"** the
  label is not displayed on the screen.
**text: **This field is the character string vector which contains the
  label.
**foreground: **This field contains the color used to display the
  characters label and the line around the box if any. Its value should
  be a color index (relative to the current colormap).
**background: **This field contains the color used to fill the box if
  any. Its value should be a color index (relative to the current
  colormap).
**fill_mode: **This field takes the values **"on"** or **"off"** . If
  **"on"** a box is draw around the text with a line on its edge and a
  background.
**font_style: **Seven differents fonts are available : "Courrier",
  "Symbol", "Times", "Times Italic", "Times Bold", "User defined". The
  font_size property is an index in [0 6] which is associated to the
  previous font names.
**font_size: **The **font_size** property is used to select the type
  of size of the label. Its value should be an integer in between 0 and
  5 which stands for 8pt, 10pt, 12pt, 14pt, 18pt and 24pt.
**font_angle: **This scalar allows you to turn the label. The font is
  turned clockise with the angle given in degrees. Note that changing
  the **font_angle** will automatically disable the **auto_rotation**
  property.
**auto_rotation: **If **"on"** , Scilab computes automaticaly the best
  angle to turn the label for the display. If **"off"** , the label can
  be manually turned with the **font_angle** property.
**position: **This 2d vector allows you to place manually the label on
  the screen. The position is stored in the data units of the axes. Note
  that changing the **font_angle** will automatically disable the
  **auto_position** property.
**auto_position: **If **"on"** , Scilab computes automaticaly the best
  position in the graphic window for the display. If **"off"** , the
  label can be manually places with the **position** property.




Examples
~~~~~~~~


::

       
    
       set("figure_style","new") //create a figure
       a=get("current_axes");
       a.title
       type(a.title)
       plot3d()
       a.x_label
       a.y_label
       a.z_label
       xtitle("My title","my x axis label", "Volume") 
       a.z_label.text="Month"
    
       t=a.title;
       t.foreground=9;
       t.font_size=5;
       t.font_style=5;
       t.text="SCILAB";
       
       xlabel=a.x_label;
       xlabel.text=" Weight"
       xlabel.font_style= 5;
       a.y_label.foreground = 12;
     




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **delete** `_,` **xtitle** `_,`
**graphics_entities** `_,` **axes_properties** `_,`
**text_properties** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/set.htm
.. _
      : ://./graphics/xtitle.htm
.. _
      : ://./graphics/axes_properties.htm
.. _
      : ://./graphics/get.htm
.. _
      : ://./graphics/text_properties.htm
.. _
      : ://./graphics/delete.htm


