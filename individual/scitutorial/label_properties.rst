


label_properties
================

description of the Label entity properties



Description
~~~~~~~~~~~

The Label entity is a child of an `Axes` entity. When an Axes entity
is built, the Title and Labels handles come with it and are part of
the Axes properties. Therefore, the properties of those sub-objects
are editable via the Axes handle (see `gca` and `gda`). Also note that
Label entities cannot be directly deleted. This entity defines the
parameters for label drawing:

:parent: This property contains the handle of the parent. The parent
  of the label entity should be of type `"Axes"` . Note that, for now,
  Label entity is exclusively used in `title`, `x_label`, `y_label` and
  `z_label` building.
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"` .By default, the label is
  visible, the value's property is `"on"`. If `"off"` the label is not
  displayed on the screen.
: :text: The matrix containing the strings of the object. The rows of
  the matrix are displayed horizontally and the columns vertically.
  Starting from Scilab 5.2, it is possible to write `LaTeX or MathML
  expression`_.
: :font_foreground: This field contains the color used to display the
  label `text`. Its value should be a color index (relative to the
  current colormap).
: :foreground: This field contains the color used to display the line
  around the box if any. Its value should be a color index (relative to
  the current colormap).
: :background: This field contains the color used to fill the box if
  any. Its value should be a color index (relative to the current
  colormap).
: :fill_mode: This field takes the values `"on"` or `"off"`. If `"on"`
  a box is draw around the text with a line on its edge and a
  background.
: :font_style: Specifies the font used to display the label. This is a
  positive integer referecing one of the loaded fonts. Its value must be
  between 0, referecing the first font, and the number of loaded fonts
  minus one, referencing the last font. For more information see
  `graphics_fonts`_.
: :font_size: It is a scalar specifying the displayed characters size.
  If `fractional_font` property is `"off"` only the integer part of the
  value is used. For more information see `graphics_fonts`_.
: :fractional_font: This property specify whether text is displayed
  using fractional font sizes. Its value must be either `"on"` or
  `"off"`. If `"on"` the floating point value of `font_size` is used for
  display and the font is anti-aliased. If `"off"` only the integer part
  is used and the font is not smoothed.
: :font_angle: This scalar allows you to turn the label. The font is
  turned clockise with the angle given in degrees. Note that changing
  the `font_angle` will automatically disable the `auto_rotation`
  property.
: :auto_rotation: If `"on"`, Scilab computes automatically the best
  angle to turn the label for the display. If `"off"`, the label can be
  manually turned with the `font_angle` property.
: :position: This 2d vector allows you to place manually the label on
  the screen. The position is stored in the data units of the axes. Note
  that changing the `font_angle` will automatically disable the
  `auto_position` property.
: :auto_position: If `"on"`, Scilab computes automatically the best
  position in the graphic window for the display. If `"off"`, the label
  can be manually places with the `position` property.
:



Examples
~~~~~~~~


::

    a=`get`_("current_axes");
    a.title
    `type`_(a.title)
    `plot3d`_()
    a.x_label
    a.y_label
    a.z_label
    `xtitle`_("My title","my x axis label", "Volume","Month") 
    
    t=a.title;
    t.foreground=9;
    t.font_size=4;
    t.font_style=5;
    t.text="SCILAB";
    
    x_label=a.x_label;
    x_label.text=" Weight"
    x_label.font_style= 5;
    a.y_label.foreground = 12;
       
    // Starting with Scilab 5.2, it is now possible to write LaTeX or MathML:
    t.text="$\sqrt{SCILAB}$";
    x_label.font_size= 5;
    x_label.text="<mrow><mfrac><mrow><mn>1</mn></mrow><mrow><mn>2</mn></mrow></mfrac><mo></mo><mfenced open=""{"" close=""}""> ..
    <mrow><mfrac><mrow><mfrac><mrow><mi>a</mi></mrow><mrow><mi>b</mi></mrow></mfrac></mrow><mrow><mfrac><mrow><mi>c</mi></mrow><mrow><mi>d</mi></mrow>..
    </mfrac></mrow></mfrac></mrow></mfenced></mrow>"




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
+ `axes_properties`_ description of the axes entity properties
+ `text_properties`_ description of the Text entity properties


.. _xtitle: xtitle.html
.. _set: set.html
.. _graphics_fonts: graphics_fonts.html
.. _LaTeX or MathML expression: math_rendering_features_in_graphic.html
.. _get: get.html
.. _text_properties: text_properties.html
.. _delete: delete.html
.. _graphics_entities: graphics_entities.html
.. _axes_properties: axes_properties.html


