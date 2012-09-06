****


xget
====

get current values of the graphics context. **This function is
obsolete.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x1]=xget(str,[flag])
    xget()




Arguments
~~~~~~~~~

:str string.
: :flag optional. Set to 1 gives a verbose mode.
:



Description
~~~~~~~~~~~

**Warning this function is obsolete**. Use the Scilab graphic objetcs
representation instead (see the `set`_ and `get`_ functions as well as
the `graphics_entities`_ help page).

This function is used to get values from the graphics context on the
topic specified by the string `str`. When called with no argument, a
choice menu is created showing the current values and changes can be
performed through toggle buttons.

:str=xget("auto clear") Get the auto clear status ( `"on"` or
  `"off"`).
: :color=xget("background") Get the background color of the current
  Axes object. The result is a colormap index corresponding to the
  color.
: :rect=xget("clipping") Get the clipping zone as a rectangle
  rect=[x,y,w,h] (Upper-Left point Width Height).
: :c=xget("color") Get the default color for filling, line or text
  drawing functions. `c` is an integer projected in the interval
  [0,whiteid]. 0 stands for black filling and whiteid for white. The
  value of whiteid can be obtained with `xget("white")`.
: :cmap=xget("colormap") Get the colormap used for the current
  graphics window as a m x 3 RGB matrix.
: :dash=xget("dashes") Get the dash style dash=[dash_number] where
  dash_number is the id of the dash. This keyword is obsolete, please
  use `xget("color")` or `xget("line style")` instead.
: :font=xget("font") Get font=[fontid,fontsize], the default font and
  the default size for fonts. size.
: :fontsize=xget("font size") Get the default size for fonts size.
: :color=xget("foreground") Get the foreground color of the current
  Axes object. The result is a colormap index corresponding to the
  color.
: :str=xget("fpf") Get the floating point format for number display in
  contour functions. Note that `str` is `""` when default format is
  used.
: :color=xget("hidden3d") Get the color number for hidden faces in
  plot3d.
: :pat=xget("lastpattern") Get the id of the last available pattern or
  color, with the current colormap of the current window. In fact
  `pat+1` and `pat+2` are also available and stand respectively for
  black and white pattern.
: :type=xget("line mode") Get the line drawing mode. type=1 is
  absolute mode and type=0 is relative mode. (Warning: the mode type=0
  is has bugs)
: :xget("line style") Get the default line style (1: solid, >1 for
  dashed lines).
: :mark=xget("mark") Get the default mark id and the default marks
  size. `mark=[markid,marksize]`.
: :marksize=xget("mark size") Get the default marks size.
: :pat=xget("pattern") Get the current pattern or the current color.
  `pat` is an integer in the range `[1,last]`. When one uses black and
  white, 0 is used for black filling and `last` for white. The value of
  `last` can be obtained with `xget("lastpattern")`.
: :value=xget("thickness") Get the thickness of lines in pixel (0 and
  1 have the same meaning: 1 pixel thick).
: :flag=xget("use color") Get the flag 0 (use black and white) or 1
  (use colors). See `xset`.
: :[x,y]=xget("viewport") Get the current postion of the visible part
  of graphics in the panner.
: :dim=xget("wdim") Get the width and the height of the current
  graphics window dim=[width,height].
: :win=xget("window") Get the current window number `win`.
: :pos=xget("wpos"); Get the position of the upper left point of the
  graphics window pos=[x,y].
:



See Also
~~~~~~~~


+ `xset`_ set values of the graphics context.This function is
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
.. _getsymbol: getsymbol.html
.. _set: set.html
.. _graphics_entities: graphics_entities.html
.. _get: get.html
.. _ged: ged.html
.. _xset: xset.html
.. _getcolor: getcolor.html


