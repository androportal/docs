


xfpoly
======

fill a polygon



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xfpoly(xv,yv,[fill])




Arguments
~~~~~~~~~

:xv,yv two vectors of same size (the points of the polygon).
: :fill integer, the color used to fill the polygon.
:



Description
~~~~~~~~~~~

`xfpoly` fills a polygon with the current color or a color specified
by the optional `fill` argument.

If `fill` is omitted, the polygon is filled with the current color and
its contour is drawn with the current color and line style. If `fill`
is present, it is used to fill the polygon as follows:


+ `if fill<0`, the polygon is filled with the color `-fill`, and its
  contour is not drawn.
+ `if fill=0`, the polygon is filled with the current color and its
  contour is drawn with the current color and line style (equivalent to
  `fill` omitted).
+ `if fill>0`, the polygon is filled with the color `fill` and its
  contour is drawn with the current color and line style.




Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`sin`_(2*%pi*(0:4)/5);
    y=`cos`_(2*%pi*(0:4)/5);
    `plot2d`_(0,0,-1,"010"," ",[-2,-2,2,2]);
    `xset`_("color",5);
    xfpoly(x,y);
    
    e=`gce`_(); // get the current entity (the last created: here the polyline)
    e.fill_mode='off'; // shows only the contour
    
    `delete`_(e);
    
    // Create a new polygon filled with color 3
    // and its contour drawn with the current color
    xfpoly(x,y,3);




See Also
~~~~~~~~


+ `xfpolys`_ fill a set of polygons
+ `xpoly`_ draw a polyline or a polygon
+ `xpolys`_ draw a set of polylines or polygons


.. _xfpolys: xfpolys.html
.. _xpolys: xpolys.html
.. _xpoly: xpoly.html


