


dragrect
========

Drag rectangle(s) with mouse



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [final_rect,btn]=dragrect(initial_rect)




Arguments
~~~~~~~~~

:initial_rect 4 4xn matrix containing the initial rectangles
  definition. Each column contains [x_left; y_top; width; height]. If
  only one rectangle is present the initial_rect may also be a vector.
: :final_rect a rectangle defined by [x_left, y_top, width, height]
: :btn an integer, the number of the mouse button clicked
:



Description
~~~~~~~~~~~

`dragrect` drags one or more rectangles anywhere on the screen. The
4xn matrix rect defines the rectangles. Each column of `initial_rect`
must contain the initial rectangle position as [left;top;width;height]
values. When a button is clicked `dragrect` returns the final
rectangles definition in `final_Rect`.



Examples
~~~~~~~~


::

    `xsetech`_(frect=[0,0,100,100])
    r=dragrect([10;10;30;10])
    `xrect`_(r)




See Also
~~~~~~~~


+ `xrect`_ draw a rectangle
+ `xrects`_ draw or fill a set of rectangles
+ `xclick`_ Wait for a mouse click or an event in a graphic window.
+ `xgetmouse`_ get the mouse events and current position


.. _xrect: xrect.html
.. _xgetmouse: xgetmouse.html
.. _xrects: xrects.html
.. _xclick: xclick.html


