


matrix
======

reshape a vector or a matrix to a different size matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=matrix(v,n,m)
    y=matrix(v,[sizes])




Arguments
~~~~~~~~~

:v a vector, a matrix or a hypermatrix
: :n,m integers
: :sizes vector of integers
: :y a vector, a matrix or hypermatrix
:



Description
~~~~~~~~~~~

For a vector or a matrix with `n` x `m` entries, the command
`y=matrix(v,n,m)` or similarly `y=matrix(v,[n,m])` transforms the `v`
vector (or matrix) into an `nxm` matrix by stacking columnwise the
entries of `v`.

If one of the dimension `m` or `n` is equal to -1 it is automatically
assigned to the quotient of `size(v,'*')` by the other dimension.

For a hypermatrix such as `prod(size(v))==prod(sizes)`, the command
`y=matrix(v,sizes)` (or equivalently `y=matrix(v,n1,n2,...nm)`)
transforms `v` into an matrix or hypermatrix by stacking "columnwise"
(first dimension is varying first) the entries of `v`.
`y=matrix(v,sizes)` results in a regular matrix if sizes is a scalar
or a 2-vector.



Examples
~~~~~~~~


::

    a=[1 2 3;4 5 6]
    matrix(a,1,6)
    matrix(a,1,-1)
    matrix(a,3,2)




See Also
~~~~~~~~


+ `matrices`_ Scilab object, matrices in Scilab
+ `hypermatrices`_ Scilab object, N dimensional matrices in Scilab
+ `ones`_ matrix made of ones
+ `zeros`_ matrix made of zeros
+ `rand`_ Random numbers
+ `poly`_ polynomial definition
+ `empty`_ ([]) empty matrix


.. _empty: empty.html
.. _poly: poly.html
.. _ones: ones.html
.. _zeros: zeros.html
.. _matrices: matrices.html
.. _hypermatrices: hypermatrices.html
.. _rand: rand.html


