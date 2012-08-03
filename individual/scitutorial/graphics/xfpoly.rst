====
"xfpoly"
====

Scilab Function Last update : 04/10/2005
**xfpoly** - fill a polygon



Calling Sequence
~~~~~~~~~~~~~~~~

xfpoly(xv,yv,[close])




Parameters
~~~~~~~~~~


+ **xv,yv** : two vectors of same size (the points of the polygon).
+ **close** : integer. If close=1, the polyline is closed; default
  value is 0.




Description
~~~~~~~~~~~

**xfpoly** fills a polygon with the current color. If **close** is
equal to 1 a point is added to the polyline **xv,yv** to define a
polygon.



Examples
~~~~~~~~


::

    
    
    x=sin(2*%pi*(0:4)/5);
    y=cos(2*%pi*(0:4)/5);
    plot2d(0,0,-1,"010"," ",[-2,-2,2,2])
    xset("color",5)
    xfpoly(x,y)
    
    // News graphics only
    e=gce(); // get the current entity (the last created: here the polyline)
    e.fill_mode='off';
    e.closed = 'off' // the polyline is now open
      
    xset("default")
     
      




See Also
~~~~~~~~

` **xfpolys** `_,` **xpoly** `_,` **xpolys** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xpoly.htm
.. _
      : ://./graphics/xpolys.htm
.. _
      : ://./graphics/xfpolys.htm


