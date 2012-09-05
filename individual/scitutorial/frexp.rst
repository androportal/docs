


frexp
=====

dissect floating-point numbers into base 2 exponent and mantissa



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [f,e]=frexp(x)




Arguments
~~~~~~~~~

:x real vector or matrix
: :f array of real values, usually in the range 0.5 <= abs(f) < 1.
: :e array of integers that satisfy the equation: `x= f.*2.^e`
:



Description
~~~~~~~~~~~

This function corresponds to the ANSI C function frexp(). Any zeros in
`x` produce `f=0` and `e=0`.



Examples
~~~~~~~~


::

    [f,e]=frexp([1,%pi,-3,%eps])




See Also
~~~~~~~~


+ `log`_ natural logarithm
+ `hat`_ (^) exponentiation
+ `ieee`_ set floating point exception mode
+ `log2`_ base 2 logarithm


.. _ieee: ieee.html
.. _log2: log2.html
.. _log: log.html
.. _hat: hat.html


