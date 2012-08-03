====
"rubberbox"
====

Scilab Function Last update : 2002
**rubberbox** - Rubberband box for rectangle selection



Calling Sequence
~~~~~~~~~~~~~~~~

[final_rect,btn]=rubberbox(initial_rect)
[final_rect,btn]=rubberbox()




Parameters
~~~~~~~~~~


+ **initial_rect** : vector with two or four entries. With four
  entries it gives the initial rectangle defined by [x_left, y_top,
  width, height], with two entries width and height are supposed to be
  0. coordinates of the upper-left corner of
+ **final_rect** :a rectangle defined by [x_left, y_top, width,
  height]
+ **btn** :an integer, the number of the mouse button clicked




Description
~~~~~~~~~~~

**rubberbox(initial_rect)** tracks a rubberband box in the current
graphic window, following the mouse. When a button is clicked
**rubberbox** returns the final rectangles definition in
**final_Rect** . If the argument **initial_rect** user has to click to
fix the initial corner position.



Examples
~~~~~~~~


::

    
    
    xsetech(frect=[0,0,100,100])
    [x,y]=xclick();r=rubberbox([x;y;30;10])
    xrect(r)
    r=rubberbox()
     
      




See Also
~~~~~~~~

` **xrect** `_,` **xrects** `_,` **xclick** `_,` **xgetmouse** `_,`
**dragrect** `_,

.. _
      : ://./graphics/xgetmouse.htm
.. _
      : ://./graphics/dragrect.htm
.. _
      : ://./graphics/xrect.htm
.. _
      : ://./graphics/xrects.htm
.. _
      : ://./graphics/xclick.htm


