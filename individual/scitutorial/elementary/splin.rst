====
"splin"
====

Scilab Function Last update : 11/03/2005
**splin** - cubic spline interpolation



Calling Sequence
~~~~~~~~~~~~~~~~

d = splin(x, y [,spline_type [, der]])




Parameters
~~~~~~~~~~


+ **x ** : a strictly increasing (row or column) vector (x must have
  at least 2 components)
+ **y ** : a vector of same format than **x**
+ **spline_type ** : (optional) a string selecting the kind of spline
  to compute
+ **der ** : (optional) a vector with 2 components, with the end
  points derivatives (to provide when spline_type="clamped")
+ **d ** : vector of the same format than **x** ( **di** is the
  derivative of the spline at **xi** )




Description
~~~~~~~~~~~

This function computes a cubic spline or sub-spline *s* which
interpolates the *(xi,yi)* points, ie, we have *s(xi)=yi* for all
*i=1,..,n*. The resulting spline *s* is completly defined by the
triplet **(x,y,d)** where **d** is the vector with the derivatives at
the **xi** : *s'(xi)=di* (this is called the *Hermite* form). The
evaluation of the spline at some points must be done by the `
**interp** `_ function. Several kind of splines may be computed by
selecting the appropriate **spline_type** parameter:

