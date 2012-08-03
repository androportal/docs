====
"chfact"
====

Scilab Function Last update : April 1993
**chfact** - sparse Cholesky factorization



Calling Sequence
~~~~~~~~~~~~~~~~

spcho=chfact(A)




Parameters
~~~~~~~~~~


+ **A** : square symmetric positive sparse matrix
+ **spcho** : list containing the Cholesky factors in coded form




Description
~~~~~~~~~~~

**spcho=chfact(A)** computes the sparse Cholesky factors of sparse
matrix **A** , assumed symmetric positive definite. This function is
based on the Ng-Peyton programs (ORNL). See the Fortran programs for a
complete description of the variables in **spcho** . This function is
to be used with **chsolve** .



See Also
~~~~~~~~

` **chsolve** `_,` **sparse** `_,` **lufact** `_,` **luget** `_,`
**spchol** `_,

.. _
      : ://./linear/spchol.htm
.. _
      : ://./linear/lufact.htm
.. _
      : ://./linear/chsolve.htm
.. _
      : ://./linear/../elementary/sparse.htm
.. _
      : ://./linear/luget.htm


