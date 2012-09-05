


rectangle_properties
====================

description of the Rectangle entity properties



Description
~~~~~~~~~~~

The Rectangle entity is a leaf of the graphics entities hierarchy.
This entity defines the parameters for rectangles and filled
rectangles.

:parent: This field contains the handle of the parent. The parent of
  the rectancle entity should be of the type `"Axes"` or `"Compound"`.
: :children: This property contains a vector with the `children` of
  the handle. However, `rectangle` handles currently do not have any
  `children`.
: :mark_mode: This field contains the default `mark_mode` property
  value for the polyline. Its value should be `"on"` (marks drawn) or
  `"off"` (no marks drawn).
: :mark_style: The `mark_style` property value is used to select the
  type of mark to use when `mark_mode` property is `"on"`. The value
  should be an integer in [0 14] which stands for: dot, plus, cross,
  star, filled diamond, diamond, triangle up, triangle down, diamond
  plus, circle, asterisk, square, triangle right, triangle left and
  pentagram. The figure below shows the aspects of the marks depending
  on the `mark_style` and the `mark_foreground` and `mark_background`
  properties.
: :mark_size_unit: This field contains the default `mark_size_unit`
  property value. If `mark_size_unit` is set to `"point"`, then the
  `mark_size` value is directly given in points. When `mark_size_unit`
  is set to `"tabulated"`, `mark_size` is computed relative to the font
  size array: therefore, its value should be an integer in [0 5] whith
  stands for 8pt, 10pt, 12pt, 14pt, 18pt and 24pt. Note that `xrect`_
  and pure scilab functions use `tabulated` mode as default ; when using
  `plot`_ function, the `point` mode is automatically enabled.
: :mark_size: The `mark_size` property is used to select the type of
  size of the marks when `mark_mode` property is `"on"`. Its value
  should be an integer in [0 5] whith stands for 8pt, 10pt, 12pt, 14pt,
  18pt and 24pt.
: :mark_foreground: This field contains the `mark_foreground` property
  value which is the marks' edge color. Its value should be a color
  index (relative to the current color_map) or 0 for transparant edge.
: :mark_background: This field contains the `mark_background` property
  value which is the marks' face color. Its value should be a color
  index (relative to the current color_map) or 0 for transparant face.
: :line_mode: This field contains the default `line_mode` property
  value for the rectangle. Its value should be `"on"`(line drawn) or
  `"off"` (no line drawn).
: :fill_mode: If `fill_mode` property value is `"on"`, the rectangle
  is filled with the foreground color, the `mark_mode` must also have
  the value `"off"`. if not and the value's property is `"off"` only the
  shape of the rectangle is drawn using the foreground color.
: :line_style: The `line_style` property value should be an integer in
  [1 8]. 1 stands for solid, the other value stands for a selection of
  dashes (see `getlinestyle`_).
: :thickness: This property is a positive real specifying the
  rectangle width in pixels. The displayed width is actually determined
  by rounding the supplied width to the nearest integer. The only
  exception is vectorial export where the whole `thickness` value is
  considered.
: :foreground: This field contains the color used to draw the outline
  of the rectangle. Its value should be a color index (relative to the
  current colormap).
: :background: This field contains the color used to fill the
  rectangle. Its value should be a color index (relative to the current
  colormap).
: :data: This property is to return the coordinates of the upper-left
  point of the rectangle and its width and height in user coordinates.
  The result is the matrix `[xleft,yup,[zup],width,height]`
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"` . By default, the rectangle is
  visible, the value's property is `"on"`. If `"off"` the rectangle is
  not drawn on the screen.
: :clip_state: This field contains the `clip_state` property value for
the rectangle. It should be :

    + `"off"` this means that the rectangle is not clipped.
    + `"clipgrf"` this means that the rectangle is clipped outside the
      Axes box.
    + `"on"` this means that the rectangle is clipped outside the
      rectangle given by property clip_box.

: :clip_box: This field is to determinate the `clip_box` property. By
  Default its value should be an empty matrix if clip_state is "off".
  Other cases the vector `[x,y,w,h]` (upper-left point width height)
  defines the portions of the rectangle to display, however `clip_state`
  property value will be changed.
: :user_data: This field can be use to store any scilab variable in
  the rectangle data structure, and to retreive it.
:



Examples
~~~~~~~~


::

    a=`get`_("current_axes");//get the handle of the newly created axes
    a.data_bounds=[-2,-2;2,2];
    
    `xrect`_(-1,1,2,2)
    
    r=`get`_("hdl");//get handle on current entity (here the rectangle entity)
    r.type
    r.parent.type
    r.foreground=13;
    r.line_style=2;
    r.fill_mode="on";
    r.background=`color`_('red');
    r.clip_box=[-1 1;1 1];
    r.data(:,[3 4])=[1/2 1/2];
    r.data(:,[1 2])=[1/2 1/2];
    r.clip_state="off"




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `xrect`_ draw a rectangle
+ `xfrect`_ fill a rectangle
+ `xrects`_ draw or fill a set of rectangles
+ `graphics_entities`_ description of the graphics entities data
  structures




History
~~~~~~~
Version Description 5.4.0 line_style value 0 is obsolete, use 1
instead (both are equivalent for SOLID). Using value 0 will produce an
error in Scilab 5.4.1.
.. _xrect: xrect.html
.. _xfrect: xfrect.html
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _delete: delete.html
.. _xrects: xrects.html
.. _getlinestyle: axes_properties.html
.. _plot: plot.html


