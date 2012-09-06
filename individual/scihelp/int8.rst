


int8
====

conversion to one byte integer representation



int16
=====

conversion to 2 bytes integer representation



int32
=====

conversion to 4 bytes integer representation



uint8
=====

conversion to one byte unsigned integer representation



uint16
======

conversion to 2 bytes unsigned integer representation



uint32
======

conversion to 4 bytes unsigned integer representation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=int8(X)
    y=int16(X)
    y=int32(X)
    y=uint8(X)
    y=uint16(X)
    y=uint32(X)




Arguments
~~~~~~~~~

:X matrix of floats or integers
: :y matrix of integers coded on one, two or four bytes.
:



Description
~~~~~~~~~~~

converts and stores data two one, two or four bytes integers. These
data types are specialy useful to store big objects such as images,
long signals,...

:y=int8(X) return numbers in the range [-128,127]
: :y=uint8(X) return numbers in the range [0,255]
: :y=int16(X) return numbers in the range [-32768,32767]
: :y=uint16(X) return numbers in the range [0, 65535]
: :y=int32(X) return numbers in the range [-2147483648,2147483647]
: :y=uint32(X) return numbers in the range [0, 4294967295]
:



Examples
~~~~~~~~


::

    `int8`_([1 -120 127 312])
    `uint8`_([1 -120 127 312])
    
    x=`int32`_(-200:100:400)
    `int8`_(x)




See Also
~~~~~~~~


+ `double`_ conversion from integer to double precision representation
+ `inttype`_ type integers used in integer data types
+ `iconvert`_ conversion to 1 or 4 byte integer representation


.. _inttype: inttype.html
.. _iconvert: iconvert.html
.. _double: double.html


