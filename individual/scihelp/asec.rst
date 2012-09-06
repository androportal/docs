


asec
====

computes the element-wise inverse secant of the argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = asec(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Computes the element-wise inverse secant of the argument. For real
argument with absolute value greater than 1 the result is real.

The following equalities hold: `asec(z) = -acsc(-z) = asin(1/z) =
%pi/2-asec(x) = %i*acsch(%i*z)`



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[1 2 -2 `sqrt`_(2) -`sqrt`_(2) 2/`sqrt`_(3) -2/`sqrt`_(3) -1];
    asec(x)/%pi




See Also
~~~~~~~~


+ `sec`_ Compute the element-wise secant of the argument.
+ `asecd`_ computes the element-wise inverse secant of the argument,
  results in degree.




References
~~~~~~~~~~


+ Kahan, W., "Branch cuts for complex elementary functions, or, Much
  ado about nothing's sign bit", Proceedings of the joing IMA/SIAM
  conference on The State of the Art in Numerical Analysis, University
  of Birmingham, A. Iserles and M.J.D. Powell, eds, Clarendon Press,
  Oxford, 1987, 165-210.


.. _sec: sec.html
.. _asecd: asecd.html


