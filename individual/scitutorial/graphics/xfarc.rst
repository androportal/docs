====
"xfarc"
====

Scilab Function Last update : April 1993
**xfarc** - fill a part of an ellipse



Calling Sequence
~~~~~~~~~~~~~~~~

xfarc(x,y,w,h,a1,a2)




Parameters
~~~~~~~~~~


+ **x,y,w,h** : four real values defining a rectangle.
+ **a1,a2** : real values defining a sector.




Description
~~~~~~~~~~~

**xfarc** fills a part of an ellipse contained in the rectangle
**(x,y,w,h)** (upper-left point, width, height), and in the sector
defined by the angle **alpha1** and the angle **alpha1+alpha2** .
**alpha1** and **alpha2** are given respectively by **a1/64** degrees
and **a2/64** degrees. This function uses the current color and
graphics scale.



Examples
~~~~~~~~


::

    
    
    // isoview scaling 
    plot2d(0,0,-1,"031"," ",[-2,-2,2,2])
    xfarc(-0.5,0.5,1,1,0,90*64)
    xset("color",2)
    xfarc(0.5,0.5,1,1,0,360*64)
     
      




See Also
~~~~~~~~

` **xarc** `_,` **xarcs** `_,` **xfarcs** `_,



Author
~~~~~~

J.Ph.C.;

.. _
      : ://./graphics/xarcs.htm
.. _
      : ://./graphics/xfarcs.htm
.. _
      : ://./graphics/xarc.htm


