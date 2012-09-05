


acoth
=====

element wise hyperbolic cotangeant inverse.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = acoth(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Computes the element wise hyperbolic cotangeant inverse of the
argument.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=-30:0.1:30;
    x(`abs`_(x)<=1)=%nan;
    `plot`_(x,acoth(x))




See Also
~~~~~~~~


+ `atanh`_ hyperbolic tangent inverse
+ `coth`_ hyperbolic cotangent




Used Functions
~~~~~~~~~~~~~~

this function is based on the `atanh` function.

.. _atanh: atanh.html
.. _coth: coth.html


