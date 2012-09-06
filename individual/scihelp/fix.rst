


fix
===

round towards zero



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=fix(x)




Arguments
~~~~~~~~~

:x a real or complex matrix
: :y integer value matrix (or complex matrix with integer real and
  imaginary part)
:



Description
~~~~~~~~~~~

`fix(x)` returns an integer matrix made of nearest rounded integers
toward zero,i.e, `y=sign(x).*floor(abs(x))`. Same as `int`.



Examples
~~~~~~~~


::

    fix([1.3 1.5 1.7 2.5 3.7])
    // Notice the result for x negative
    fix([-1.3 -1.5 -1.7 -2.5 -3.7])
    fix([2.2+%i*23, %pi*%i, -%i ])




See Also
~~~~~~~~


+ `round`_ round to nearest integer
+ `floor`_ round down
+ `ceil`_ round up


.. _ceil: ceil.html
.. _floor: floor.html
.. _round: round.html


