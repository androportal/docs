


atan
====

2-quadrant and 4-quadrant inverse tangent



Calling Sequence
~~~~~~~~~~~~~~~~


::

    phi=atan(x)
    phi=atan(y,x)




Arguments
~~~~~~~~~

:x real or complex scalar, vector or matrix
: :phi real or complex scalar, vector or matrix
: :x, y real scalars, vectors or matrices of the same size
: :phi real scalar, vector or matrix
:



Description
~~~~~~~~~~~

The first form computes the 2-quadrant inverse tangent, which is the
inverse of `tan(phi)`. For real `x`, `phi` is in the interval (-pi/2,
pi/2). For complex `x`, `atan` has two singular, branching points
`+%i`, `-%i` and the chosen branch cuts are the two imaginary half-
straight lines [i, i*oo) and (-i*oo, -i].

The second form computes the 4-quadrant arctangent (atan2 in Fortran),
this is, it returns the argument (angle) of the complex number
`x+i*y`. The range of `atan(y,x)` is (-pi, pi].

For real arguments, both forms yield identical values if `x>0`.

In case of vector or matrix arguments, the evaluation is done element-
wise, so that `phi` is a vector or matrix of the same size with
`phi(i,j)=atan(x(i,j))` or `phi(i,j)=atan(y(i,j),x(i,j))`.



Examples
~~~~~~~~


::

    // examples with the second form
    x=[1,%i,-1,%i]
    phasex=atan(`imag`_(x),`real`_(x))
    atan(0,-1)
    atan(-%eps,-1)
    
    // branch cuts
    atan(-%eps + 2*%i)
    atan(+%eps + 2*%i)
    atan(-%eps - 2*%i)
    atan(+%eps - 2*%i)
    
    // values at the branching points
    `ieee`_(2)
    atan(%i)
    atan(-%i)




See Also
~~~~~~~~


+ `tan`_ tangent
+ `ieee`_ set floating point exception mode


.. _ieee: ieee.html
.. _tan: tan.html


