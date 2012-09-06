


scaling
=======

affine transformation of a set of points



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xy1=scaling(xy,scalingFactor,[orig])




Arguments
~~~~~~~~~

:xy1 matrice of size (2,.).
: :xy matrice of size (2,.).
: :scalingFactor real scalar, coefficient of the linear
  transformation.
: :orig shift vector; default value is [0;0].
:



Description
~~~~~~~~~~~

`scaling` performs an affine transformation on the set of points
defined by the coordinates `xy`:

`xy1(:,i) = scalingFactor * (xy(:,i) - orig) + orig`.



