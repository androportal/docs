====
"linear_interpn"
====

Scilab Function Last update : 11/03/2005
**linear_interpn** - n dimensional linear interpolation



Calling Sequence
~~~~~~~~~~~~~~~~

vp = linear_interpn(xp1,xp2,..,xpn, x1, ..., xn, v [,out_mode])




Parameters
~~~~~~~~~~


+ **xp1, xp2, .., xpn** : real vectors (or matrices) of same size
+ **x1 ,x2, ..., xn** : strictly increasing row vectors (with at least
  2 components) defining the n dimensional interpolation grid
+ **v** : vector (case n=1), matrix (case n=2) or hypermatrix (case n
  > 2) with the values of the underlying interpolated function at the
  grid points.
+ **out_mode** : (optional) string defining the evaluation outside the
  grid (extrapolation)
+ **vp** : vector or matrix of same size than **xp1, ..., xpn**




Description
~~~~~~~~~~~

Given a n dimensional grid defined by the n vectors **x1 ,x2, ...,
xn** and the values **v** of a function (says *f*) at the grid points
:


::

    
          v(i1,i2,...,in) = f(x1(i1),x2(i2), ..., xn(in))
             


this function computes the linear interpolant of *f* from the grid
(called *s* in the following) at the points which coordinates are
defined by the vectors (or matrices) **xp1, xp2, ..., xpn** :


::

    
       vp(i) = s(xp1(i),xp2(i), ..., xpn(i))
    
       or vp(i,j) = s(xp1(i,j),xp2(i,j), ..., xpn(i,j)) in case the xpk are matrices
             


The **out_mode** parameter set the evaluation rule for extrapolation:
if we note *Pi=(xp1(i),xp2(i),...,xpn(i))* then **out_mode** defines
the evaluation rule when:


::

    
       P(i) not in  [x1(1) x1($)] x [x2(1) x2($)] x ... x [xn(1) xn($)]
             


The different choices are:

