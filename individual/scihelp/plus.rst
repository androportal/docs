


plus
====

(+) addition operator



Calling Sequence
~~~~~~~~~~~~~~~~


::

    X+Y
    str1+str2




Arguments
~~~~~~~~~

:X,Y scalar or vector or matrix of numbers, polynomials or rationals.
  It may also be a `syslin` list
: :str1,str2 a character string, a vector or a matrix of character
  strings
:



Description
~~~~~~~~~~~

Addition.

For numeric operands addition as its usual meaning. If one of the
operands is a matrix and the other one a scalar the scalar is added to
each matrix entries. If one of the operands is an empty matrix the
other operand is returned (this default behavior can be modified by
the function `mtlb_mode`).

For character strings `+` means concatenation.

Addition may also be defined for other data types through "soft-coded"
operations (see `overloading`_).



Examples
~~~~~~~~


::

    [1,2]+1
    []+2
    s=`poly`_(0,"s");
    s+2
    1/s+2
    "con"+"cat"+"enate"




See Also
~~~~~~~~


+ `addf`_ symbolic addition
+ `mtlb_mode`_ switch Matlab like operations
+ `overloading`_ display, functions and operators overloading
  capabilities


.. _mtlb_mode: mtlb_mode.html
.. _overloading: overloading.html
.. _addf: addf.html


