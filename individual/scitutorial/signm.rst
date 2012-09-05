


signm
=====

matrix signum function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    X=signm(A)




Arguments
~~~~~~~~~

:А real or complex matrix
: :X real or complex matrix
:



Description
~~~~~~~~~~~

For square and Hermitian matrices `X=signm(A)` is matrix signum
function.



Examples
~~~~~~~~


::

    A=`rand`_(4,4);
    B=A+A';
    X=signm(B);
    `spec`_(B),`spec`_(X)




See Also
~~~~~~~~


+ `csgn`_ Returns the sign of a vector of real of complex values.
+ `sign`_ signum function


.. _sign: sign.html
.. _csgn: csgn.html


