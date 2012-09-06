


int
===

round towards zero



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=int(X)




Arguments
~~~~~~~~~

:X real matrix
: :y integer matrix
:



Description
~~~~~~~~~~~

`int(X)` returns the integer part of the real matrix `X`. Same as
`fix`.



Examples
~~~~~~~~


::

    int([1.3 1.5 1.7 2.5 3.7])
    // Notice the result for x negative
    int([-1.3 -1.5 -1.7 -2.5 -3.7])




See Also
~~~~~~~~


+ `round`_ round to nearest integer
+ `floor`_ round down
+ `ceil`_ round up


.. _ceil: ceil.html
.. _floor: floor.html
.. _round: round.html


