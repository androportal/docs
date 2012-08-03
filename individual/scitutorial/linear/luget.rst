====
"luget"
====

Scilab Function Last update : April 1993
**luget** - extraction of sparse LU factors



Calling Sequence
~~~~~~~~~~~~~~~~

[P,L,U,Q]=luget(hand)




Parameters
~~~~~~~~~~


+ **hand** : handle, output of **lufact**
+ **P** : sparse permutation matrix
+ **L** : sparse matrix, lower triangular if **hand** is obtained from
  a non singular matrix
+ **U** : square non singular upper triangular sparse matrix with ones
  along the main diagonal
+ **Q** : sparse permutation matrix




Description
~~~~~~~~~~~

**[P,L,U,Q]=luget(hand)** with **hand** obtained by the command
**[hand,rk]=lufact(A)** with **A** a sparse matrix returns four sparse
matrices such that **P*L*U*Q=A** .

The A matrix needs not be full rank but must be square (since A is
assumed sparse one may add zeros if necessary to squaring down A).

If **A** is singular, the **L** matrix is column compressed (with
**rk** independent nonzero columns): the nonsingular sparse matrix
**Q'*inv(U)** column compresses **A** .



Examples
~~~~~~~~


::

    
    
    a=rand(5,2)*rand(2,5);A=sparse(a);
    [hand,rk]=lufact(A);[P,L,U,Q]=luget(hand);
    full(L), P*L*U*Q-A
    clean(P*L*U*Q-A)
    ludel(hand)
     
      




See Also
~~~~~~~~

` **sparse** `_,` **lusolve** `_,` **luget** `_,` **clean** `_,

.. _
      : ://./linear/lusolve.htm
.. _
      : ://./linear/../elementary/sparse.htm
.. _
      : ://./linear/../polynomials/clean.htm
.. _
      : ://./linear/luget.htm


