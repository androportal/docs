


fec_properties
==============

description of the fec entities properties



Description
~~~~~~~~~~~

The Fec entity is a leaf of the graphics entities hierarchy. It
represents 2D finite elements plots (see `fec`, `Sgrayplot`).

:parent: This property contains the handle of the parent. The parent
  of the fec entity should be of the type `"Axes"` or `"Compound"`.
: :children: This property contains a vector with the `children` of
  the handle. However, `Fec` handles currently do not have any
  `children`.
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"` . By default, the plot is
  visible, the value's property is `"on"`. If `"off"` the plot is not
  drawn on the screen.
: :data: This is a three column matrix `[x,y,f]`, where `x(i)` and
  `y(i)` are the coordinates of the `i`'th node. `f(i)` is the value
  associated to the node `i`.
: :triangles: This is a five column matrix `[tn,n1,n2,n3,flag]`.
  `tn(j)` is the triangle number. `n1(j)`, `n2(j)` and `n3(j)` are the
  index of the nodes which constitute the triangle. ( `flag(j)` is not
  used).
: :z_bounds: This vector of size 2, `[zmin,zmax]`, gives the z values
  associated with the first and the last color (of the current
  colormap). More exactly if the colormap have `nc` colors and if we
  note `dz = (zmax-zmin)/nc` ,then the part of the triangulation where
  `zmin + (i-1)dz <= z < zmin + i dz` is filled with the color `i`). By
  default the `z_bounds` property value is `[0,0]`. In this case, the
  `zmin` and `zmax` are autommatically set to the minumum and maximum of
  the `func` argument.
: :outside_color: This vector of size 2, `[cmin, cmax]`, defines the
  color used when nodes values are outside the `z_bounds = [zmin,zmax]`
  interval. When node values are lower than `zmin` the color with index
  `cmin` is used. When node values are greater than `zmax` the color
  with index `cmax` is used. By default, the `outside_color` property
  value is `[0,0]`. In this case, `cmin` and `cmax` are automatically
  set to the two bounds of the colormap. If `cmin` or `cmax` are
  negative, then values outside z_bounds interval are not displayed,
  they appear transparent.
: :color_range: This vector of size 2, `[rmin, rmax]`, allows to use
  only a part of the colormap for display. `rmin` and `rmax` stand for
  colormap indices. If they are both greater than 1, then the actual
  colormap used to display the fec entity is `colormap(rmin:rmax)` where
  `colormap` is the colormap of the parent figure. By default, the
  `color_range` property value is `[0,0]`. In this case, the whole
  colormap is used.
: :line_mode: If `"on"`, the wireframe enclosing triangles is drawn.
  If `"off"`, only the inside of triangles are drawn.
: :foreground: This color index specifies the color of the mesh. If
  `line_mode` property is `"on"`, the wireframe is drawn using this
  color.
: :clip_state: This field contains the `clip_state` property value for
the fec. It should be :

    + `"off"` this means that the fec is not clipped.
    + `"clipgrf"` this means that the fec is clipped outside the Axes box.
    + `"on"` this means that the fec is clipped outside the rectangle
      given by property clip_box.

: :clip_box: This field is to determinate the `clip_box` property. By
  Default its value should be an empty matrix if clip_state is "off".
  Other cases the vector `[x,y,w,h]` (upper-left point width height)
  defines the portions of the fec to display, however `clip_state`
  property value will be changed.
: :user_data: This field can be use to store any scilab variable in
  the fec data structure, and to retreive it.
:



Examples
~~~~~~~~


::

    x=-10:10; y=-10:10;m =`rand`_(21,21);
    `Sgrayplot`_(x,y,m);
    a=`get`_("current_axes");
    f=a.children.children(1)
    f.data(:,3)=(1:`size`_(f.data,1))';
    a.parent.color_map=`hotcolormap`_(64);




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `fec`_ pseudo-color plot of a function defined on a triangular mesh
+ `Sgrayplot`_ smooth 2D plot of a surface using colors
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _delete: delete.html
.. _Sgrayplot: Sgrayplot.html
.. _fec: fec.html


