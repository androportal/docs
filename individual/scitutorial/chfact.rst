


chfact
======

sparse Cholesky factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    spcho=chfact(A)




Arguments
~~~~~~~~~

:A square symmetric positive sparse matrix
: :spcho list containing the Cholesky factors in coded form
:



Description
~~~~~~~~~~~

`spcho=chfact(A)` computes the sparse Cholesky factors of sparse
matrix `A`, assumed symmetric positive definite. This function is
based on the Ng-Peyton programs (ORNL). See the Fortran programs for a
complete description of the variables in `spcho`. This function is to
be used with `chsolve`.



See Also
~~~~~~~~


+ `chsolve`_ sparse Cholesky solver
+ `sparse`_ sparse matrix definition
+ `lufact`_ sparse lu factorization
+ `luget`_ extraction of sparse LU factors
+ `spchol`_ sparse cholesky factorization


.. _spchol: spchol.html
.. _chsolve: chsolve.html
.. _sparse: sparse.html
.. _luget: luget.html
.. _lufact: lufact.html


