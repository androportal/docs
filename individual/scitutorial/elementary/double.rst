====
"double"
====

Scilab Function Last update : October 99
**double** - conversion from integer to double precision
representation



Calling Sequence
~~~~~~~~~~~~~~~~

y=double(X)
y=int16(X)
y=int32(X)
y=uint8(X)
y=uint16(X)
y=uint32(X)




Parameters
~~~~~~~~~~


+ **X** : matrix of floats or integers
+ **y** : matrix of floats




Description
~~~~~~~~~~~

converts data stored using one, two or four bytes integers into double
precision floating point representation. If **X** entries are already
double precision floats, nothing is done.



Examples
~~~~~~~~


::

    
    
    x=int8([0 12 140])
    double(x)
     
      




See Also
~~~~~~~~

` **int8** `_,` **inttype** `_,` **type** `_,

.. _
      : ://./elementary/../programming/inttype.htm
.. _
      : ://./elementary/int8.htm
.. _
      : ://./elementary/../programming/type.htm


