


rubberbox
=========

Rubberband box for rectangle selection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [final_rect,btn]=rubberbox()
    [final_rect,btn]=rubberbox(initial_rect)
    [final_rect,btn]=rubberbox(edition_mode)
    [final_rect,btn]=rubberbox(initial_rect, edition_mode)




Arguments
~~~~~~~~~

:initial_rect vector with two or four entries. With four entries it
  gives the initial rectangle defined by [x_min, y_max, width, height],
  with two entries width and height are supposed to be 0.
: :edition_mode a boolean, if edition_mode is `%t` button press
  selects the first corner, release selects the opposite corner. If
  edition_mode is `%f`, a button press or click selects the first
  corner, a click is requested to select the opposite corner. The
  default value is %f.
: :final_rect a rectangle defined by [x_min, y_max, width, height]
: :btn an integer, the number of the mouse button clicked
:



Description
~~~~~~~~~~~

`rubberbox(initial_rect)` tracks a rubberband box in the current
graphic window, following the mouse. When a button is clicked
`rubberbox` returns the final rectangles definition in `final_Rect`.
If the argument `initial_rect` is not specified, a click is needed to
fix the initial corner position.



Examples
~~~~~~~~


::

    `clf`_
    `plot2d`_()
    a = `gca`_();
    db = a.data_bounds;
    x0 = (db(1)*2+db(2))/3;
    dx = (db(2)-db(1))/3;
    y0 = (db(3)+db(4)*2)/3;
    dy = (db(4)-db(3))/3;
    `disp`_(`gettext`_("With an initial starting corner:"))
    r = rubberbox([x0 y0])
    `disp`_(`gettext`_("With an initial box:"))
    r = rubberbox([x0-dx/4 y0+dy/5 2*dx dy])
    `disp`_(`gettext`_("In press -- drag -- release mode selection:"))
    r = rubberbox(%t)
    `disp`_(`gettext`_("In starting click -- drag -- stopping click mode selection:"))
    r = rubberbox()




See Also
~~~~~~~~


+ `xrect`_ draw a rectangle
+ `xrects`_ draw or fill a set of rectangles
+ `xclick`_ Wait for a mouse click or an event in a graphic window.
+ `xgetmouse`_ get the mouse events and current position
+ `dragrect`_ Drag rectangle(s) with mouse


.. _xrect: xrect.html
.. _xgetmouse: xgetmouse.html
.. _xrects: xrects.html
.. _xclick: xclick.html
.. _dragrect: dragrect.html


