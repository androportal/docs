


hat
===

(^) exponentiation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    A^b




Description
~~~~~~~~~~~

Exponentiation of matrices or vectors by a constant vector.

If `A` is a vector or a rectangular matrix the exponentiation is done
element-wise, with the usual meaning.

For square `A` matrix the exponentiation is done in the matrix sense.

For boolean, polynomial and rational matrices, the exponent must be an
integer.



Remarks
~~~~~~~

`123.^b` is interpreted as `(123).^b`. In such cases dot is part of
the operator, not of the number.

For two real or complex numbers `x1` and `x2` the value of `x1^x2` is
the "principal value" determined by `x1^x2 = exp(x2*log(x1))`.



Examples
~~~~~~~~


::

    2^4
    (-0.5)^(1/3)
    [1 2;2 4]^(1+%i)
    s=`poly`_(0,"s");
    [1 2 s]^4
    [s 1;1  s]^(-1)




See Also
~~~~~~~~


+ `exp`_ element-wise exponential
+ `log`_ natural logarithm


.. _log: log.html
.. _exp: exp.html


