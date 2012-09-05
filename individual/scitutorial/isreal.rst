


isreal
======

check if a variable has real or complex entries



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=isreal(x)
    t=isreal(x,eps)




Arguments
~~~~~~~~~

:x vector or matrix with floating point entries or coefficients
: :t a boolean
:



Description
~~~~~~~~~~~

`isreal(x)` returns true if `x` is stored as a real variable and false
if `x` is stored with an (eventually zero) imaginary part.

`isreal(x,eps)` returns true if `x` is stored as a real variable or if
maximum absolute value of imaginary floating points is less or equal
than `eps`.



Examples
~~~~~~~~


::

    isreal([1 2])
    isreal(1+0*%i)
    isreal(1+0*%i,0)
    isreal(1+%s)
    isreal(`sprand`_(3,3,0.1))




