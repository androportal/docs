


atand
=====

2-quadrant and 4-quadrant element-wise inverse tangent, result in
degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    phi=atand(x)
    phi=atand(y,x)




Arguments
~~~~~~~~~

:x real scalar, vector or matrix
: :phi real scalar, vector or matrix
: :x, y real scalars, vectors or matrices of the same size
: :phi real scalar, vector or matrix
:



Description
~~~~~~~~~~~

The first form computes the 2-quadrant inverse tangent, which is the
inverse of `tand(phi)`. The `` `phi` elements are in the interval
[-90, 90].

The second form computes the 4-quadrant arctangent (atan2 in Fortran),
this is, it returns the argument (angle) of the complex number
`x+i*y`. The range of `atand(y,x)` is [-180,180i].

Both forms yield identical values if `x>0`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    // example with the second form
    x=[0,1/`sqrt`_(3),1,`sqrt`_(3),%inf,0]
    atand(x)




See Also
~~~~~~~~


+ `tan`_ tangent
+ `tand`_ tangent, argument in degree.


.. _tand: tand.html
.. _tan: tan.html


