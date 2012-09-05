


acsch
=====

computes the element-wise inverse hyperbolic cosecant of the argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = acsch(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Computes the element-wise inverse hyperbolic cotsecant of the
argument. For real argument with absolute value greater than 1 the
result is real.

The following equalities hold: `acsch(z) = -acsch(-z) = asinh(1/z) =
csgn(%i+1/z)*asech(-i*z)-%i*%pi/2 = %i*acsc(%i*z)`



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`linspace`_(1,20,200);
    x=[-x($:-1:1) %nan x];
    `plot`_(x,acsch(x))




See Also
~~~~~~~~


+ `csch`_ Computes the element-wise hyperbolic cosecant of the
  argument.




References
~~~~~~~~~~


+ Kahan, W., "Branch cuts for complex elementary functions, or, Much
  ado about nothing's sign bit", Proceedings of the joing IMA/SIAM
  conference on The State of the Art in Numerical Analysis, University
  of Birmingham, A. Iserles and M.J.D. Powell, eds, Clarendon Press,
  Oxford, 1987, 165-210.


.. _csch: csch.html


