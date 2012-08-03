====
"xfrect"
====

Scilab Function Last update : April 1993
**xfrect** - fill a rectangle



Calling Sequence
~~~~~~~~~~~~~~~~

xfrect(x,y,w,h)
xfrect(rect) // rect =[x,y,w,h]




Parameters
~~~~~~~~~~


+ **x,y,w,h** : four real values defining the rectangle.




Description
~~~~~~~~~~~

**xrect** fills a rectangle defined by **[x,y,w,h]** (upper-left
point, width, height) using the current scale and style.



Examples
~~~~~~~~


::

    
    
    plot2d(0,0,-1,"010"," ",[-2,-2,2,2])
    xset("color",5)
    xfrect(-1,1,2,2)
    xset("default")
     
      




See Also
~~~~~~~~

` **xrect** `_,` **xrects** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xrect.htm
.. _
      : ://./graphics/xrects.htm


