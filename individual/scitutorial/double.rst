


double
======

conversion from integer to double precision representation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=double(X)
    y=int16(X)
    y=int32(X)
    y=uint8(X)
    y=uint16(X)
    y=uint32(X)




Arguments
~~~~~~~~~

:X matrix of floats or integers
: :y matrix of floats
:



Description
~~~~~~~~~~~

converts data stored using one, two or four bytes integers into double
precision floating point representation. If `X` entries are already
double precision floats, nothing is done.



Examples
~~~~~~~~


::

    x=`int8`_([0 12 140])
    double(x)




See Also
~~~~~~~~


+ `int8`_ conversion to one byte integer representation
+ `inttype`_ type integers used in integer data types
+ `type`_ Returns the type of a variable


.. _inttype: inttype.html
.. _type: type.html
.. _int8: int8.html


