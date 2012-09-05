


chol
====

Cholesky factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [R]=chol(X)




Arguments
~~~~~~~~~

:X a symmetric positive definite real or complex matrix.
:



Description
~~~~~~~~~~~

If `X` is positive definite, then `R = chol(X)` produces an upper
triangular matrix `R` such that `R'*R = X`.

`chol(X)` uses only the diagonal and upper triangle of `X`. The lower
triangular is assumed to be the (complex conjugate) transpose of the
upper.



References
~~~~~~~~~~

Cholesky decomposition is based on the Lapack routines DPOTRF for real
matrices and ZPOTRF for the complex case.



Examples
~~~~~~~~


::

    W=`rand`_(5,5)+%i*`rand`_(5,5);
    X=W*W';
    R=chol(X);
    `norm`_(R'*R-X)




See Also
~~~~~~~~


+ `spchol`_ sparse cholesky factorization
+ `qr`_ QR decomposition
+ `svd`_ singular value decomposition
+ `bdiag`_ block diagonalization, generalized eigenvectors
+ `fullrf`_ full rank factorization


.. _svd: svd.html
.. _fullrf: fullrf.html
.. _spchol: spchol.html
.. _bdiag: bdiag.html
.. _qr: qr.html


