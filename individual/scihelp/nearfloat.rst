


nearfloat
=========

get previous or next floating-point number



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xnear = nearfloat(dir, x)




Arguments
~~~~~~~~~

:dir string ("succ" or "pred")
: :x real scalar, vector or matrix
: :xnear real scalar, vector or matrix
:



Description
~~~~~~~~~~~

This function computes, in the element wise meaning, the corresponding
neighbours of the elements of `x` (in the underlying floating point
set, see number_properties), the successors if `dir = "succ"` and the
predecessors if `dir = "pred".`



Examples
~~~~~~~~


::

    `format`_("e",22)
    nearfloat("succ",1) - 1
    1 - nearfloat("pred",1)
    `format`_("v") //reset default format




See Also
~~~~~~~~


+ `number_properties`_ determine floating-point parameters
+ `frexp`_ dissect floating-point numbers into base 2 exponent and
  mantissa


.. _frexp: frexp.html
.. _number_properties: number_properties.html


