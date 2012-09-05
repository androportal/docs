


contour2di
==========

compute level curves of a surface on a 2D plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xc,yc]=contour2di(x,y,z,nz)




Arguments
~~~~~~~~~

:x,y two real row vectors of size n1 and n2: the grid.
: :z real matrix of size (n1,n2), the values of the function.
: :nz the level values or the number of levels.
    : If `nz` is an integer, its value gives the number of level curves
    equally spaced from zmin to zmax as follows:

::

        z= zmin + (1:nz)*(zmax-zmin)/(nz+1)

    Note that the `zmin` and `zmax` levels are not drawn (generically they
    are reduced to points) but they can be added with

::

        [im,jm] = `find`_(z == zmin);     // or zmax 
        `plot2d`_(x(im)',y(jm)',-9,"000")


    : : If `nz` is a vector, `nz(i)` gives the value of the ith level
      curve.
    :

: :xc,yc vectors of identical sizes containing the contours
  definitions. See below for details.
:



Description
~~~~~~~~~~~

`contour2di` computes level curves of a surface `z=f(x,y)` on a 2D
plot. The values of `f(x,y)` are given by the matrix `z` at the grid
points defined by `x` and `y`.

`xc(1)` contains the level associated with first contour path, `yc(1)`
contains the number `N1` of points defining this contour path and (
`xc(1+(1:N1))`, `yc(1+(1:N1))` ) contain the coordinates of the paths
points. The second path begin at `xc(2+N1)` and `yc(2+N1)` and so on.



Examples
~~~~~~~~


::

    [xc,yc]=contour2di(1:10,1:10,`rand`_(10,10),5);
    k=1;n=yc(k);c=1;
    while k+yc(k)<`size`_(xc,'*')
      n=yc(k);
      `plot2d`_(xc(k+(1:n)),yc(k+(1:n)),c)
      c=c+1;
      k=k+n+1;
    end




See Also
~~~~~~~~


+ `contour`_ level curves on a 3D surface
+ `fcontour`_ level curves on a 3D surface defined by a function
  (obsolete function)
+ `fcontour2d`_ Level curves of a surface defined by a function on a
  2D plot (obsolete function)
+ `contour2d`_ level curves of a surface on a 2D plot
+ `plot2d`_ 2D plot
+ `xset`_ set values of the graphics context.This function is
  obsolete.


.. _plot2d: plot2d.html
.. _fcontour: fcontour.html
.. _fcontour2d: fcontour2d.html
.. _contour2d: contour2d.html
.. _contour: contour.html
.. _xset: xset.html


