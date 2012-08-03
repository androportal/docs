====
"xarc"
====

Scilab Function Last update : April 1993
**xarc** - draw a part of an ellipse



Calling Sequence
~~~~~~~~~~~~~~~~

xarc(x,y,w,h,a1,a2)




Parameters
~~~~~~~~~~


+ **x,y,w,h** : four real values defining a rectangle.
+ **a1,a2** : real values defining a sector.




Description
~~~~~~~~~~~

**xarc** draws a part of an ellipse contained in the rectangle
**(x,y,w,h)** (upper-left point, width, height), and in the sector
defined by the angle **alpha1** and the angle **alpha1+alpha2** .
**alpha1** and **alpha2** are given respectively by **a1/64** degrees
and **a2/64** degrees. This function uses the current graphics scale
and color.



Examples
~~~~~~~~


::

    
    
    // isoview scaling 
    plot2d(0,0,-1,"031"," ",[-2,-2,2,2])
    xset("color",3)
    xarc(-1,1,2,2,0,90*64)
    xarc(-1.5,1.5,3,3,0,360*64)
     
      




See Also
~~~~~~~~

` **xarcs** `_,` **xfarc** `_,` **xfarcs** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xarcs.htm
.. _
      : ://./graphics/xfarcs.htm
.. _
      : ://./graphics/xfarc.htm


