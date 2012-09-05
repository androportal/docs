


luget
=====

extraction of sparse LU factors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P,L,U,Q]=luget(hand)




Arguments
~~~~~~~~~

:hand handle, output of `lufact`
: :P sparse permutation matrix
: :L sparse matrix, lower triangular if `hand` is obtained from a non
  singular matrix
: :U square non singular upper triangular sparse matrix with ones
  along the main diagonal
: :Q sparse permutation matrix
:



Description
~~~~~~~~~~~

`[P,L,U,Q]=luget(hand)` with `hand` obtained by the command
`[hand,rk]=lufact(A)` with `A` a sparse matrix returns four sparse
matrices such that `P*L*U*Q=A`.

The A matrix needs not be full rank but must be square (since A is
assumed sparse one may add zeros if necessary to squaring down A).

If `A` is singular, the `L` matrix is column compressed (with `rk`
independent nonzero columns): the nonsingular sparse matrix
`Q'*inv(U)` column compresses `A`.



Examples
~~~~~~~~


::

    a=`rand`_(5,2)*`rand`_(2,5);A=`sparse`_(a);
    [hand,rk]=`lufact`_(A);[P,L,U,Q]=luget(hand);
    `full`_(L), P*L*U*Q-A
    `clean`_(P*L*U*Q-A)
    `ludel`_(hand)




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `lusolve`_ sparse linear system solver
+ `luget`_ extraction of sparse LU factors
+ `clean`_ cleans matrices (round to zero small entries)


.. _sparse: sparse.html
.. _clean: clean.html
.. _luget: luget.html
.. _lusolve: lusolve.html


