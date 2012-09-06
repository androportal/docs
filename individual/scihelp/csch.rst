


csch
====

Computes the element-wise hyperbolic cosecant of the argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = csch(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array with same dimensions as `x`.
:



Description
~~~~~~~~~~~

Computes the element-wise hyperbolic cosecant of the argument. For
real data the results are real.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`linspace`_(0.01,4,200);
    x=[-x($:-1:1) %nan x];
    `clf`_();
    `plot`_(x,csch(x))




See Also
~~~~~~~~


+ `csc`_ Computes the element-wise cosecant of the argument.
+ `acsch`_ computes the element-wise inverse hyperbolic cosecant of
  the argument.


.. _csc: csc.html
.. _acsch: acsch.html


