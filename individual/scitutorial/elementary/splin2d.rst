====
"splin2d"
====

Scilab Function Last update : 11/03/2005
**splin2d** - bicubic spline gridded 2d interpolation



Calling Sequence
~~~~~~~~~~~~~~~~

C = splin2d(x, y, z, [,spline_type])




Parameters
~~~~~~~~~~


+ **x,y** : strictly increasing row vectors (with at least 2
  components) defining the interpolation grid
+ **z** : nx x ny matrix (nx being the length of **x** and ny the
  length of **y** )
+ **spline_type ** : (optional) a string selecting the kind of bicubic
  spline to compute
+ **C** : a big vector with the coefficients of the bicubic patches
  (see details in Remarks)




Description
~~~~~~~~~~~

This function computes a bicubic spline or sub-spline *s* which
interpolates the *(xi,yj,zij)* points, ie, we have *s(xi,yj)=zij* for
all *i=1,..,nx* and *j=1,..,ny*. The resulting spline *s* is defined
by the triplet **(x,y,C)** where **C** is the vector (of length
16(nx-1)(ny-1)) with the coefficients of each of the (nx-1)(ny-1)
bicubic patches : on *[x(i) x(i+1)]x[y(j) y(j+1)]*, *s* is defined by
:


::

    
                 _4_   _4_                       
                 \     \                   k-1       l-1
        s(x,y) = /     /    C (k,l) (x - xi)  (y - yj)
                 ---   ---   ij
                 k=1   l=1
              


The evaluation of *s* at some points must be done by the `
**interp2d** `_ function. Several kind of splines may be computed by
selecting the appropriate **spline_type** parameter. The method used
to compute the bicubic spline (or sub-spline) is the old fashionned
one 's, i.e. to compute on each grid point *(xi,yj)* an approximation
of the first derivatives *ds/dx(xi,yj)* and *ds/dy(xi,yj)* and of the
cross derivative *d2s/dxdy(xi,yj)*. Those derivatives are computed by
the mean of 1d spline schemes leading to a C2 function ( *s* is twice
continuously differentiable) or by the mean of a local approximation
scheme leading to a C1 function only. This scheme is selected with the
**spline_type** parameter (see ` **splin** `_ for details) :

