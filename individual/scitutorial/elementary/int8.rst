====
"int8"
====

Scilab Function Last update : October 99
**int8** - conversion to one byte integer representation

**int16** - conversion to 2 bytes integer representation

**int32** - conversion to 4 bytes integer representation

**uint8** - conversion to one byte unsigned integer representation

**uint16** - conversion to 2 bytes unsigned integer representation

**uint32** - conversion to 4 bytes unsigned integer representation



Calling Sequence
~~~~~~~~~~~~~~~~

y=int8(X)
y=int16(X)
y=int32(X)
y=uint8(X)
y=uint16(X)
y=uint32(X)




Parameters
~~~~~~~~~~


+ **X** : matrix of floats or integers
+ **y** : matrix of integers coded on one, two or four bytes.




Description
~~~~~~~~~~~

converts and stores data two one, two or four bytes integers. These
data types are specialy useful to store big objects such as images,
long signals,...

**y=int8(X)**: return numbers in the range [-128,127]
**y=uint8(X)**: return numbers in the range [0,255]
**y=int16(X)**: return numbers in the range [-32768,32767]
**y=uint16(X)**: return numbers in the range [0, 65535]
**y=int32(X)**: return numbers in the range [-2147483648,2147483647]
**y=uint32(X)**: return numbers in the range [0, 4294967295]




Examples
~~~~~~~~


::

    
    
    int8([1 -120 127 312])
    uint8([1 -120 127 312])
    
    x=int32(-200:100:400)
    int8(x)
     
      




See Also
~~~~~~~~

` **double** `_,` **inttype** `_,` **iconvert** `_,

.. _
      : ://./elementary/double.htm
.. _
      : ://./elementary/../programming/inttype.htm
.. _
      : ://./elementary/../programming/iconvert.htm


