====
"xpolys"
====

Scilab Function Last update : April 1993
**xpolys** - draw a set of polylines or polygons



Calling Sequence
~~~~~~~~~~~~~~~~

xpolys(xpols,ypols,[draw])




Parameters
~~~~~~~~~~


+ **xpols,ypols** : matrices of the same size (p,n) (points of the
  polylines).
+ **draw** : vector of size n.




Description
~~~~~~~~~~~

**xpolys** draws a set of polylinse using marks or dashed lines. The
coordinates of each polyline are stored in a column of **xpols** and
**ypols** .

The style of polyline i is given by **draw(i)** :

**-**If **draw(i)** is negative, the mark with id **-draw(i)** is used
  to draw polyline i (marks are drawn using the current pattern). Use
  **xset()** to see the meaning of the ids.
**-**If **draw(i)** is strictly positive, the line style (or color)
  with id **draw(i)** is used to draw polyline i. Use **xset()** to see
  the meaning of the ids.




Examples
~~~~~~~~


::

    
    
    plot2d(0,0,-1,"012"," ",[0,0,1,1])
    rand("uniform")
    xset("color",3)
    xpolys(rand(3,5),rand(3,5),[-1,-2,0,1,2])
    xset("default")
     
      




See Also
~~~~~~~~

` **xfpoly** `_,` **xfpolys** `_,` **xpoly** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xpoly.htm
.. _
      : ://./graphics/xfpoly.htm
.. _
      : ://./graphics/xfpolys.htm


