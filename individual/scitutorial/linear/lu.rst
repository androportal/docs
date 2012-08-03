====
"lu"
====

Scilab Function Last update : April 1993
**lu** - LU factors of Gaussian elimination



Calling Sequence
~~~~~~~~~~~~~~~~

[L,U]= lu(A)
[L,U,E]= lu(A)




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix (m x n).
+ **L** : real or complex matrices (m x min(m,n)).
+ **U** : real or complex matrices (min(m,n) x n ).
+ **E** : a (n x n) permutation matrix.




Description
~~~~~~~~~~~

**[L,U]= lu(A)** produces two matrices **L** and **U** such that **A =
L*U** with **U** upper triangular and **E*L** lower triangular for a
permutation matrix **E** .

If **A** has rank **k** , rows **k+1** to **n** of **U** are zero.

**[L,U,E]= lu(A)** produces three matrices **L** , **U** and **E**
such that **E*A = L*U** with **U** upper triangular and **E*L** lower
triangular for a permutation matrix **E** .

If **A** is a real matrix, using the function **lufact** and **luget**
it is possible to obtain the permutation matrices and also when **A**
is not full rank the column compression of the matrix **L** .



Examples
~~~~~~~~


::

    
    
    a=rand(4,4);
    [l,u]=lu(a)
    norm(l*u-a)
    
    [h,rk]=lufact(sparse(a))  // lufact fonctionne avec des matrices creuses 
    [P,L,U,Q]=luget(h);
    ludel(h)
    P=full(P);L=full(L);U=full(U);Q=full(Q); 
    norm(P*L*U*Q-a) // P,Q sont des matrices de permutation
     
      




See Also
~~~~~~~~

` **lufact** `_,` **luget** `_,` **lusolve** `_,` **qr** `_,` **svd**
`_,



Used Function
~~~~~~~~~~~~~

lu decompositions are based on the Lapack routines DGETRF for real
matrices and ZGETRF for the complex case.

.. _
      : ://./linear/qr.htm
.. _
      : ://./linear/lufact.htm
.. _
      : ://./linear/svd.htm
.. _
      : ://./linear/lusolve.htm
.. _
      : ://./linear/luget.htm


