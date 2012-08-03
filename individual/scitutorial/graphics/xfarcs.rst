====
"xfarcs"
====

Scilab Function Last update : April 1993
**xfarcs** - fill parts of a set of ellipses



Calling Sequence
~~~~~~~~~~~~~~~~

xfarcs(arcs,[style])




Parameters
~~~~~~~~~~


+ **arcs** : matrix of size (6,n) describing the ellipses.
+ **style** : row vector of size n giving the colors to use.




Description
~~~~~~~~~~~

**xarcs** fills parts of a set of ellipses described by **arcs** :
**arcs=[x y w h a1 a2;x y w h a1 a2;...]'** where each ellipse is
defined by the 6 parameters **(x,y,w,h,a1,a2)** (see **xfarc** ).

**style(i)** gives the color number for filling ellipse number **i** .



Examples
~~~~~~~~


::

    
    
    plot2d(0,0,-1,"031"," ",[-1,-1,1,1])
    arcs=[-1.0 0.0 0.5; // upper left x
           1.0 0.0 0.5; // upper left y
           0.5 1.0 0.5; // width
           0.5 0.5 1.0; // height
           0.0 0.0 0.0; // angle 1
           180*64 360*64 90*64]; // angle 2
    xfarcs(arcs,[1,2,3])
     
      




See Also
~~~~~~~~

` **xarc** `_,` **xfarc** `_,` **xfarc** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xfarc.htm
.. _
      : ://./graphics/xarc.htm


