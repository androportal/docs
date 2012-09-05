


erfinv
======

inverse error function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = erfinv(x)




Arguments
~~~~~~~~~

:x real vector or matrix
: :y real vector or matrix (same size as x)
:



Description
~~~~~~~~~~~

The `erfinv` function computes the inverse of the `erf` error
function. Thus, erf(erfinv(x)) = x for all `x` such that `-1 ≤ x ≤ 1`
.



Examples
~~~~~~~~


::

    x = `linspace`_(-0.99, 0.99, 100);
    y = erfinv(x);
    `plot2d`_(x, y)




See Also
~~~~~~~~


+ `cdfnor`_ cumulative distribution function normal distribution
+ `erf`_ The error function.
+ `erfc`_ The complementary error function.
+ `erfcx`_ scaled complementary error function.




References
~~~~~~~~~~

Milton Abramowitz and Irene A. Stegun, eds. Handbook of Mathematical
Functions with Formulas, Graphs, and Mathematical Tables. New York:
Dover, 1972.

.. _erfc: erfc.html
.. _cdfnor: cdfnor.html
.. _erf: erf.html
.. _erfcx: erfcx.html


