====
"spget"
====

Scilab Function Last update : January 1995
**spget** - retrieves entries of sparse matrix



Calling Sequence
~~~~~~~~~~~~~~~~

[ij,v,mn]=spget(sp)




Parameters
~~~~~~~~~~


+ **sp** : real or complex sparse matrix
+ **ij** : two columns integer matrix (indices of non-zeros entries)
+ **mn** : integer vector with two entries (row-dimension, column-
  dimension)
+ **v** : column vector




Description
~~~~~~~~~~~

**spget** is used to convert the internal representation of sparse
matrices into the standard **ij, v** representation.

Non zero entries of **sp** are located in rows and columns with
indices in **ij** .



Examples
~~~~~~~~


::

    
    
    sp=sparse([1,2;4,5;3,10],[1,2,3])
    [ij,v,mn]=spget(sp);
     
      




See Also
~~~~~~~~

` **sparse** `_,` **sprand** `_,` **speye** `_,` **lufact** `_,

.. _
      : ://./elementary/speye.htm
.. _
      : ://./elementary/sparse.htm
.. _
      : ://./elementary/../linear/lufact.htm
.. _
      : ://./elementary/sprand.htm


