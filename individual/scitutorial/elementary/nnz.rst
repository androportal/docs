====
"nnz"
====

Scilab Function Last update : January 1995
**nnz** - number of non zero entries in a matrix



Calling Sequence
~~~~~~~~~~~~~~~~

n=nnz(X)




Parameters
~~~~~~~~~~


+ **X** : real or complex sparse (or full) matrix
+ **n** : integer, the number of non zero elements in X




Description
~~~~~~~~~~~

**nnz** counts the number of non zero entries in a sparse or full
matrix



Examples
~~~~~~~~


::

    
    
    sp=sparse([1,2;4,5;3,10],[1,2,3]);
    nnz(sp)
    a=[1 0 0 0 2];
    nnz(a)
     
      




See Also
~~~~~~~~

` **spget** `_,

.. _
      : ://./elementary/spget.htm


