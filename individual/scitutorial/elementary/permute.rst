====
"permute"
====

Scilab Function Last update : 09/12/2005
**permute** - permute the dimensions of an array



Calling Sequence
~~~~~~~~~~~~~~~~

y=permute(x,dims)




Parameters
~~~~~~~~~~


+ **dims** : a scalar or a vector of positive reals.
+ **x** : a scalar, a vector, a matrix or a mutlti-array.




Description
~~~~~~~~~~~

**y=permute(x,dims) : **



Examples
~~~~~~~~


::

    
    //example 1:
    x=[1 2 3;4 5 6];
    y=permute(x,[2 1]);
    
    //example 2:
    x=matrix(1:12,[2,3,2]);
    y=permute(x,[3 1 2]);




See Also
~~~~~~~~

` **pertrans** `_,` **quote** `_,` **cat** `_,



Author
~~~~~~

Farid Belahcene

.. _
      : ://./elementary/../programming/quote.htm
.. _
      : ://./elementary/pertrans.htm
.. _
      : ://./elementary/cat.htm


