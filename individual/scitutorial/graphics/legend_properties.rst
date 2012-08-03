====
"legend_properties"
====

Scilab Data type Last update : 08/12/2005
**legend_properties** - description of the Legend entity properties.
**Warning**: This object will be rebuild in the next version.



Description
~~~~~~~~~~~

The Legend entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for legends drawn below **plot2dx**
graphs. For each line plotted, the legend shows a sample of the line
type, marker symbol, and color.

**parent: **This property contains the handle of the parent. The
  parent of the legend entity should be of the type **"Compound"** .
  This Compound entity contains also the remainder of the graph's
  entities.
**children: **This property contains a vector with the **children** of
  the handle. However, **legend** handles currently do not have any
  **children** .
**line_mode: **This field contains the default **line_mode** property
  value for the segs. Its value should be **"on" ** (line drawn) or
  **"off"** (no line drawn).
**mark_mode: **This field contains the default **mark_mode** property
  value for the polyline. Its value should be **"on"** (marks drawn) or
  **"off"** (no marks drawn).
**mark_foreground: **This field contains the **mark_foreground**
  property value which is the marks' edge color. Its value should be a
  color index (relative to the current color_map).
**mark_background: **This field contains the **mark_background**
  property value which is the marks' face color. Its value should be a
  color index (relative to the current color_map).
**foreground: **This field contains the color index used to draw
  legend. Its value should be a color index (relative to the current
  colormap).
**visible: **This field contains the **visible** property value for
  the entity . It should be **"on" ** or **"off"** . If **"on"** the
  legend is drawn , If **"off"** the legend is not displayed on the
  screen.
**text: **This field is the character string vector which contains the
  legend.
**font_size: **The **font_size** property is used to select the type
  of size of the text. Its value should be an integer in between 0 and 5
  which stands for 8pt, 10pt, 12pt, 14pt, 18pt and 24pt.
**font_style: **Seven differents fonts are available : "Courrier",
  "Symbol", "Times", "Times Italic", "Times Bold", "User defined". The
  **font_style** property is an index in [0 6] which is associated to
  the previous font names.




Examples
~~~~~~~~


::

    
       
    set("figure_style","new") //create a figure
    // x initialisation 
    x=[0:0.1:2*%pi]';
    plot2d(x,[sin(x) sin(2*x) sin(3*x)],..
      [1,2,3],leg="L1@L2@L3")
    a=get("current_axes");
    l=a.children.children(1)
    l.text="sin(x)@sin(2*x)@sin(3*x)";
    l.visible="off"; // invisible
    l.font_size = 2;
    l.font_style = 5;
    l.visible='on';
    
        
    
     
      




See Also
~~~~~~~~

` **plot2d** `_,` **graphics_entities** `_,



Author
~~~~~~

Djalel ABDEMOUCHE

.. _
      : ://./graphics/graphics_entities.htm
.. _
      : ://./graphics/plot2d.htm


