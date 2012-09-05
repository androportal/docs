


asech
=====

computes the element-wise inverse hyperbolic secant of the argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = asech(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Computes the element-wise inverse hyperbolic secant of the argument.
If the argument is real and have absolute value less than one the
result is real.

The following equalities hold: `asech(x) = acosh(1 ./ x)=
%i*csgn(%i*(1−1 ./ x))*asec(x)=csgn(%i*(1 − 1 ./
x))*(%pi/2*(%i+acsch(%i*x)))`



Examples
~~~~~~~~


::

    asech(1)




See Also
~~~~~~~~


+ `sech`_ Compute the element-wise hyperbolic secant of the argument.




References
~~~~~~~~~~


+ Kahan, W., "Branch cuts for complex elementary functions, or, Much
  ado about nothing's sign bit", Proceedings of the joing IMA/SIAM
  conference on The State of the Art in Numerical Analysis, University
  of Birmingham, A. Iserles and M.J.D. Powell, eds, Clarendon Press,
  Oxford, 1987, 165-210.


.. _sech: sech.html


