====
"frexp"
====

Scilab Function Last update : 16/12/2004
**frexp** - dissect floating-point numbers into base 2 exponent and
mantissa



Calling Sequence
~~~~~~~~~~~~~~~~

[f,e]=frexp(x)




Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **f** : array of real values, usually in the range 0.5 <= abs(f) <
  1.
+ **e** : array of integers that satisfy the equation: **x = f.*2.^e**




Description
~~~~~~~~~~~

This function corresponds to the ANSI C function frexp(). Any zeros in
**x** produce **f=0** and **e=0** .



Examples
~~~~~~~~


::

    
    
    [f,e]=frexp([1,%pi,-3,%eps])
     
      




See Also
~~~~~~~~

` **log** `_,` **hat** `_,` **ieee** `_,` **log2** `_,

.. _
      : ://./elementary/log2.htm
.. _
      : ://./elementary/../programming/hat.htm
.. _
      : ://./elementary/log.htm
.. _
      : ://./elementary/../programming/ieee.htm


