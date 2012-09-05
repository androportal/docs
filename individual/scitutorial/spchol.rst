


spchol
======

sparse cholesky factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [R,P] = spchol(X)




Arguments
~~~~~~~~~

:X symmetric positive definite real sparse matrix
: :P permutation matrix
: :R cholesky factor
:



Description
~~~~~~~~~~~

`[R,P] = spchol(X)` produces a lower triangular matrix `R` such that
`P*R*R'*P' = X`.



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
    X=`sparse`_(X);[R,P] = spchol(X);
    `max`_(P*R*R'*P'-X)




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `lusolve`_ sparse linear system solver
+ `luget`_ extraction of sparse LU factors
+ `chol`_ Cholesky factorization


.. _chol: chol.html
.. _sparse: sparse.html
.. _luget: luget.html
.. _lusolve: lusolve.html


