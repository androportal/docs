


floor
=====

round down



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=floor(x)




Arguments
~~~~~~~~~

:x a real or complex matrix
: :y integer value matrix (or complex matrix with integer real and
  imaginary part)
:



Description
~~~~~~~~~~~

`floor(x)` returns an integer matrix made of nearest rounded down
integers.



Examples
~~~~~~~~


::

    floor([1.3 1.5 1.7 2.5 3.7])
    // Notice the result for x negative
    floor([-1.3 -1.5 -1.7 -2.5 -3.7])
    floor([2.2+%i*23, %pi*%i, -%i ])




See Also
~~~~~~~~


+ `round`_ round to nearest integer
+ `fix`_ round towards zero
+ `ceil`_ round up


.. _fix: fix.html
.. _ceil: ceil.html
.. _round: round.html


