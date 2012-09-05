


interp3d
========

3d spline evaluation function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [fp[,dfpdx,dfpdy,dfpdz]]=interp3d(xp,yp,zp,tl,out_mode)




Arguments
~~~~~~~~~

:xp, yp, zp real vectors or matrices of same size
: :tl tlist of type "splin3d", defining a 3d tensor spline (called `s`
  in the following)
: :out_mode (optional) string defining the evaluation of `s` outside
  the grid ([xmin,xmax]x[ymin,ymax]x[zmin,zmax])
: :fp vector or matrix of same format than `xp`, `yp` and `zp`,
  elementwise evaluation of `s` on these points.
: :dfpdx, dfpdy, dfpdz vectors (or matrices) of same format than `xp`,
  `yp` and `zp`, elementwise evaluation of the first derivatives of `s`
  on these points.
:



Description
~~~~~~~~~~~

Given a tlist `tl` defining a 3d spline function (see `splin3d`_) this
function evaluates *s* (and *ds/dx, ds/dy, ds/dz* if needed) at
*(xp(i),yp(i),zp(i))* :

The `out_mode` parameter defines the evaluation rule for
extrapolation, i.e. for *(xp(i),yp(i),zp(i)) not in
[xmin,xmax]x[ymin,ymax]x[zmin,zmax]* :

:"by_zero" an extrapolation by zero is done
: :"by_nan" extrapolation by Nan
: :"C0" the extrapolation is defined as follows :

::

    s(x,y) = s(`proj`_(x,y)) `where`_ proj(x,y) is nearest point 
                          of [x(1),x(nx)]x[y(1),y(ny)] from (x,y)


: :"periodic" `s` is extended by periodicity.
:



Examples
~~~~~~~~


::

    // see the examples of the splin3d help page




See Also
~~~~~~~~


+ `splin3d`_ spline gridded 3d interpolation
+ `bsplin3val`_ 3d spline arbitrary derivative evaluation function




History
~~~~~~~
Version Description 5.4.0 previously, imaginary part of input
arguments were implicitly ignored.
.. _splin3d: splin3d.html
.. _bsplin3val: bsplin3val.html


