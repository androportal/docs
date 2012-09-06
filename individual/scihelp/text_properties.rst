


text_properties
===============

description of the Text entity properties



Description
~~~~~~~~~~~

The Text entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for string drawing

:parent: This property contains the handle of the parent. The parent
  of the text entity should be of the type `"Axes"` or `"Compound"`.
: :children: This property contains a vector with the `children` of
  the handle. However, text handles currently do not have any
  `children`.
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"` .By default, the text is
  visible, the value's property is `"on"`. If `"off"` the text is not
  displayed on the screen.
: :text: the matrix containing the strings of the object. The rows of
  the matrix are displayed horizontally and the columns vertically.
  Starting from Scilab 5.2, it is possible to write `LaTeX or MathML
  expression`_.
: :alignment: Specify how the strings are aligned in their columns.
  The value must be **'left'**, **'center'**or **'right'**.
: :data: This field is the vector `[x,y,[z]]` of the origin of the
  text in the data units of the axes.
: :box: This field takes the values `"on"` or `"off"`. If `"on"` a box
  is draw around the text with a line on its edge and a background.
: :line_mode: This boolean property allows to draw or not a line
  around the box when the `box` property is `"on"`. If `line_mode` is
  `"off"`, the line of the box is not drawn.
: :fill_mode: This boolean property allows to draw or not the
  background of the box when the `box` property is `"on"`. If
  `fill_mode` is `"off"`, the background of the box is not transparent.
: :text_box: A two dimensionnal vector specifying the size of a
  rectangle in user coordinates. The rectangle is used when the
  text_box_mode property is set to **'centered'** or **'filled'**.
: :text_box_mode: May have three different value : **'off'**,
  **'centered'** or **'filled'**. If **'off'**, the strings are
  displayed using the given font and the data field specifies the
  position of the lower-left point of the text. If **'centered'**, the
  text is displayed in the middle of the rectangle whose size is given
  by text_box. If **'filled'** the font size of the strings will be
  expanded to fill the rectangle. When using **'off'** or **'centered'**
  modes, text size remains constant upon zooming. They are the best
  modes to create annotations in a graph. On the contrary, when using
  the **'filled'** mode, the text size follow the graphic scale. It is
  then possible to zoom upon text objects.
: :font_foreground: This field contains the color used to display the
  characters of the text. Its value should be a color index (relative to
  the current colormap).
: :foreground: This field contains the color used to display the line
  on the edge of the box. Its value should be a color index (relative to
  the current colormap).
: :background: This field contains the color used to fill the box
  around of the text. Its value should be a color index (relative to the
  current colormap).
: :font_size: It is a scalar specifying the displayed characters size.
  If `fractional_font` property is `"off"` only the integer part of the
  value is used. For more information see `graphics_fonts`_.
: :font_style: Specifies the font used to display the character
  strings. This is a positive integer referecing one of the loaded
  fonts. Its value must be between 0, referecing the first font, and the
  number of loaded fonts minus one, referencing the last font. For more
  information see `graphics_fonts`_.
: :fractional_font: This property specify whether text is displayed
  using fractional font sizes. Its value must be either `"on"` or
  `"off"`. If `"on"` the floating point value of `font_size` is used for
  display and the font is anti-aliased. If `"off"` only the integer part
  is used and the font is not smoothed.
: :font_angle: This property determines the orientation of the text
  string. Specify value of rotation in degrees.
: :clip_state: This field contains the `clip_state` property value for
the text. Its value should be :

    + `"off"` this means that the text is not clipped.
    + `"clipgrf"` this means that the text is clipped outside the Axes
      box.
    + `"on"` this means that the text is clipped outside the rectangle
      given by the property `clip_box`.

: :clip_box: This field contains the `clip_box` property. Its value
  should be an empty matrix if clip_state is "off" or the vector
  `[x,y,w,h`] (upper-left point width height).
: :user_data: This field can be use to store any scilab variable in
  the text data structure, and to retreive it.
:



Sample
~~~~~~



Examples
~~~~~~~~


::

    a=`get`_("current_axes");
    a.data_bounds=[0,0;1,1];
    a.axes_visible = 'on' ;
    
    `xstring`_(0.5,0.5,"Scilab is not esilaB",0,0)
    
    t=`get`_("hdl")   //get the handle of the newly created object
    
    t.font_foreground=6; // change font properties
    t.font_size=5;
    t.font_style=5;
    
    t.text=["SCILAB","is";"not","esilaB"] ; // change the text
    t.font_angle=90 ; // turn the strings
    t.text_box = [0,0] ;
    t.text_box_mode = 'centered' ; // the text is now centered on [0.5,0.5].
    t.alignment = 'center' ;
    t.box = 'on' ; // draw a box around the text
    
    // Only valid from Scilab 5.2
    mathml="<mrow>      <mfrac>        <mrow>          <mi>d</mi>          <mi>y</mi>        </mrow>        <mrow>          <mi>d</mi>          <mi>x</mi>        </mrow>      </mfrac>      <mo>=</mo>      <mfrac>        <mn>1</mn>        <msup>          <mi>y</mi>          <mn>2</mn>        </msup>      </mfrac>    </mrow>";
    t.text=["SCILAB","can write LaTeX :","$\frac{abc}{xyz}$";"or","MathML :",mathml] ;




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `xtitle`_ add titles on a graphics window
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _xtitle: xtitle.html
.. _set: set.html
.. _graphics_fonts: graphics_fonts.html
.. _LaTeX or MathML expression: math_rendering_features_in_graphic.html
.. _get: get.html
.. _delete: delete.html
.. _graphics_entities: graphics_entities.html


