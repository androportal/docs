


sign
====

signum function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    X=sign(A)




Arguments
~~~~~~~~~

:А real or complex matrix
: :X real or complex matrix
:



Description
~~~~~~~~~~~

`X=sign(A)` returns the matrix made of the signs of `A(i,j)`. For
complex `A`, `sign(A) = A./abs(A)`.



Examples
~~~~~~~~


::

    sign(`rand`_(2,3))
    sign(1+%i)




See Also
~~~~~~~~


+ `abs`_ absolute value, magnitude
+ `csgn`_ Returns the sign of a vector of real of complex values.
+ `signm`_ matrix signum function


.. _abs: abs.html
.. _signm: signm.html
.. _csgn: csgn.html


