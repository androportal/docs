


xcosPalAddBlock
===============

Add a block to a Scilab/Xcos palette instance. Some optional
properties can be added to customize the palette icon and the style of
the block.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    pal = xcosPalAddBlock(pal, block)
    pal = xcosPalAddBlock(pal, block, pal_block_img)
    pal = xcosPalAddBlock(pal, block, [], style)
    pal = xcosPalAddBlock(pal, block, pal_block_img, style)




Arguments
~~~~~~~~~

:pal: the palette to update
: :block: the block to add to the palette
: :pal_block_img: the block icon to use on the palette manager (png,
  jpg, gif).
: :style: the style to apply to the block
:



Description
~~~~~~~~~~~

This macros add a block instance to a palette. This block parameter
can be an instantiated block or a name (interface-function) or a path
to a saved instance. Some operations are performed to load this block
and check it's availability so it's interface-function must be loaded
on Scilab. Some temporary files are also generated without full path
arguments.

The optional pal_block_img argument is generated on the `TMPDIR`_using
Scilab graphics if not specified.Be careful that if you use our
palette to be persistent you then need to specify it. Otherwise the
generated image will be deleted at the end of the Scilab session.

The optional style argument allow the user to determine the kind of
style to be used by this block. This argument can be typed as a path
`string`_ to an image (svg, png, jpg, gif) or a `struct`_. If it is a
string then a default style value is generated and formatted as a
style else a struct is wrapped to a key-value jgraphx settings. The
`following style`_ correspond to jgraphx version 1.4.0.2. These style
keys can change with new version of jgraphx without any warranty.




JGraphx style keys
~~~~~~~~~~~~~~~~~~
: `"opacity"` Defines the key for the opacity style. The type of the
  value is float and the possible range is `0-100`.
: : `"textOpacity"` Defines the key for the text opacity style. The
  type of the value is float and the possible range is `0-100`.
: : `"overflow"` Defines the key for the overflow style. Possible
  values are `"visible"`, `"hidden"`or `"fill"`. The default value is
  "visible". This value specifies how overlapping vertex labels are
  handles. A value of "visible" will show the complete label. A value of
  "hidden" will clip the label so that it does not overlap the vertex
  bounds. A value of "fill" will use the vertex bounds for the label.
: : `"orthogonal"` Defines if the connection points on either end of
  the edge should be computed so that the edge is vertical or horizontal
  if possible and if the point is not at a fixed location. Default is
  `false`.
: : `"exitX"` Defines the key for the horizontal relative coordinate
  connection point of an edge with its source terminal.
: : `"exitY"` Defines the key for the vertical relative coordinate
  connection point of an edge with its source terminal.
: : `"exitPerimeter"` Defines if the perimeter should be used to find
  the exact entry point along the perimeter of the source. The type of
  the value is `boolean`_. Default is `true`.
: : `"entryX"` Defines the key for the horizontal relative coordinate
  connection point of an edge with its target terminal.
: : `"entryY"` Defines the key for the vertical relative coordinate
  connection point of an edge with its target terminal.
: : `"entryPerimeter"` Defines if the perimeter should be used to find
  the exact entry point along the perimeter of the target. The type of
  the value is `boolean`_. Default is `true`.
: : `"whiteSpace"` Defines the key for the white-space style. Possible
  values are `"nowrap"`and `"wrap"`. The default value is `"nowrap"`.
  This value specifies how white-space inside a HTML vertex label should
  be handled. A value of `"nowrap"`means the text will never wrap to the
  next line until a linefeed is encountered. A value of `"wrap"`means
  text will wrap when necessary.
: : `"rotation"` Defines the key for the rotation style. The type of
  the value is double and the possible range is `0-360`.
: : `"fillColor"` Defines the key for the fillColor style. The value
  is a string expression described on the `color list`_ .
: : `"gradientColor"` Defines the key for the gradientColor style. The
  value is a string expression described on the `color list`_ .This is
  ignored if no `"fillColor"`is defined.
: : `"gradientDirection"` Defines the key for the gradient direction.
  The value is a string expression described on the `direction list`_
  .Default is `"south"`. Generally, and by default, gradient painting is
  done from the value of `"fillColor"`to the value of `"gradientColor"`.
  Taking the example of `"north"`, this means `"fillColor"`color at the
  bottom of paint pattern and `"gradientColor"`at top, with a gradient
  in-between.
: : `"strokeColor"` Defines the key for the strokeColor style. The
  value is a string expression on the `color list`_ .
: : `"separatorColor"` Defines the key for the separatorColor style.
  The value is a string expression described on the `color list`_ .This
  style is only used for `swimlane`shapes.
: : `"strokeWidth"` Defines the key for the strokeWidth style. The
  type of the value is float and the possible range is any non-negative
  value. The value reflects the stroke width in pixels.
: : `"align"` Defines the key for the align style. Possible values are
  described on the `alignment list`_ .This value defines how the lines
  of the label are horizontally aligned. `"left"`mean label text lines
  are aligned to left of the label bounds, `"right"`to the right of the
  label bounds and `"center"`means the center of the text lines are
  aligned in the center of the label bounds. Note this value does not
  affect the positioning of the overall label bounds relative to the
  vertex, to move the label bounds horizontally, use `"labelPosition"`.
: : `"verticalAlign"` Defines the key for the verticalAlign style.
  Possible values are described on the `alignment list`_ .This value
  defines how the lines of the label are vertically aligned.
  `"top"`means the topmost label text line is aligned against the top of
  the label bounds, `"bottom"`means the bottom-most label text line is
  aligned against the bottom of the label bounds and `"middle"`means
  there is equal spacing between the topmost text label line and the top
  of the label bounds and the bottom-most text label line and the bottom
  of the label bounds. Note this value does not affect the positioning
  of the overall label bounds relative to the vertex, to move the label
  bounds vertically, use `"verticalLabelPosition"`.
: : `"labelPosition"` Defines the key for the horizontal label
  position of vertices. Possible values are described on the `alignment
  list`_ .Default is `"center"`. The label align defines the position of
  the label relative to the cell. `"left"`means the entire label bounds
  is placed completely just to the left of the vertex, `"right"`means
  adjust to the right and `"center"`means the label bounds are
  vertically aligned with the bounds of the vertex. Note this value does
  not affect the positioning of label within the label bounds, to move
  the label horizontally within the label bounds, use `"align"`.
: : `"verticalLabelPosition"` Defines the key for the vertical label
  position of vertices. Possible values are described on the `alignment
  list`_ .Default is `"middle"`. The label align defines the position of
  the label relative to the cell. `"top"`means the entire label bounds
  is placed completely just on the top of the vertex, `"bottom"`means
  adjust on the bottom and `"middle"`means the label bounds are
  horizontally aligned with the bounds of the vertex. Note this value
  does not affect the positioning of label within the label bounds, to
  move the label vertically within the label bounds, use
  `"verticalAlign"`.
: : `"imageAlign"` Defines the key for the align style. Possible
  values are described on the `alignment list`_ .The value defines how
  any image in the vertex label is aligned horizontally within the label
  bounds of a `"label"`shape.
: : `"imageVerticalAlign"` Defines the key for the verticalAlign
  style. Possible values are described on the `alignment list`_ .The
  value defines how any image in the vertex label is aligned vertically
  within the label bounds of a `"label"`shape.
: : `"image"` Defines the key for the image style. Possible values are
  any image URL, the type of the value is String. This is the path to
  the image to image that is to be displayed within the label of a
  vertex.
: : `"imageWidth"` Defines the key for the imageWidth style. The type
  of this value is int, the value is the image width in pixels and must
  be greated than `0`.
: : `"imageHeight"` Defines the key for the imageHeight style The type
  of this value is int, the value is the image height in pixels and must
  be greater than `0`.
: : `"noLabel"` Defines the key for the noLabel style. If this is
  `true`then no label is visible for a given cell. The type of the value
  is `boolean`_. Default is `false`.
: : `"noEdgeStyle"` Defines the key for the noEdgeStyle style. If this
  is `true`then no edge style is applied for a given edge. The type of
  the value is `boolean`_. Default is `false`.
: : `"labelBackgroundColor"` Defines the key for the label background
  color. The value is a string expression described on the `color list`_
  .
: : `"labelBorderColor"` Defines the key for the label border color.
  The value is a string expression described on the `color list`_ .
: : `"indicatorShape"` Defines the key for the indicatorShape style.
  Possible values are described on the `shape list`_ .
: : `"indicatorImage"` Defines the key for the indicatorImage style.
  Possible values are any image URL, the type of the value is String.
: : `"indicatorColor"` Defines the key for the indicatorColor style.
  The value is a string expression described below.
: : `"indicatorGradientColor"` Defines the key for the
  indicatorGradientColor style. The value is a string expression
  described on the `color list`_ .This style is only supported in
  `shape`shapes.
: : `"indicatorSpacing"` Defines the key for the indicatorSpacing
  style (in px).
: : `"indicatorWidth"` Defines the key for the indicatorWidth style
  (in px).
: : `"indicatorHeight"` Defines the key for the indicatorHeight style
  (in px).
: : `"shadow"` Defines the key for the shadow style. The type of the
  value is `boolean`_. This style applies to vertices and arrow style
  edges.
: : `"endArrow"` Defines the key for the endArrow style. Possible
  values are described on the `arrow list`_ .
: : `"startArrow"` Defines the key for the startArrow style. Possible
  values are described on the `arrow list`_ .
: : `"endSize"` Defines the key for the endSize style. The type of
  this value is float and the value represents the size of the end
  marker in pixels.
: : `"startSize"` Defines the key for the startSize style. The type of
  this value is float and the value represents the size of the start
  marker or the size of the swimlane title region depending on the shape
  it is used for.
: : `"dashed"` Defines the key for the dashed style. The type of this
  value is `boolean`_and the value determines whether or not an edge or
  border is drawn with a dashed pattern along the line.
: : `"rounded"` Defines the key for the rounded style. The type of
  this value is `boolean`_. For edges this determines whether or not
  joins between edges segments are smoothed to a rounded finish. For
  vertices that have the rectangle shape, this determines whether or not
  the rectangle is rounded.
: : `"sourcePerimeterSpacing"` Defines the key for the source
  perimeter spacing. The type of this value is double. This is the
  distance between the source connection point of an edge and the
  perimeter of the source vertex in pixels. This style only applies to
  edges.
: : `"targetPerimeterSpacing"` Defines the key for the target
  perimeter spacing. The type of this value is double. This is the
  distance between the target connection point of an edge and the
  perimeter of the target vertex in pixels. This style only applies to
  edges.
: : `"perimeterSpacing"` Defines the key for the perimeter spacing.
  This is the distance between the connection point and the perimeter in
  pixels. When used in a vertex style, this applies to all incoming
  edges to floating ports (edges that terminate on the perimeter of the
  vertex). When used in an edge style, this spacing applies to the
  source and target separately, if they terminate in floating ports (on
  the perimeter of the vertex).
: : `"spacing"` Defines the key for the spacing. The value represents
  the spacing, in pixels, added to each side of a label in a vertex
  (style applies to vertices only).
: : `"spacingTop"` Defines the key for the spacingTop style. The value
  represents the spacing, in pixels, added to the top side of a label in
  a vertex (style applies to vertices only).
: : `"spacingLeft"` Defines the key for the spacingLeft style. The
  value represents the spacing, in pixels, added to the left side of a
  label in a vertex (style applies to vertices only).
: : `"spacingBottom"` Defines the key for the spacingBottom style The
  value represents the spacing, in pixels, added to the bottom side of a
  label in a vertex (style applies to vertices only).
: : `"spacingRight"` Defines the key for the spacingRight style The
  value represents the spacing, in pixels, added to the right side of a
  label in a vertex (style applies to vertices only).
: : `"horizontal"` Defines the key for the horizontal style. The type
  of this value is `boolean`_. This value only applies to vertices. If
  the `"shape"`is `"swimlane"`a value of `false`indicates that the
  swimlane should be drawn vertically, `true`indicates to draw it
  horizontally. If the shape style does not indicate that this vertex is
  a swimlane, this value affects only whether the label is drawn
  horizontally or vertically.
: : `"direction"` Defines the key for the direction style. The
  direction style is used to specify the direction of certain shapes.
  Possible values are described on the `direction list`_ .This value
  only applies to vertices.
: : `"elbow"` Defines the key for the elbow style. Possible values are
  `"horizontal"`and `"vertical"`. Default is `"horizontal"`. This
  defines how the three segment orthogonal edge style leaves its
  terminal vertices. The vertical style leaves the terminal vertices at
  the top and bottom sides.
: : `"fontColor"` Defines the key for the fontColor style. The value
  is type String and of the expression described below.
: : `"fontFamily"` Defines the key for the fontFamily style. Possible
  values are names such as `Arial`; `Dialog`; `Verdana`; `Times New
  Roman`. The value is of type String.
: : `"fontSize"` Defines the key for the fontSize style (in points).
  The type of the value is int.
: : `"fontStyle"` Defines the key for the fontStyle style. Values may
  be any logical AND (sum) of values on the `font style table`_ .The
  type of the value is int.
: : `"shape"` Defines the key for the shape style. Possible values are
  any of `shape list`_ .
: : `"routingCenterX"` Defines the key for the horizontal routing
  center. Possible values are between -0.5 and 0.5. This is the relative
  offset from the center used for connecting edges. The type of this
  value is float.
: : `"routingCenterY"` Defines the key for the vertical routing
  center. Possible values are between -0.5 and 0.5. This is the relative
  offset from the center used for connecting edges. The type of this
  value is float;
:





JGraphx alignment values
~~~~~~~~~~~~~~~~~~~~~~~~

+ `"left"`- horizontal alignment
+ `"center"`- horizontal alignment
+ `"right"`- horizontal alignment
+ `"top"`- vertical alignment
+ `"middle"`- vertical alignment
+ `"bottom"`- vertical alignment




JGraphx arrow values
~~~~~~~~~~~~~~~~~~~~

+ `"classic"`
+ `"block"`
+ `"oval"`
+ `"diamond"`




JGraphx shape values
~~~~~~~~~~~~~~~~~~~~

+ `"rectangle"`
+ `"ellipse"`
+ `"doubleEllipse"`
+ `"rhombus"`
+ `"line"`
+ `"image"`
+ `"arrow"`
+ `"curve"`
+ `"label"`
+ `"cylinder"`
+ `"swimlane"`
+ `"connector"`
+ `"actor"`
+ `"cloud"`
+ `"triangle"`
+ `"hexagon"`




JGraphx valid color values
~~~~~~~~~~~~~~~~~~~~~~~~~~

+ Web notation colors - `"#E1E1E1"`for example
+ Java parseable colors - int values as RGB or sRGB colors
+ `"white"`
+ `"black"`
+ `"red"`
+ `"green"`
+ `"blue"`
+ `"orange"`
+ `"yellow"`
+ `"pink"`
+ `"turquoise"`
+ `"gray"`




JGraphx direction values
~~~~~~~~~~~~~~~~~~~~~~~~

+ `"north"`
+ `"south"`
+ `"east"`
+ `"west"`




JGraphx font modifier values
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

+ bold - `1`
+ italic - `2`
+ underline - `4`
+ shadow - `8`







Examples
~~~~~~~~



::

    `loadXcosLibs`_();
    pal = `xcosPal`_();
    
    o1 = SUMMATION("define");
    o2 = BIGSOM_f("define");
    
    pal = xcosPalAddBlock(pal, o1);
    pal = xcosPalAddBlock(pal, o2);
    
    `xcosPalAdd`_(pal);





::

    `loadXcosLibs`_;
    //Create a simple custom block.
    function [x, y, typ]=MyBlock(job, arg1, arg2)
      x=[];y=[];typ=[];
      select job
        case 'set' then
          x=arg1;
          `messagebox`_('No settings for a MyBlock block type');
        case 'define' then
          model = scicos_model();
          model.sim = `list`_('ramp',4);
          model.blocktype = 'c';
          model.out = 1;
          x=standard_define([2 2],model,[],[])
      end
    endfunction
    
    //create an instance of a new block
    o = MyBlock("define");
    
    //create a new palette
    pal = `xcosPal`_("My palette");
    //add block to this palette using e.g. RAMP icon
    pal = xcosPalAddBlock(pal,..
            o,..
            SCI + "/modules/xcos/images/palettes/RAMP.png",..
            SCI + "/modules/xcos/images/blocks/RAMP.svg");
    
    //deploy palette
    `xcosPalAdd`_(pal);





::

    `loadXcosLibs`_;
    //Create a simple custom block.
    function [x, y, typ]=MyBlock(job, arg1, arg2)
      x=[];y=[];typ=[];
      select job
        case 'set' then
          x=arg1;
          `messagebox`_('No settings for a MyBlock block type');
        case 'define' then
          model = scicos_model();
          model.sim = `list`_('ramp',4);
          model.blocktype = 'c';
          model.out = 1;
          x=standard_define([2 2],model,[],[])
      end
    endfunction
    
    // Customize the style
    style = `struct`_();
    style.fillColor="red";
    
    block_img = SCI + "/modules/xcos/images/blocks/RAMP.svg";
    // protect drive letter
    if `getos`_() == "Windows" then
        block_img = "/" + block_img;
    end
    style.image="file://" + block_img;
    
    //create an instance of a new block
    o = MyBlock("define");
    
    //create a new palette
    pal = `xcosPal`_("My palette");
    //add block to this palette using e.g. RAMP icon
    pal = xcosPalAddBlock(pal,..
            o,..
            SCI + "/modules/xcos/images/palettes/RAMP.png",..
            style);
    
    //deploy palette
    `xcosPalAdd`_(pal);





See Also
~~~~~~~~


+ `xcosPal`_ Instanciate a new Xcos palette on Scilab.
+ `xcosPalAdd`_ Add a palette to the Scilab/Xcos palette manager.
  Optional property can be added to set the category of the palette.


.. _alignment
                list: xcosPalAddBlock.html#jgraphx-style-align-list
.. _font style
                table: xcosPalAddBlock.html#jgraphx-style-font-table
.. _boolean: boolean.html
.. _shape
                list: xcosPalAddBlock.html#jgraphx-style-shape-list
.. _xcosPal: xcosPal.html
.. _string: string.html
.. _struct: struct.html
.. _color
                list: xcosPalAddBlock.html#jgraphx-style-color-list
.. _xcosPalAdd: xcosPalAdd.html
.. _arrow
                list: xcosPalAddBlock.html#jgraphx-style-arrow-list
.. _TMPDIR: TMPDIR.html
.. _following
        style: xcosPalAddBlock.html#jgraphx-style-list
.. _direction
                list: xcosPalAddBlock.html#jgraphx-style-direction-list


