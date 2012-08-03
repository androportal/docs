====
"xrect"
====

Scilab Function Last update : April 1993
**xrect** - draw a rectangle



Calling Sequence
~~~~~~~~~~~~~~~~

xrect(x,y,w,h)
xrect(rect) // rect =[x,y,w,h]




Parameters
~~~~~~~~~~


+ **x,y,w,h** : four real values defining the rectangle.




Description
~~~~~~~~~~~

**xrect** draws a rectangle defined by **[x,y,w,h]** (upper-left
point, width, height) using the current scale and style.



Examples
~~~~~~~~


::

    
    
    plot2d(0,0,-1,"010"," ",[-2,-2,2,2])
    xset("color",5)
    xrect(-1,1,2,2)
    xset("default")
     
      




See Also
~~~~~~~~

` **xfrect** `_,` **xrects** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xfrect.htm
.. _
      : ://./graphics/xrects.htm


