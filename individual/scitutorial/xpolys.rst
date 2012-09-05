


xpolys
======

draw a set of polylines or polygons



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xpolys(xpols,ypols,[draw])




Arguments
~~~~~~~~~

:xpols,ypols matrices of the same size (p,n) (points of the
  polylines).
: :draw vector of size n.
:



Description
~~~~~~~~~~~

`xpolys` draws a set of polylinse using marks or dashed lines. The
coordinates of each polyline are stored in a column of `xpols` and
`ypols`.

The style of polyline i is given by `draw(i)`:


+ If `draw(i)` is negative, the mark with id `-draw(i)` is used to
  draw polyline i (marks are drawn using the current pattern). Use
  `xset()` to see the meaning of the ids.
+ If `draw(i)` is strictly positive, the line style (or color) with id
  `draw(i)` is used to draw polyline i. Use `xset()` to see the meaning
  of the ids.




Sample
~~~~~~



Examples
~~~~~~~~


::

    `plot2d`_(0,0,-1,"012"," ",[0,0,1,1])
    `rand`_("uniform")
    `xset`_("color",3)
    xpolys(`rand`_(3,5),`rand`_(3,5),[-1,-2,0,1,2])




See Also
~~~~~~~~


+ `xfpoly`_ fill a polygon
+ `xfpolys`_ fill a set of polygons
+ `xpoly`_ draw a polyline or a polygon


.. _xfpolys: xfpolys.html
.. _xfpoly: xfpoly.html
.. _xpoly: xpoly.html


