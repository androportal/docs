


xpoly
=====

draw a polyline or a polygon



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xpoly(xv,yv [,dtype [,close]])




Arguments
~~~~~~~~~

:xv,yv matrices of the same size (points of the polyline).
: :dtype string (drawing style). default value is "lines".
: :close integer. If close=1, the polyline is closed; default value is
  0.
:



Description
~~~~~~~~~~~

`xpoly` draws a single polyline described by the vectors of
coordinates `xv` and `yv`. If `xv` and `yv` are matrices they are
considered as vectors by concatenating their columns. `dtype` can be
`"lines"` for using the current line style or `"marks"` for using the
current mark to draw the polyline.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`sin`_(2*%pi*(0:4)/5);
    y=`cos`_(2*%pi*(0:4)/5);
    
    `plot2d`_(0,0,-1,"010"," ",[-2,-2,2,2])
    `xset`_("color",5)
    xpoly(x,y,"lines",1) // by default closed
    
    e=`gce`_(); // get the current entity (the last created: here the polyline)
    e.closed = 'off' // the polyline is now open




See Also
~~~~~~~~


+ `xfpoly`_ fill a polygon
+ `xfpolys`_ fill a set of polygons
+ `xpolys`_ draw a set of polylines or polygons


.. _xfpolys: xfpolys.html
.. _xfpoly: xfpoly.html
.. _xpolys: xpolys.html


