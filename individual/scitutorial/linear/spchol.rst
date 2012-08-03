====
"spchol"
====

Scilab Function Last update : April 1993
**spchol** - sparse cholesky factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[R,P] = spchol(X)




Parameters
~~~~~~~~~~


+ **X** : symmetric positive definite real sparse matrix
+ **P** : permutation matrix
+ **R** : cholesky factor




Description
~~~~~~~~~~~

**[R,P] = spchol(X)** produces a lower triangular matrix **R** such
that **P*R*R'*P' = X** .



Examples
~~~~~~~~


::

    
    
    X=[
    3.,  0.,  0.,  2.,  0.,  0.,  2.,  0.,  2.,  0.,  0. ;
    0.,  5.,  4.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0. ;
    0.,  4.,  5.,  0.,  0.,  0.,  0.,  0.,  0.,  0.,  0. ;
    2.,  0.,  0.,  3.,  0.,  0.,  2.,  0.,  2.,  0.,  0. ;
    0.,  0.,  0.,  0. , 5.,  0.,  0.,  0.,  0.,  0.,  4. ;
    0.,  0.,  0.,  0.,  0.,  4.,  0.,  3.,  0.,  3.,  0. ;
    2.,  0.,  0.,  2.,  0.,  0.,  3.,  0.,  2.,  0.,  0. ;
    0.,  0.,  0.,  0.,  0.,  3.,  0.,  4.,  0.,  3.,  0. ;
    2.,  0.,  0.,  2.,  0.,  0.,  2.,  0.,  3.,  0.,  0. ;
    0.,  0.,  0.,  0.,  0.,  3.,  0.,  3.,  0.,  4.,  0. ;
    0.,  0.,  0.,  0.,  4.,  0.,  0.,  0.,  0.,  0.,  5.];
    X=sparse(X);[R,P] = spchol(X);
    max(P*R*R'*P'-X)
     
      




See Also
~~~~~~~~

` **sparse** `_,` **lusolve** `_,` **luget** `_,` **chol** `_,

.. _
      : ://./linear/lusolve.htm
.. _
      : ://./linear/../elementary/sparse.htm
.. _
      : ://./linear/chol.htm
.. _
      : ://./linear/luget.htm


