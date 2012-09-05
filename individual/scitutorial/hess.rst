


hess
====

Hessenberg form



Calling Sequence
~~~~~~~~~~~~~~~~


::

    H = hess(A)
    [U,H] = hess(A)




Arguments
~~~~~~~~~

:A real or complex square matrix
: :H real or complex square matrix
: :U orthogonal or unitary square matrix
:



Description
~~~~~~~~~~~

`[U,H] = hess(A)` produces a unitary matrix `U` and a Hessenberg
matrix `H` so that `A = U*H*U'` and `U'*U` = Identity. By itself,
`hess(A)` returns `H`.

The Hessenberg form of a matrix is zero below the first subdiagonal.
If the matrix is symmetric or Hermitian, the form is tridiagonal.



References
~~~~~~~~~~

hess function is based on the Lapack routines DGEHRD, DORGHR for real
matrices and ZGEHRD, ZORGHR for the complex case.



Examples
~~~~~~~~


::

    A=`rand`_(3,3);[U,H]=hess(A);
    `and`_( `abs`_(U*H*U'-A)<1.d-10 )




See Also
~~~~~~~~


+ `qr`_ QR decomposition
+ `contr`_ controllability, controllable subspace, staircase
+ `schur`_ [ordered] Schur decomposition of matrix and pencils




Used Functions
~~~~~~~~~~~~~~

`hess` function is based on the Lapack routines DGEHRD, DORGHR for
real matrices and ZGEHRD, ZORGHR for the complex case.

.. _schur: schur.html
.. _qr: qr.html
.. _contr: contr.html


