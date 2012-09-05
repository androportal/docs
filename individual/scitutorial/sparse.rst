


sparse
======

sparse matrix definition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sp=sparse(X)
    sp=sparse(ij,v [,mn])




Arguments
~~~~~~~~~

:X real or complex or boolean full (or sparse) matrix
: :ij two columns integer matrix (indices of non-zeros entries)
: :v vector
: :mn integer vector with two entries (row-dimension, column-
  dimension)
: :sp sparse matrix
:



Description
~~~~~~~~~~~

`sparse` is used to build a sparse matrix. Only non-zero entries are
stored.

`sp = sparse(X)` converts a full matrix to sparse form by squeezing
out any zero elements. (If `X` is already sparse `sp` is `X`).

`sp=sparse(ij,v [,mn])` builds an `mn(1)`-by- `mn(2)` sparse matrix
with `sp(ij(k,1),ij(k,2))=v(k)`. `ij` and `v` must have the same
column dimension. If optional `mn` parameter is not given the `sp`
matrix dimensions are the max value of `ij(:,1)` and `ij(:,2)`
respectively.

Operations (concatenation, addition, etc,) with sparse matrices are
made using the same syntax as for full matrices.

Elementary functions are also available ( `abs,maxi,sum,diag,...`) for
sparse matrices.

Mixed operations (full-sparse) are allowed. Results are full or sparse
depending on the operations.

Note : Any operation involing dense matrices of the same size, either
as argument (e.g. `sp=sparse(d)`) or as result (e.g. `d= sp + 1.`) is
provided for convenience purposes but should of course be avoided.
Furthermore, random access to elements ( `sp(r,c)`), especially for
insertions, is not efficient, so any performance-constrained access
should be done in batches with `spget`_ for read access and the three
arguments constructor `sp=sparse(ij, v, mn)` for write access.



Examples
~~~~~~~~


::

    sp=sparse([1,2;4,5;3,10],[1,2,3])
    `size`_(sp)
    x=`rand`_(2,2);`abs`_(x)-`full`_(`abs`_(sparse(x)))
    // sparse constructor taking a single dense matrix
    // removes the zeros.
    dense=[0., 1., 0., 0., 0.,
    1., 0., 2., 0., 0.
    0., 0., 0., 0., 0.
    0., 0., 0., 0., -0.5];
    sp=sparse(dense)
    // complex matrices are also supported
    sp=sparse(dense*(1+2*%i))
    // for boolean matrices, the boolean sparse matrix
    // only stores true values (and removes false values).
    dense=[%F, %F, %T, %F, %F
    %T, %F, %F, %F, %F
    %F, %F, %F, %F, %F
    %F, %F, %F, %F, %T];
    sp=sparse(dense)




See Also
~~~~~~~~


+ `full`_ sparse to full matrix conversion
+ `spget`_ retrieves entries of sparse matrix
+ `sprand`_ sparse random matrix
+ `speye`_ sparse identity matrix
+ `lufact`_ sparse lu factorization


.. _speye: speye.html
.. _spget: spget.html
.. _full: full.html
.. _sprand: sprand.html
.. _lufact: lufact.html


