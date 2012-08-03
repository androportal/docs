====
"interp"
====

Scilab Function Last update : 11/03/2005
**interp** - cubic spline evaluation function



Calling Sequence
~~~~~~~~~~~~~~~~

[yp [,yp1 [,yp2 [,yp3]]]]=interp(xp, x, y, d [, out_mode])




Parameters
~~~~~~~~~~


+ **xp** : real vector or matrix
+ **x,y,d** : real vectors of the same size defining a cubic spline or
  sub-spline function (called **s** in the following)
+ **out_mode** : (optional) string defining the evaluation of **s**
  outside the [x1,xn] interval
+ **yp** : vector or matrix of same size than **xp** , elementwise
  evaluation of **s** on **xp** (yp(i)=s(xp(i) or yp(i,j)=s(xp(i,j))
+ **yp1, yp2, yp3** : vectors (or matrices) of same size than **xp** ,
  elementwise evaluation of the successive derivatives of **s** on
  **xp**




Description
~~~~~~~~~~~

Given three vectors **(x,y,d)** defining a spline or sub-spline
function (see ` **splin** `_) with **yi=s(xi), di = s'(xi)** this
function evaluates **s** (and **s', s'', s'''** if needed) at
**xp(i)** :


::

    
          yp(i) = s(xp(i))    or  yp(i,j) = s(xp(i,j))
          yp1(i) = s'(xp(i))   or  yp1(i,j) = s'(xp(i,j))
          yp2(i) = s''(xp(i))   or  yp2(i,j) = s''(xp(i,j))
          yp3(i) = s'''(xp(i))   or  yp3(i,j) = s'''(xp(i,j))
             


The **out_mode** parameter set the evaluation rule for extrapolation,
i.e. for **xp(i)** not in [x1,xn] :

