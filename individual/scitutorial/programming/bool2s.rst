====
"bool2s"
====

Scilab Function Last update : September 1997
**bool2s** - convert boolean matrix to a zero one matrix.



Calling Sequence
~~~~~~~~~~~~~~~~

bool2s(x)




Parameters
~~~~~~~~~~


+ **x** : a boolean vector or a boolean matrix or a constant matrix




Description
~~~~~~~~~~~

If **x** is a boolean matrix, **bool2s(x)** returns the matrix where
"true" values are replaced by 1 and "false" value by 0.

If **x** is a "standard" matrix, **bool2s(x)** returns the matrix
where non-zero values are replaced by 1.



Examples
~~~~~~~~


::

    
    
    bool2s([%t %t %f %t])
    bool2s([2.3 0 10 -1])
     
      




See Also
~~~~~~~~

` **boolean** `_,` **find** `_,

.. _
      : ://./programming/find.htm
.. _
      : ://./programming/boolean.htm


