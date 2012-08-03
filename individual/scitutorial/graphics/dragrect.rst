====
"dragrect"
====

Scilab Function Last update : April 2000
**dragrect** - Drag rectangle(s) with mouse



Calling Sequence
~~~~~~~~~~~~~~~~

[final_rect,btn]=dragrect(initial_rect)




Parameters
~~~~~~~~~~


+ **initial_rect** : 4 4xn matrix containing the initial rectangles
  definition. Each column contains [x_left; y_top; width; height]. If
  only one rectangle is present the initial_rect may also be a vector.
+ **final_rect** :a rectangle defined by [x_left, y_top, width,
  height]
+ **btn** :an integer, the number of the mouse button clicked




Description
~~~~~~~~~~~

**dragrect** drags one or more rectangles anywhere on the screen. The
4xn matrix rect defines the rectangles. Each column of
**initial_rect** must contain the initial rectangle position as
[left;top;width;height] values. When a button is clicked **dragrect**
returns the final rectangles definition in **final_Rect** .



Examples
~~~~~~~~


::

    
    
    xsetech(frect=[0,0,100,100])
    r=dragrect([10;10;30;10])
    xrect(r)
     
      




See Also
~~~~~~~~

` **xrect** `_,` **xrects** `_,` **xclick** `_,` **xgetmouse** `_,

.. _
      : ://./graphics/xrect.htm
.. _
      : ://./graphics/xgetmouse.htm
.. _
      : ://./graphics/xrects.htm
.. _
      : ://./graphics/xclick.htm


