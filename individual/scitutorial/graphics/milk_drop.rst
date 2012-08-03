====
"milk_drop"
====

Scilab Function Last update : April 1993
**milk_drop** - milk drop 3D function



Calling Sequence
~~~~~~~~~~~~~~~~

z=milk_drop(x,y)




Parameters
~~~~~~~~~~


+ **x,y** : two row vectors of size n1 and n2.
+ **z** : matrix of size (n1,n2).




Description
~~~~~~~~~~~

**milk_drop** is a function representing the surface of a milk drop
falling down into milk. It can be used to test functions **eval3d**
and **plot3d** .



Examples
~~~~~~~~


::

    
    
    x=-2:0.1:2; y=x;
    z=eval3d(milk_drop,x,y);
    plot3d(x,y,z)
     
      




See Also
~~~~~~~~

` **eval3d** `_,` **plot3d** `_,



Author
~~~~~~

Steer S.

.. _
      : ://./graphics/eval3d.htm
.. _
      : ://./graphics/plot3d.htm


