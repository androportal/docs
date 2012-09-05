


milk_drop
=========

Milk drop 3D function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    z=milk_drop(x,y)




Arguments
~~~~~~~~~

:x,y two row vectors of size n1 and n2.
: :z matrix of size (n1,n2).
:



Description
~~~~~~~~~~~

`milk_drop` is a function representing the surface of a milk drop
falling down into milk. It can be used to test functions `eval3d` and
`plot3d`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=-2:0.1:2;
    y=x;
    z=`eval3d`_(milk_drop,x,y);
    `plot3d`_(x,y,z)




See Also
~~~~~~~~


+ `eval3d`_ values of a function on a grid
+ `plot3d`_ 3D plot of a surface


.. _plot3d: plot3d.html
.. _eval3d: eval3d.html


