


log2
====

base 2 logarithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=log2(x)




Arguments
~~~~~~~~~

:x vector or matrix
:



Description
~~~~~~~~~~~

`log2(x)` is the "element-wise" base 2 logarithm
`y(i,j)=log2(x(i,j))`.



Examples
~~~~~~~~


::

    2.^log2([1,%i,-1,-%i])




See Also
~~~~~~~~


+ `log`_ natural logarithm
+ `hat`_ (^) exponentiation
+ `ieee`_ set floating point exception mode
+ `log10`_ base 10 logarithm
+ `frexp`_ dissect floating-point numbers into base 2 exponent and
  mantissa


.. _log: log.html
.. _hat: hat.html
.. _frexp: frexp.html
.. _ieee: ieee.html
.. _log10: log10.html


