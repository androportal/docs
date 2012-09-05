


spzeros
=======

sparse zero matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sp=spzeros(nrows,ncols)
    sp=spzeros(A)




Arguments
~~~~~~~~~

:nrows integer (number of rows)
: :ncols integer (number os columns)
: :A sparse matrix
: :sp sparse zero matrix
:



Description
~~~~~~~~~~~

`sp=spzeros(nrows,ncols)` returns a sparse zero matrix `sp` with
`nrows` rows, `ncols` columns. (Equivalent to
`sparse([],[],[nrow,ncols])`)

`sp=spzeros(A)` returns a sparse zero matrix with same dimensions as
`A`. If `[m,n]=size(A)`, `spzeros(m,n)` and `spzeros(A)` are
equivalent. In particular `spzeros(3)` is not equivalent to
`spzeros(3,3)`.



Examples
~~~~~~~~


::

    `sum`_(spzeros(1000,1000))




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `full`_ sparse to full matrix conversion
+ `eye`_ identity matrix
+ `speye`_ sparse identity matrix
+ `spones`_ sparse matrix


.. _speye: speye.html
.. _spones: spones.html
.. _eye: eye.html
.. _full: full.html
.. _sparse: sparse.html


