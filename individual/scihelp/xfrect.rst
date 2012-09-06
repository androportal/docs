


xfrect
======

fill a rectangle



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xfrect(x,y,w,h)
    xfrect(rect) // rect =[x,y,w,h]




Arguments
~~~~~~~~~

:x,y,w,h four real values defining the rectangle.
:



Description
~~~~~~~~~~~

`xrect` fills a rectangle defined by `[x,y,w,h]` (upper-left point,
width, height) in user coordinates.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `plot2d`_(0,0,-1,"010"," ",[-2,-2,2,2])
    `xset`_("color",5)
    xfrect(-1,1,2,2)




See Also
~~~~~~~~


+ `xrect`_ draw a rectangle
+ `xrects`_ draw or fill a set of rectangles


.. _xrect: xrect.html
.. _xrects: xrects.html


