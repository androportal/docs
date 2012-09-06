


lu
==

LU factorization with pivoting



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [L,U]= lu(A)
    [L,U,E]= lu(A)




Arguments
~~~~~~~~~

:A real or complex matrix (m x n).
: :L real or complex matrices (m x min(m,n)).
: :U real or complex matrices (min(m,n) x n ).
: :E a (n x n) permutation matrix.
:



Description
~~~~~~~~~~~

`[L,U]= lu(A)` produces two matrices `L` and `U` such that `A = L*U`
with `U` upper triangular and `L` a general matrix without any
particular structure. In fact, the matrix `A` is factored as `E*A=B*U`
where the matrix `B` is lower triangular and the matrix `L` is
computed from `L=E'*B`.

If `A` has rank `k`, rows `k+1` to `n` of `U` are zero.

`[L,U,E]= lu(A)` produces three matrices `L`, `U` and `E` such that
`E*A = L*U` with `U` upper triangular and `E*L` lower triangular for a
permutation matrix `E`.

If `A` is a real matrix, using the function `lufact` and `luget` it is
possible to obtain the permutation matrices and also when `A` is not
full rank the column compression of the matrix `L`.



Example #1
~~~~~~~~~~

In the following example, we create the Hilbert matrix of size 4 and
factor it with A=LU. Notice that the matrix L is not lower triangular.
To get a lower triangular L matrix, we should have given the output
argument E to Scilab.


::

    a = `testmatrix`_("hilb",4);
    [l,u]=lu(a)
    `norm`_(l*u-a)




Example #2
~~~~~~~~~~

In the following example, we create the Hilbert matrix of size 4 and
factor it with EA=LU. Notice that the matrix L is lower triangular.


::

    a = `testmatrix`_("hilb",4);
    [l,u,e]=lu(a)
    `norm`_(l*u-e*a)




Example #3
~~~~~~~~~~

The following example shows how to use the lufact and luget functions.


::

    a=`rand`_(4,4);
    [l,u]=lu(a)
    `norm`_(l*u-a)
    
    [h,rk]=`lufact`_(`sparse`_(a))
    [P,L,U,Q]=`luget`_(h);
    `ludel`_(h)
    P=`full`_(P);
    L=`full`_(L);
    U=`full`_(U);
    Q=`full`_(Q);
    `norm`_(P*L*U*Q-a)




See Also
~~~~~~~~


+ `lufact`_ sparse lu factorization
+ `luget`_ extraction of sparse LU factors
+ `lusolve`_ sparse linear system solver
+ `qr`_ QR decomposition
+ `svd`_ singular value decomposition




Used Functions
~~~~~~~~~~~~~~

lu decompositions are based on the Lapack routines DGETRF for real
matrices and ZGETRF for the complex case.

.. _svd: svd.html
.. _lusolve: lusolve.html
.. _qr: qr.html
.. _luget: luget.html
.. _lufact: lufact.html


