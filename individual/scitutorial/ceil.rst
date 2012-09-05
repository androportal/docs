


ceil
====

round up



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=ceil(x)




Arguments
~~~~~~~~~

:x a real or complex matrix
: :y integer value matrix (or complex matrix with integer real and
  imaginary part)
:



Description
~~~~~~~~~~~

`ceil(x)` returns an integer or complex matrix made of rounded up
elements.



Examples
~~~~~~~~


::

    ceil([1.3 1.5 1.7 2.5 3.7])
    // Notice the result for x negative
    ceil([-1.3 -1.5 -1.7 -2.5 -3.7])
    ceil([2.2+%i*23, %pi*%i, -%i ])




See Also
~~~~~~~~


+ `round`_ round to nearest integer
+ `floor`_ round down
+ `int`_ round towards zero


.. _int: int.html
.. _floor: floor.html
.. _round: round.html


