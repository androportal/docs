====
"interp3d"
====

Scilab Function Last update : 11/03/2005
**interp3d** - 3d spline evaluation function



Calling Sequence
~~~~~~~~~~~~~~~~

[fp[,dfpdx,dfpdy,dfpdz]]=interp3d(xp,yp,zp,tl,out_mode)




Parameters
~~~~~~~~~~


+ **xp, yp, zp** : real vectors or matrices of same size
+ **tl** : tlist of type "splin3d", defining a 3d tensor spline
  (called **s** in the following)
+ **out_mode** : (optional) string defining the evaluation of **s**
  outside the grid ([xmin,xmax]x[ymin,ymax]x[zmin,zmax])
+ **fp** : vector or matrix of same format than **xp** , **yp** and
  **zp** , elementwise evaluation of **s** on these points.
+ **dfpdx, dfpdy, dfpdz** : vectors (or matrices) of same format than
  **xp** , **yp** and **zp** , elementwise evaluation of the first
  derivatives of **s** on these points.




Description
~~~~~~~~~~~

Given a tlist **tl** defining a 3d spline function (see ` **splin3d**
`_) this function evaluates *s* (and *ds/dx, ds/dy, ds/dz* if needed)
at *(xp(i),yp(i),zp(i))* :


::

    
          zp(i) = s(xp(i),yp(i))   
          dzpdx(i) = ds/dx(xp(i),yp(i),zp(i))
          dzpdy(i) = ds/dy(xp(i),yp(i),zp(i))  
          dzpdz(i) = ds/dz(xp(i),yp(i),zp(i))
             


The **out_mode** parameter defines the evaluation rule for
extrapolation, i.e. for *(xp(i),yp(i),zp(i)) not in
[xmin,xmax]x[ymin,ymax]x[zmin,zmax]*:

