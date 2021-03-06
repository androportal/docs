


iconvert
========

conversion to 1 or 4 byte integer representation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=iconvert(X,itype)




Arguments
~~~~~~~~~

:X matrix of floats or integers
: :y matrix of integers coded on one, two or four bytes.
:



Description
~~~~~~~~~~~

converts and stores data two one, two or four bytes integers.

:itype=0 return floating point numbers
: :itype=1 return int8 numbers in the range [-128,127]
: :itype=11 return uint8 numbers in the range [0,255]
: :itype=2 return int16 numbers in the range [-32768,32767]
: :itype=12 return uint16 numbers in the range [0, 65535]
: :itype=4 return int32 numbers in the range [-2147483648,2147483647]
: :itype=14 return uint32 numbers in the range [0, 4294967295]
:



Examples
~~~~~~~~


::

    b=`int32`_([1 -120 127 312])
    y=iconvert(b,1)




See Also
~~~~~~~~


+ `double`_ conversion from integer to double precision representation
+ `inttype`_ type integers used in integer data types


.. _inttype: inttype.html
.. _double: double.html


