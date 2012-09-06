


legend_properties
=================

description of the Legend entity properties.



Description
~~~~~~~~~~~

The Legend entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for legends drawn below `plot2dx` graphs
or created by the `captions`_ function. For selected line plotted, the
legend shows a sample of the line type, marker symbol, and color.

:parent: This property contains the handle of the parent. The parent
  of the legend entity should be of the type `"Compound"`. This Compound
  entity contains also the remainder of the graph's entities.
: :children: This property contains a vector with the `children` of
  the handle. However, `legend` handles currently do not have any
  `children`.
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"` . If `"on"` the legend is
  drawn , If `"off"` the legend is not displayed on the screen.
: :text: This field is the character string vector which contains the
  legends for each annotated objects. Starting from Scilab 5.2, it is
  possible to write `LaTeX or MathML expression`_.
: :font_size: It is a scalar specifying the displayed characters size.
  If `fractional_font` property is `"off"` only the integer part of the
  value is used. For more information see `graphics_fonts`_.
: :font_style: Specifies the font used to display the legend labels.
  This is a positive integer referecing one of the loaded fonts. Its
  value must be between 0, referecing the first font, and the number of
  loaded fonts minus one, referencing the last font. For more
  information see `graphics_fonts`_.
: :font_color A color index, this property determines the color of the
  text.
: :fractional_font: This property specify whether text is displayed
  using fractional font sizes. Its value must be either `"on"` or
  `"off"`. If `"on"` the floating point value of `font_size` is used for
  display and the font is anti-aliased. If `"off"` only the integer part
  is used and the font is not smoothed.
: :links: A row array of handles. They refer to the associated
  polylines.
: :legend_location A character string, specifies the location of the
Legend.

    + `"in_upper_right"`: captions are drawn in the upper right corner of
      the axes box.
    + `"in_upper_left"`: captions are drawn in the upper left corner of
      the axes box.
    + `"in_lower_right"`: captions are drawn in the lower right corner of
      the axes box.
    + `"in_lower_left"`: captions are drawn in the lower left corner of
      the axes box.
    + `"out_upper_right"`: captions are drawn at the right of the upper
      right corner of the axes box.
    + `"out_upper_left"`: captions are drawn at the left of the upper left
      corner of the axes box.
    + `"out_lower_right"`: captions are drawn at the right of the lower
      right corner of the axes box.
    + `"out_lower_left"`: captions are drawn at the left of the lower left
      corner of the axes box.
    + `"upper_caption"`: captions are drawn above the upper left corner of
      the axes box.
    + `"lower_caption"`: captions are drawn below the lower left corner of
      the axes box. This option correspond to the `leg` argument of
      `plot2d`_
    + `"by_coordinates"`: the upper left corner of the captions box is
      given by the "position" field of the associated data structure. The
      `x` and `y` positions are given as fractions of the `axes_bounds`.

: :position The coordinates of the upper left corner of the legend.
The `x` and `y` positions are given as fractions of the `axes_bounds`
sizes. This field may be set if `legend_location=="by_coordinates"` or
get for the other legend_location settings. The following instructions
can be used to transform these coordinates ( `position`) to user
coordinates (( `x_user`, `y_user`) or conversely.

::

    as=`get`_(`gcf`_(),"axes_size");//size of the canvas in pixels
    bnds=`get`_(`gca`_(),"axes_bounds");//bounds of the current axes rectangle in figure size ratio.
    //from legend coordinates to user coordinates
    [x_user,y_user]=`xchange`_(position(1)*as(1)*bnds(3)+as(1)*bnds(1),...
                   position(2)*as(2)*bnds(4)+as(2)*bnds(2),"i2f") 
    //from   user coordinates to legend coordinates
    [x1,y1]=`xchange`_(x_user,y_user,'f2i')
    position=[(x1-as(1)*bnds(1))/(as(1)*bnds(3)),...
              (y1-as(2)*bnds(2))/(as(2)*bnds(4))];


: :line_mode This field specifies if a rectangle is drawn around the
  legeng or not. It should be `"on"` or `"off"`. If `"on"` the rectangle
  is drawn using the following properties.
: :thickness This property is a positive real specifying the
  surrounding rectangle shape width in pixels. The displayed width is
  actually determined by rounding the supplied width to the nearest
  integer. The only exception is vectorial export where the whole
  `thickness` value is considered.
: :foreground This field gives the color index of the line used to
  draw the rectangle shape.
: :fill_mode This field specifies if the legeng background is painted
  or not. It should be `"on"` or `"off"`. If `"on"` the background is
  painted using the color index set in the `background` field.
: :background This field gives the color index of the line used to
  paint the rectangle area.
: :clip_state: This field contains the default `clip_state` property
value for all objects. Its value should be :

    + `"off"` this means that all objects created after that are not
      clipped (default value).
    + `"clipgrf"` this means that all objects created after that are
      clipped outside the Axes boundaries.
    + `"on"` this means that all objects created after that are clipped
      outside the rectangle given by property clip_box.

: :clip_box: This field contains the default `clip_box` property value
  for all objects. Its value should be an empty matrix if clip_state is
  `"off"`. Other case the clipping is given by the vector `[x,y,w,h]`
  (upper-left point width height).
: :user_data: This field can be use to store any scilab variable in
  the text data structure, and to retreive it.
:



Examples
~~~~~~~~


::

    // x initialisation 
    x=[0:0.1:2*%pi]';
    `plot2d`_(x,[`sin`_(x) `sin`_(2*x) `sin`_(3*x)],..
      [1,2,3],leg="L1@L2@L3")
    a=`get`_("current_axes");
    l=a.children(2);
    l.links
    l.text=["sin(x)";"sin(2*x)";"sin(3*x)"];
    l.visible="off"; // invisible
    l.font_size = 2;
    l.font_style = 5;
    l.visible='on';
    // Starting from Scilab 5.2, Latex:
    l.text=["$\sin(x)$";"$\sin(2*x)$";"$\sin(3*x)$"];




See Also
~~~~~~~~


+ `plot2d`_ 2D plot
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _graphics_fonts: graphics_fonts.html
.. _graphics_entities: graphics_entities.html
.. _LaTeX or MathML expression: math_rendering_features_in_graphic.html
.. _captions: captions.html
.. _plot2d: plot2d.html


