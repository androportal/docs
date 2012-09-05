


grayplot_properties
===================

description of the grayplot entities properties



Description
~~~~~~~~~~~

The Grayplot entity is a leaf of the graphics entities hierarchy. It
represents 2D plots of surface using colors and images (see
`grayplot`, `Sgrayplot`, `fgrayplot` and `Sfgrayplot`).

:parent: This property contains the handle of the parent. The parent
  of the grayplot entity should be of the type `"Axes"`.
: :children: This property contains a vector with the `children` of
  the handle. However, `grayplot` handles currently do not have any
  `children`.
: :visible: This field contains the `visible` property value for the
  entity . It should be `"on"` or `"off"` . By default, the plot is
  visible, the value's property is `"on"`. If `"off"` the plot is not
  drawn on the screen.
: :data: This field defines a `tlist` data structure of type
  `"grayplotdata"` composed of a row and column indices of each element
  : the x and y grid coordinates are contained respectively in `data.x`
  and `data.y`. The complementary field named `data.z` is the value of
  the surface at the point `(x(i),y(j))` (scaled mode) or the centered
  value of the surface defined between two consecutive `x(i)` and `y(j)`
  (direct mode). If `data_mapping` (see below) is set to `"scaled"`, the
  entire z data is used to perform a color interpolation whereas, if
  `data_mapping`'s value is `"direct"`, the last line and column of the
  z data indices are ignored and the color is determined directly in the
  colormap by the indices of the submatrix `data.z(1:$-1,1:$-1)`.
: :data_mapping: By default the value of this property is `"scaled"` :
  the indices of painting colors are proportional to the value `z`
  coordinates. In the other case, the property takes as value `"direct"`
  where the plot is a grayplot and the indices of painting colors are
  given by the data (see above).
: :clip_state: This field contains the `clip_state` property value for
the grayplot. It should be :

    + `"off"` this means that the grayplot is not clipped.
    + `"clipgrf"` this means that the grayplot is clipped outside the Axes
      box.
    + `"on"` this means that the grayplot is clipped outside the rectangle
      given by property clip_box.

: :clip_box: This field is to determinate the `clip_box` property. By
  Default its value should be an empty matrix if clip_state is "off".
  Other cases the vector `[x,y,w,h]` (upper-left point width height)
  defines the portions of the grayplot to display, however `clip_state`
  property value will be changed.
: :user_data: This field can be use to store any scilab variable in
  the grayplot data structure, and to retreive it.
:



Examples
~~~~~~~~


::

    m=5;n=5;
    M=`round`_(32*`rand`_(m,n));
    `grayplot`_(1:m,1:n,M)
    
    a=`get`_("current_axes");
    a.data_bounds=  [-1,-1;7,7]
    h=a.children
    
    h.data_mapping="direct";
       
    // A 2D plotting of a matrix using colors 
    `clf`_()
    a=`get`_("current_axes");
    a.data_bounds=  [0,0;4,4];
      
    b=5*`ones`_(11,11); b(2:10,2:10)=4; b(5:7,5:7)=2;
    `Matplot1`_(b,[1,1,3,3])  ;
      
    h=a.children
    for i=1:7
      `xclick`_(); // click the mouse to sets Matplot data
      h.data=h.data+4;
    end




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
+ `Matplot_properties`_ description of the Matplot entities properties


.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _Matplot: Matplot.html
.. _delete: delete.html
.. _Matplot_properties: Matplot_properties.html
.. _grayplot: grayplot.html
.. _Matplot1: Matplot1.html


