====
"interp2d"
====

Scilab Function Last update : 11/03/2005
**interp2d** - bicubic spline (2d) evaluation function



Calling Sequence
~~~~~~~~~~~~~~~~

[zp[,dzpdx,dzpdy[,d2zpdxx,d2zpdxy,d2zpdyy]]]=interp2d(xp,yp,x,y,C
  [,out_mode])




Parameters
~~~~~~~~~~


+ **xp, yp** : real vectors or matrices of same size
+ **x,y,C** : real vectors defining a bicubic spline or sub-spline
  function (called **s** in the following)
+ **out_mode** : (optional) string defining the evaluation of **s**
  outside [x(1),x(nx)]x[y(1),y(ny)]
+ **zp** : vector or matrix of same format than **xp** and **yp** ,
  elementwise evaluation of **s** on these points.
+ **dzpdx, dzpdy** : vectors (or matrices) of same format than **xp**
  and **yp** , elementwise evaluation of the first derivatives of **s**
  on these points.
+ **d2zpdxx, d2zpdxy, d2zpdyy** : vectors (or matrices) of same format
  than **xp** and **yp** , elementwise evaluation of the second
  derivatives of **s** on these points.




Description
~~~~~~~~~~~

Given three vectors **(x,y,C)** defining a bicubic spline or sub-
spline function (see ` **splin2d** `_) this function evaluates *s*
(and *ds/dx, ds/dy, d2s/dxx, d2s/dxy, d2s/dyy* if needed) at
*(xp(i),yp(i))* :


::

    
          zp(i) = s(xp(i),yp(i))   
          dzpdx(i) = ds/dx(xp(i),yp(i))
          dzpdy(i) = ds/dy(xp(i),yp(i))  
          d2zpdxx(i) = d2s/dx2(xp(i),yp(i))
          d2zpdxy(i) = d2s/dxdy(xp(i),yp(i))  
          d2zpdyy(i) = d2s/dy2(xp(i),yp(i))
             


The **out_mode** parameter defines the evaluation rule for
extrapolation, i.e. for *(xp(i),yp(i)) not in
[x(1),x(nx)]x[y(1),y(ny)]*:

