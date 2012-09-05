


segs_properties
===============

description of the Segments entity properties



Description
~~~~~~~~~~~

The Segs entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for a set of colored segments or colored
arrows.

:parent: This property contains the handle of the parent. The parent
  of the segment entity should be of the type `"Axes"` or `"Compound"`.
: :children: This property contains a vector with the `children` of
  the handle. However, `segs` handles currently do not have any
  `children`.
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"` . By default, the segments are
  visibles, the value's property is `"on"`. If `"off"` the segments are
  not drawn on the screen.
: :data: This field is two column matrix `[x,y,[z]]` which gives the
  coordinates of the segments boundary. If `xv=matrix(x,2,-1)` and
  `yv=matrix(y,2,-1)` then `xv(:,k)` and `yv(:,k)` are the boundary
  coordinates of the segment numbered `k`.
: :line_mode: This field contains the default `line_mode` property
  value for the segs. Its value should be `"on"`(line drawn) or `"off"`
  (no line drawn).
: :line_style: The `line_style` property value should be an integer in
  [1 8]. 1 stands for solid, the other value stands for a selection of
  dashes (see `getlinestyle`_).
: :thickness: This property is a positive real specifying the arrow
  width in pixels. The displayed width is actually determined by
  rounding the supplied width to the nearest integer. The only exception
  is vectorial export where the whole `thickness` value is considered.
: :arrow_size: Factor that specify the size of arrowheads. With a
  negative value, the size is also dependent of the arrows length. To
  draw segment, the value must be set to 0.
: :segs_color: This field contains the vector of colors to use to draw
  each segment. Each element is a color index relative to the current
  colormap.
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
  size array: therefore, its value should be an integer in [0 5] which
  stands for 8pt, 10pt, 12pt, 14pt, 18pt and 24pt. Note that `plot2d`_
  and pure scilab functions use `tabulated` mode as default ; when using
  `plot`_ function, the `point` mode is automatically enabled.
: :mark_size: The `mark_size` property is used to select the type of
  size of the marks when `mark_mode` property is `"on"`. Its value
  should be an integer between 0 and 5 whith stands for 8pt, 10pt, 12pt,
  14pt, 18pt and 24pt.
: :mark_foreground: This field contains the `mark_foreground` property
  value which is the marks' edge color. Its value should be a color
  index (relative to the current color_map) or 0 for transparant edge.
: :mark_background: This field contains the `mark_background` property
  value which is the marks' face color. Its value should be a color
  index (relative to the current color_map) or 0 for transparant face.
: :clip_state: This field contains the `clip_state` property value for
the segments. It should be :

    + `"off"` this means that the segments is not clipped.
    + `"clipgrf"` this means that the segments is clipped outside the Axes
      box.
    + `"on"` this means that the segments is clipped outside the rectangle
      given by the property `clip_box`.

: :clip_box: This field contains the `clip_box` property. By default
  segment are not clipped, clip_state is "off", so the value should be
  an empty matrix .Other cases the vector `[x,y,w,h]` (upper-left point
  width height) defines the portions of the segments to display, however
  `clip_state` property value will be changed.
: :user_data: This field can be use to store any scilab variable in
  the segs data structure, and to retreive it.
:



Examples
~~~~~~~~


::

    a=`get`_("current_axes");//get the handle of the newly created axes
    a.data_bounds=[-10,-10;10,10];
    x=2*%pi*(0:7)/8;
    xv=[2*`sin`_(x);9*`sin`_(x)];
    yv=[2*`cos`_(x);9*`cos`_(x)];
    `xsegs`_(xv,yv,1:8)
    
    s=a.children
    s.arrow_size=1;
    s.segs_color=15:22;
    for j=1:2
      for i=1:8
        h=s.data(i*2,j);
        s.data(i*2,j)=s.data(i*2-1,j);
        s.data(i*2-1,j)=  h;
      end
    end
    
    s.segs_color=5; //set all the colors to 5
    
    s.clip_box=[-4,4,8,8];
    a.thickness=4;
    `xrect`_(s.clip_box);




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `xsegs`_ draw unconnected segments
+ `graphics_entities`_ description of the graphics entities data
  structures




History
~~~~~~~
Version Description 5.4.0 line_style value 0 is obsolete, use 1
instead (both are equivalent for SOLID). Using value 0 will produce an
error in Scilab 5.4.1.
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _delete: delete.html
.. _plot2d: plot2d.html
.. _getlinestyle: axes_properties.html
.. _plot: plot.html
.. _xsegs: xsegs.html


