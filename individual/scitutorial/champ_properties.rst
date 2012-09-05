


champ_properties
================

description of the 2D vector field entity properties



Description
~~~~~~~~~~~

The Champ entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for a 2D vector field.

:visible: This properties contains the `visible` property value for
  the entity . It should be `"on"` or `"off"` . If `"on"` the vector
  field is drawn, If `"off"` the vector field is not displayed on the
  screen.
: :data: This field defines a `tlist` data structure of type
  `"champdata"` composed of a row and column indices of each element :
  the x and y grid coordinates are contained respectively in `data.x`and
  `data.y`. The complementary fields named `data.fx` and `data.fy` are
  matrices which describe respectively the `x` and `y` component of the
  vector field at point `(x(i),y(j))`.
: :user_data: This field can be use to store any scilab variable in
  the champ data structure, and to retreive it.
: :line_style: The `line_style` property value should be an integer in
  [1 8]. 1 stands for solid, the other value stands for a selection of
  dashes (see `getlinestyle`_).
: :thickness: This property is a positive real specifying the arrow
  width in pixels. The displayed width is actually determined by
  rounding the supplied width to the nearest integer. The only exception
  is vectorial export where the whole `thickness` value is considered.
: :colored: If this this property value is `"on"`, fields vectors are
  drawn using a color proportional to the intensity of the field.
: :clip_state: This field contains the `clip_state` property value for
the champ. It should be :

    + `"off"` this means that the vector field is not clipped
    + `"clipgrf"` this means that the vector field is clipped outside the
      Axes box.
    + `"on"` this means that the vector field is clipped outside the
      rectangle given by property clip_box.

: :clip_box: This property contains the `clip_box` property. Its value
  should be an empty matrix if clip_state is "off" .Other cases the
  vector `[x,y,w,h]` (upper-left point width height) defines the
  portions of the vector field to display, however `clip_state` property
  value will be changed.
: :parent: This property contains the handle of the parent. The parent
  of the 2D vector field entity should be of the type `"Axes"` or
  `"Compound"`.
:



Examples
~~~~~~~~


::

    a=`get`_("current_axes");//get the handle of the newly created axes
    a.data_bounds=[-10,-10;10,10];
    `champ`_(-5:5,-5:5,`rand`_(11,11),`rand`_(11,11))
    
    c=a.children
    
    c.colored="on";
    c.thickness=2;
    c.data // display the tlist of type "scichampdata"
    a.data_bounds=[-5,-5;5,5];




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `champ`_ 2D vector field plot
+ `champ1`_ 2D vector field plot with colored arrows
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
.. _champ1: champ1.html
.. _delete: delete.html
.. _champ: champ.html
.. _getlinestyle: axes_properties.html


