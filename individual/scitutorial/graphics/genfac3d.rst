====
"genfac3d"
====

Scilab Function Last update : October 1995
**genfac3d** - compute facets of a 3D surface



Calling Sequence
~~~~~~~~~~~~~~~~

[xx,yy,zz]=genfac3d(x,y,z,[mask])




Parameters
~~~~~~~~~~


+ **xx,yy,zz** : matrices of size (4,n-1xm-1). **xx(:,i)** ,
  **yy(:,i)** and **zz(:,i)** are respectively the x-axis, y-axis and
  z-axis coordinates of the 4 points of the ith four sided facet.
+ **x** : x-axis coordinates vector of size m.
+ **y** : y-axis coordinates vector of size n.
+ **z** : matrix of size (m,n). **z(i,j)** is the value of the surface
  at the point (x(i),y(j)).
+ **mask** : boolean optional matrix with same size as **z** used to
  select the entries of **z** to be represented by facets.




Description
~~~~~~~~~~~

**genfac3d** computes a four sided facets representation of a 3D
surface **z=f(x,y)** defined by **x** , **y** and **z** .



Examples
~~~~~~~~


::

    
    
    t=[0:0.3:2*%pi]'; z=sin(t)*cos(t');
    [xx,yy,zz]=genfac3d(t,t,z);
    plot3d(xx,yy,zz)
     
      




See Also
~~~~~~~~

` **eval3dp** `_,` **plot3d** `_,

.. _
      : ://./graphics/eval3dp.htm
.. _
      : ://./graphics/plot3d.htm


