


xrect
=====

draw a rectangle



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xrect(x,y,w,h)
    xrect(rect) // with rect =[x,y,w,h]




Arguments
~~~~~~~~~

:x,y,w,h four real values defining the rectangle.
:



Description
~~~~~~~~~~~

`xrect` draws a rectangle defined by `[x,y,w,h]` (upper-left point,
width, height) in user coordinates.

WARNING: please note that height is positive downwards.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `plot2d`_(0,0,-1,"010"," ",[-2,-2,2,2])
    `xset`_("color",5)
    xrect(-1,1,2,2)




See Also
~~~~~~~~


+ `xfrect`_ fill a rectangle
+ `xrects`_ draw or fill a set of rectangles


.. _xfrect: xfrect.html
.. _xrects: xrects.html


