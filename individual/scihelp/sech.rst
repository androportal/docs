


sech
====

Compute the element-wise hyperbolic secant of the argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = sech(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Compute the element-wise hyperbolic secant of the argument. The
hyperbolic secant is defined as 1/cosh. For real data the results are
real and in `[0 1]`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`linspace`_(-10,10,1000)
    `plot`_(x,sech(x))




See Also
~~~~~~~~


+ `cosh`_ hyperbolic cosine
+ `asech`_ computes the element-wise inverse hyperbolic secant of the
  argument.


.. _cosh: cosh.html
.. _asech: asech.html


