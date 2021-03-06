****


xset
====

set values of the graphics context. **This function is obsolete.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xset(choice-name,x1,x2,x3,x4,x5)
    xset()




Arguments
~~~~~~~~~

:choice-name string
: :x1,...,x5 depending on `choice-name`
:



Description
~~~~~~~~~~~

**Warning this function is obsolete.** Use the Scilab graphic objects
representation instead (see the `set`_ and `get`_ functions as well as
the `graphics_entities`_ help page).

`xset` is used to set default values of the current window graphic
context.

When called no argument, a choice menu is created showing the current
values and changes can be performed through toggle buttons.

Use `xset()` to display or set the current color, mark and fonts used.



:xset("auto clear","on"|"off") Switch "on" or "off" the auto clear
  mode for graphics. When the auto clear mode is "on", successive plots
  are not superposed, ie a `clf()` operation (the graphics window is
  cleared and the associated recorded graphics is erased) is performed
  before each high level graphics function. Default value is "off".
: :xset("background",color) Set the background color of the current
  Axes object. The `color` argument is the colormap index of the color
  to use.
: :xset("clipping",x,y,w,h) Set the clipping zone (the zone of the
  graphics window where plots can be drawn) to the rectangle (x,y,w,h)
  (Upper-Left point Width Height). This function uses the current
  coordinates of the plot.
: :xset("color",value) Set the default color for filling, line or text
  drawing functions. `value` is an integer projected in the interval
  [0,whiteid]. 0 is used for black filling and whiteid for white. The
  value of whiteid can be obtained with `xget("white")`.
: :xset("colormap",cmap) Set the colormap as a m x 3 matrix. m is the
  number of colors. Color number i is given as a 3-uple cmap(i,1),
  cmap(i,2), cmap(i,3) corresponding respectively to red, green and blue
  intensity between 0 and 1.
: :xset("dashes",i) In black and white mode ( `xset("use color",0)`),
  set the dash style to style i (0 for solid line). In color mode (
  `xset("use color",1 )`) this is used to set line, mark and text color.
  This keyword is obsolete, please use `xset('color',i)` or `xset('line
  style',i)` instead.
: : Reset the graphics context to default values.
: :xset("font",fontid,fontsize) : Set the current font and its current
  size. Note that `fontsize` applies to all fonts not only `fontid` .
: :xset("font size",fontsize) Set the fonts size.
: :xset("foreground",color) Set the foreground color of the current
  Axes object. The `color` argument is the colormap index of the color
  to use.
: :xset("fpf",string) Set the floating point format for number display
  in contour functions. `string` is a string giving the format in C
  format syntax (for example `string="%.3f"`). Use `string=""` to switch
  back to default format.
: :xset("hidden3d",colorid) : Set the color number for backward facing
  faces in `plot3d`. `colorid=0` zero suppress the drawing of backward
  facing faces of 3d objects. This is technically called 'culling' and
  speeds up the rendering of closed surfaces.
: :xset("line mode",type) This function is used to set the line
  drawing mode. Absolute mode is set with type=1 and relative mode with
  type=0. (Warning: the mode type=0 has bugs)
: :xset("line style",value) Set the current line style (1: solid, >1
  for dashed lines).
: :xset("mark",markid,marksize) Set the current mark and the current
  mark size. Use `xset()` to see the marks. Note that `marksize` applies
  to all marks not only `markid` .
: :xset("mark size",marksize) Set the marks size.
: :xset("pattern",value) Set the current pattern for filling
  functions. value is an integer projected in the interval [0,whiteid].
  0 is used for black filling and whiteid for white. The value of
  whiteid can be obtained with `xget("white")`. "pattern" is equivalent
  to "color".
: :xset("pixmap",flag) If flag=0 the graphics are directly displayed
  on the screen. If flag=1 the graphics are done on a pixmap and are
  sent to the graphics window with the command `xset("wshow")`. The
  pixmap is cleared with the command `xset("wwpc")`. Note that the usual
  command `clf()` also clears the pixmap.
: :xset("thickness",value) Set the thickness of lines in pixel (0 and
  1 have the same meaning: 1 pixel thick).
: :xset("use color",flag) If flag=1 then `xset("pattern",.)` or
  `xset("dashes",.)` will be used so as to change the default color for
  drawing or for filling patterns. If flag=0 then we switch back to the
  gray and dashes mode.
: :xset("viewport",x,y) Set the position of the panner.
: :xset("wdim",width,height) Set the width and the height of the
  current graphics window. This option is not used by the postscript
  driver.
: :xset("wpdim",width,height) Sets the width and the height of the
  current physical graphic window (which can be different from the
  actual size in mode wresize 1). This option is not used by the
  postscript driver.
: :xset("window",window-number) Set the current window to the window
  `window-number` and creates the window if it does not exist.
: :xset("wpos",x,y) Set the position of the upper left point of the
  graphics window.
: :xset("wresize",flag) If flag=1 then the graphic is automatically
resized to fill the graphics window.

::

    `xdel`_();
    xset("wresize",1);
    `plot2d`_();
    xset("wdim",1000,500)

If flag=0 the scale of the graphic is left unchanged when the graphics
window is resized. Top left panner or keyboard arrows may be used to
scroll over the graphic.

::

    `xdel`_();
    `plot2d`_();
    xset("wresize",0);
    xset("wdim",1000,500)


: :xset("wshow") See `xset("pixmap",1)` above.
: :xset("wwpc") See `xset("pixmap",1)` above.
:



See Also
~~~~~~~~


+ `xget`_ get current values of the graphics context. This function is
  obsolete.
+ `getcolor`_ opens a dialog to show colors in the current colormap
+ `getsymbol`_ dialog to select a symbol and its size. Obsolete
  function
+ `ged`_ Scilab Graphic Editor
+ `set`_ set a property value of a graphic entity object or of a User
  Interface object.
+ `graphics_entities`_ description of the graphics entities data
  structures




History
~~~~~~~
Version Description 5.4.0 The "alufunction" property is no more
supported, this property was no more used for rendering since Scilab
5.0.1.
.. _xget: xget.html
.. _getsymbol: getsymbol.html
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _ged: ged.html
.. _getcolor: getcolor.html


