


axis_properties
===============

description of the axis entity properties



Description
~~~~~~~~~~~

The Axis entity is a leaf of the graphics entities hierarchy. This
entity defines the parameters for axis scaling and appearance.

:Axis properties
    :parent: This property contains the handle of the parent. The parent
      of the axis entity should be of the type `"Axes"` or `"Compound"`.
    : :visible: This field contains the `visible` property value for the
      entity . It should be `"on"` or `"off"` . By default, the axis entity
      is visible, the value's property is `"on"`. If `"off"`, the axis is
      not drawn on the screen.
    : :tics_direction: Specify the direction of the tics drawn under the
    horizontal axis and the vertical axis. The possible values of this
    property are:

        + `"top"`. In this case, tics are drawn at the top of the horizontal
          axis.
        + `"bottom"`. In this case, tics are drawn at the bottom of the
          horizantal axis.
        + `"left"`. In this case, tics are going left on the vertical axis.
        + `"right"`. In this case, tics are going right on the vertical axis.
    The defaults values are `"top"` for the horizontal axis and `"right"`
      for vertical axis.
    : :xtics_coord: This field represents the x-coordinate of the axis. It
      is a row vector containing values increasing from left to right which
      give tics positions for a horizontal axis. Other case, the entity is a
      vertical axis, this property contain a scale which defines the
      x-origin of the axis.
    : :ytics_coord: This field represents the y-coordinate of the axis. It
      is a row vector containing values increasing from bottom to top which
      give tics positions for a vertical axis. Other case, the entity is a
      horizontal axis, this property contain a scale which defines the
      y-origin of the axis.
    : :tics_color: The value of this properties is index of the color used
      to draw the axis'lines and tics.
    : :tics_segment: This field contains a flag which controls the display
      of the base segment of the axis. The default is `"on"`, else if to not
      display it, the property takes `"off"` as value.
    : :tics_style: This property describes how the tics are given. It is a
    string flag which can have these possible values:

        + `"v"`. It's the default value, In this case, tics positions are
          given by the row factor `xtics_coord` for horizontal axis (
          `ytics_coord` for the vertical one).
        + `"r"`. In this case, tics positions are given by the vector
          `[min,max,n]` where n is the number of intervals.
        + `"i"`. In this case the vector given tics positions is of size 4,
          `[k1,k2,a,n]` then values are increasing between `k1*10^a` and
          `k2*10^a`, n is the number of intervals.

    : :sub_tics: This field sets the number of tics to draw between two
      main tics.
    : :tics_labels: This field is a string matrix, which contains the
      strings to be drawn along the axis at tics positions.
    : :format_n: This property is a character string which specifies the
      floating-point display format of the tics labels numbers, when
      relevant. It uses the format syntax of the C language printf function
      (for example `"%.3f"`). If equal to `""`, a default display format is
      used.
    : :labels_font_color: This property determines the color of the tics
      labels.
    : :labels_font_size: It is a scalar specifying the character size of
      tics labels. If `fractional_font` property is `"off"` only the integer
      part of the value is used. For more information see `graphics_fonts`_.
    : :fractional_font: This property specifies whether ticks labels are
      displayed using fractional font sizes. Its value must be either `"on"`
      or `"off"`. If `"on"` the floating point value of `font_size` is used
      for display and the font is anti-aliased. If `"off"` only the integer
      part is used and the font is not smoothed.
    : :clip_state: This field contains the `clip_state` property value for
    the arc. Clip_state value should be :

        + `"off"` this means that the axis is not clipped
        + `"clipgrf"` this means that the axis is clipped outside the Axes
          box.
        + `"on"` this means that the axis is clipped outside the arc given by
          property clip_box.

    : :clip_box: This field is to determinate the `clip_box` property. By
      Default its value should be an empty matrix if clip_state is "off".
      Other cases the vector `[x,y,w,h]` (upper-left point width height)
      defines the portions of the axis to display, however `clip_state`
      property value will be changed.
    : :user_data: This field can be used to store any scilab variable in
      the axis data structure, and to retrieve it.
    :

:



Examples
~~~~~~~~


::

    a=`get`_("current_axes");//get the handle of the newly created axes
    a.data_bounds=[-1,-1;10,10];
    
    `drawaxis`_(x=2:7,y=4,`dir`_='u');
    a1=a.children(1)
    a1.xtics_coord=[1 4 5  8 10];
    a1.tics_color=2;
    a1.labels_font_size=3;
    a1.tics_direction="bottom";
    a1.tics_labels= [" February" "May"  "june" "August"  "October"];
      
    `drawaxis`_(x=1.2:1:10,y=5,`dir`_='u',textcolor=13);
    a2=`get`_("hdl")
    a2.sub_tics=0;
    a2.tics_segment="off";
    a2.ytics_coord=4;
      
    `drawaxis`_(x=-1,y=0:1:7,`dir`_='r',fontsize=10,textcolor=5,ticscolor=6,sub_int=10)
    a3=`get`_("hdl");
    a3.tics_labels= 'B'  +`string`_(0:7);
    a3.tics_direction="left";




See Also
~~~~~~~~


+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.
+ `delete`_ delete a graphic entity and its children.
+ `drawaxis`_ draw an axis
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _set: set.html
.. _graphics_fonts: graphics_fonts.html
.. _get: get.html
.. _delete: delete.html
.. _drawaxis: drawaxis.html
.. _graphics_entities: graphics_entities.html


