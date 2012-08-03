====
"xpoly"
====

Scilab Function Last update : 04/10/2005
**xpoly** - draw a polyline or a polygon



Calling Sequence
~~~~~~~~~~~~~~~~

xpoly(xv,yv [,dtype [,close]])




Parameters
~~~~~~~~~~


+ **xv,yv** : matrices of the same size (points of the polyline).
+ **dtype** : string (drawing style). default value is "lines".
+ **close** : integer. If close=1, the polyline is closed; default
  value is 0.




Description
~~~~~~~~~~~

**xpoly** draws a single polyline described by the vectors of
coordinates **xv** and **yv** . If **xv** and **yv** are matrices they
are considered as vectors by concatenating their columns. **dtype**
can be **"lines"** for using the current line style or **"marks"** for
using the current mark to draw the polyline.



Examples
~~~~~~~~


::

    
    
    x=sin(2*%pi*(0:4)/5);
    y=cos(2*%pi*(0:4)/5);
    
    plot2d(0,0,-1,"010"," ",[-2,-2,2,2])
    xset("color",5)
    xpoly(x,y,"lines",1) // by default closed
    
    // News graphics only
    e=gce(); // get the current entity (the last created: here the polyline)
    e.closed = 'off' // the polyline is now open
      




See Also
~~~~~~~~

` **xfpoly** `_,` **xfpolys** `_,` **xpolys** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xfpoly.htm
.. _
      : ://./graphics/xpolys.htm
.. _
      : ://./graphics/xfpolys.htm


