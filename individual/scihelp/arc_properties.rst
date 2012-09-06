


arc_properties
==============

description of the Arc entity properties



Description
~~~~~~~~~~~

The Arc entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for ellipses and part of ellipses and
the filled ones.

:parent: This field contains the handle of the parent. The parent of
  the arc entity should be of the type `"Axes"` or `"Compound"`.
: :children: This property contains a vector with the `children` of
  the handle. However, `arc` handles currently do not have any
  `children`.
: :thickness: This property is a positive real specifying the line
  width in pixels. The displayed width is actually determined by
  rounding the supplied width to the nearest integer. The only exception
  is vectorial export where the whole `thickness` value is considered.
: :line_style: The `line_style` property value should be an integer in
  [1 8]. 1 stands for solid, the other value stands for a selection of
  dashes (see `getlinestyle`_).
: :line_mode: This property allows to display or not the line
  representing the arc. The value must be `"on"` or `"off"`.
: :fill_mode: If `fill_mode` property value is `"on"`, the arc is
  filled with the `background` color.
: :foreground: This field contains the default `foreground` property
  value used to draw the outside of the arc. It should be a color index
  (relative to the current colormap).
: :background: This field contains the color used to fill the arc. It
  should be a color index (relative to the current colormap).
: :data: This property is to return the coordinates of the upper-left
  point, the width and the height of the inclosing rectangle as well as
  the boundary angles of the sector. It is the matrix in user
  coordinates `[xleft,yup,[zup],width,height,a1,a2]` where `a1` and `a2`
  are the sector boundary angles in degree. **Warning:** in Scilab
  versions up to 4.1.2 `a1` and `a2` were given in degree/64.
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"`. If `"on"` the arc is drawn,
  If `"off"` the arc is not displayed on the screen.
: :arc_drawing_method: This field controls the kind of discretisation
  used to render the arc. Its value must be either `"nurbs"` or
  `"lines"`. If `"nurbs"` is selected then the arc is rendered using
  nurbs curves and surfaces. This results in the display of a perfect
  ellipse part whatever the view point is. If `"lines"` is selected then
  the arc is approximated with a constant number of lines. This reduce
  drawing time but some sharp edges may appear upon zooming. The use of
  `"lines"` value is discouraged and should only be used if a loss in
  framerate is noticed when using `"nurbs"` value.
: :clip_state: This field contains the `clip_state` property value for
the arc. Clip_state value should be :

    + `"off"` this means that the arc is not clipped
    + `"clipgrf"` this means that the arc is clipped outside the Axes box.
    + `"on"` this means that the arc is clipped outside the arc given by
      property clip_box.

: :clip_box: This field is to determinate the `clip_box` property. By
  Default its value should be an empty matrix if clip_state is "off".
  Other cases the vector `[x,y,w,h]` (upper-left point width height)
  defines the portions of the arc to display, however `clip_state`
  property value will be changed.
: :user_data: This field can be use to store any scilab variable in
  the arc data structure, and to retreive it.
:



Examples
~~~~~~~~


::

    a=`get`_("current_axes");//get the handle of the newly created axes
    a.data_bounds=[-2,-2;2,2];
    
    `xarc`_(-1.5,1.5,3,3,0,360*64)
    
    arc=`get`_("hdl"); //get handle on current entity (here the arc entity)
    arc.fill_mode="on";
    arc.foreground=5;
    arc.data(:,[3 6])=[2 270*64];  
    `xfarc`_(-.5,1,.4,.6,0,360*64);
    arc.visible="off";




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `xarc`_ draw a part of an ellipse
+ `xarcs`_ draw parts of a set of ellipses
+ `xfarc`_ Fill a part of an ellipse
+ `xfarcs`_ Fill parts of a set of ellipses
+ `graphics_entities`_ description of the graphics entities data
  structures




History
~~~~~~~
Version Description 5.4.0 line_style value 0 is obsolete, use 1
instead (both are equivalent for SOLID). Using value 0 will produce an
error in Scilab 5.4.1.
.. _xarc: xarc.html
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _delete: delete.html
.. _xarcs: xarcs.html
.. _getlinestyle: axes_properties.html
.. _xfarc: xfarc.html
.. _xfarcs: xfarcs.html


