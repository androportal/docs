====
"text_properties"
====

Scilab Data type Last update : 08/12/2006
**text_properties** - description of the Text entity properties



Description
~~~~~~~~~~~

The Text entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for string drawing

**parent: **This property contains the handle of the parent. The
  parent of the text entity should be of the type **"Axes"** or
  **"Compound"** .
**children: **This property contains a vector with the **children** of
  the handle. However, text handles currently do not have any
  **children** .
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** .By default, the text
  is visible, the value's property is **"on"** . If **"off"** the text
  is not displayed on the screen.
**text: **This field is the character string vector which contains the
  text.
**data: **This field is the vector **[x,y,[z]]** of the origin of the
  text in the data units of the axes.
**box: **This field takes the values **"on"** or **"off"** . If
  **"on"** a box is draw around the text with a line on its edge and a
  background.
**line_mode: **Rhis boolean propertyallows to draw only the background
  of the box when the **box** property is **"on"** . If line_mode is
  **"off"** , the line of the box is not drawn.
**fill_mode: **This boolean property allows to draw or not the
  background of the box when the **box** property is **"on"** . If
  **fill_mode** is **"off"** , the background of the box is not
  transparent.
**font_foreground: **This field contains the color used to display the
  characters of the text. Its value should be a color index (relative to
  the current colormap).
**foreground: **This field contains the color used to display the line
  on the edge of the box. Its value should be a color index (relative to
  the current colormap).
**background: **This field contains the color used to fill the box
  around of the text. Its value should be a color index (relative to the
  current colormap).
**font_size: **The **font_size** property is used to select the type
  of size of the text. Its value should be an integer in between 0 and 5
  which stands for 8pt, 10pt, 12pt, 14pt, 18pt and 24pt.
**font_style: **Seven differents fonts are available : "Courrier",
  "Symbol", "Times", "Times Italic", "Times Bold", "User defined". The
  **font_style** property is an index in [0 6] which is associated to
  the previous font names.
**font_angle: **This property determines the orientation of the text
  string. Specify value of rotation in degrees.
**clip_state: **This field contains the **clip_state** property value
for the text. Its value should be :
    **** **"off"** this means that the text is not clipped.
    **** **"cliprf"** this means that the text is clipped outside the Axes
      box.
    **** **"on"** this means that the text is clipped outside the
      rectangle given by the property **clip_box** .


**clip_box: **This field contains the **clip_box** property. Its value
  should be an empty matrix if clip_state is "off" or the vector
  **[x,y,w,h** ] (upper-left point width height).
**user_data: **This field can be use to store any scilab variable in
  the text data structure, and to retreive it.




Examples
~~~~~~~~


::

       
    
      set("figure_style","new") //create a figure
       a=get("current_axes");
       a.data_bounds=[0,0;1,1];
    
       xstring(0.5,0.6,"Scilab is not esilaB",0,0)
    
       t=get("hdl")   //get the handle of the newly created object
    
       t.font_foreground=6;
       t.font_size=5;
       t.font_style=5;
       t.text="SCILAB";
       t.font_angle=90;
    
     




See Also
~~~~~~~~

` **set** `_,` **get** `_,` **delete** `_,` **xtitle** `_,`
**graphics_entities** `_,



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
      : ://./graphics/get.htm
.. _
      : ://./graphics/delete.htm


