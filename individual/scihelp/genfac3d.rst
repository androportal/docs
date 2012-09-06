


genfac3d
========

Compute facets of a 3D surface



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xx,yy,zz]=genfac3d(x,y,z,[mask])




Arguments
~~~~~~~~~

:xx,yy,zz matrices of size (4,n-1xm-1). `xx(:,i)` , `yy(:,i)` and
  `zz(:,i)` are respectively the x-axis, y-axis and z-axis coordinates
  of the 4 points of the ith four sided facet.
: :x x-axis coordinates vector of size m.
: :y y-axis coordinates vector of size n.
: :z matrix of size (m,n). `z(i,j)` is the value of the surface at the
  point (x(i),y(j)).
: :mask boolean optional matrix with same size as `z` used to select
  the entries of `z` to be represented by facets.
:



Description
~~~~~~~~~~~

`genfac3d` computes a four sided facets representation of a 3D surface
`z=f(x,y)` defined by `x`, `y` and `z`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    t=[0:0.3:2*%pi]'; 
    z=`sin`_(t)*`cos`_(t');
    [xx,yy,zz]=genfac3d(t,t,z);
    `plot3d`_(xx,yy,zz)




See Also
~~~~~~~~


+ `eval3dp`_ compute facets of a 3D parametric surface
+ `plot3d`_ 3D plot of a surface


.. _eval3dp: eval3dp.html
.. _plot3d: plot3d.html


