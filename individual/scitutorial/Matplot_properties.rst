


Matplot_properties
==================

description of the Matplot entities properties



Description
~~~~~~~~~~~

The Matplot entity is a leaf of the graphics entities hierarchy. It
represents 2D plots of surface using colors and images (see `Matplot`
and `Matplot1`).

:parent: This property contains the handle of the parent. The parent
  of the Matplot entity should be of the type `"Axes"`.
: :children: This property contains a vector with the `children` of
  the handle. However, `Matplot` handles currently do not have any
  `children`.
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"` . By default, the plot is
  visible, the value's property is `"on"`. If `"off"` the plot is not
  drawn on the screen.
: :data: This field defines a [ `m`x `n`] `color` data matrix using
  the current colormap. The color associated to `color(i,j)` is used do
  draw a small square of length 1 with center at location
  `(x=j,y=(m-i+1))`.
: :clip_state: This field contains the `clip_state` property value for
the Matplot. It should be :

    + `"off"` this means that the Matplot is not clipped.
    + `"clipgrf"` this means that the Matplot is clipped outside the Axes
      box.
    + `"on"` this means that the Matplot is clipped outside the rectangle
      given by property clip_box.

: :clip_box: This field is to determinate the `clip_box` property. By
  Default its value should be an empty matrix if clip_state is "off".
  Other cases the vector `[x,y,w,h]` (upper-left point width height)
  defines the portions of the Matplot to display, however `clip_state`
  property value will be changed.
: :user_data: This field can be use to store any scilab variable in
  the Matplot data structure, and to retreive it.
:



Examples
~~~~~~~~


::

    `Matplot`_((1:`xget`_("lastpattern")))
    e=`gce`_(); // get current entity
    
    e.data=e.data($:-1:1) // reverse order




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `grayplot`_ 2D plot of a surface using colors
+ `Matplot`_ 2D plot of a matrix using colors
+ `Matplot1`_ 2D plot of a matrix using colors
+ `graphics_entities`_ description of the graphics entities data
  structures
+ `grayplot_properties`_ description of the grayplot entities
  properties


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _Matplot: Matplot.html
.. _delete: delete.html
.. _grayplot: grayplot.html
.. _grayplot_properties: grayplot_properties.html
.. _Matplot1: Matplot1.html


