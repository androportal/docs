


acot
====

computes the element-wise inverse cotangeant of the argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = acot(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Computes the element-wise inverse cotangeant of the argument. For real
argument the result is real.

The following equalities hold: `acot(z) = %pi-
acot(-z)=%pi/2-atan(z)=%i*acoth(%i*z)+%pi/2*(1-csgn(z+%i))`



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[1 2 -2 `sqrt`_(2) -`sqrt`_(2) 2/`sqrt`_(3) -2/`sqrt`_(3) -1];
    acot(x)/%pi




See Also
~~~~~~~~


+ `cotg`_ cotangent
+ `acotd`_ computes the element-wise inverse cotangeant of the
  argument, result in degree.
+ `csgn`_ Returns the sign of a vector of real of complex values.
+ `acoth`_ element wise hyperbolic cotangeant inverse.
+ `atan`_ 2-quadrant and 4-quadrant inverse tangent




References
~~~~~~~~~~


+ Kahan, W., "Branch cuts for complex elementary functions, or, Much
  ado about nothing's sign bit", Proceedings of the joing IMA/SIAM
  conference on The State of the Art in Numerical Analysis, University
  of Birmingham, A. Iserles and M.J.D. Powell, eds, Clarendon Press,
  Oxford, 1987, 165-210.


.. _acoth: acoth.html
.. _atan: atan.html
.. _csgn: csgn.html
.. _acotd: acotd.html
.. _cotg: cotg.html


