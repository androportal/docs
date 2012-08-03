====
"chol"
====

Scilab Function Last update : April 1993
**chol** - Cholesky factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[R]=chol(X)




Parameters
~~~~~~~~~~


+ **X** : a symmetric positive definite real or complex matrix.




Description
~~~~~~~~~~~

If **X** is positive definite, then **R = chol(X)** produces an upper
triangular matrix **R** such that **R'*R = X** .

**chol(X)** uses only the diagonal and upper triangle of **X** . The
lower triangular is assumed to be the (complex conjugate) transpose of
the upper.



References
~~~~~~~~~~

Cholesky decomposition is based on the Lapack routines DPOTRF for real
matrices and ZPOTRF for the complex case.



Examples
~~~~~~~~


::

    
    
    W=rand(5,5)+%i*rand(5,5);
    X=W*W';
    R=chol(X);
    norm(R'*R-X)
     
      




See Also
~~~~~~~~

` **spchol** `_,` **qr** `_,` **svd** `_,` **bdiag** `_,` **fullrf**
`_,

.. _
      : ://./linear/spchol.htm
.. _
      : ://./linear/svd.htm
.. _
      : ://./linear/bdiag.htm
.. _
      : ://./linear/fullrf.htm
.. _
      : ://./linear/qr.htm


