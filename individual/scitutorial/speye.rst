


speye
=====

sparse identity matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Isp=speye(nrows,ncols)
    Isp=speye(A)




Arguments
~~~~~~~~~

:nrows integer (number of rows)
: :ncols integer (number os columns)
: :A sparse matrix
: :sp sparse identity matrix
:



Description
~~~~~~~~~~~

`Isp=speye(nrows,ncols)` returns a sparse identity matrix `Isp` with
`nrows` rows, `ncols` columns. (Non square identity matrix have a
maximal number of ones along the main diagonal).

`Isp=speye(A)` returns a sparse identity matrix with same dimensions
as `A`. If `[m,n]=size(A)`, `speye(m,n)` and `speye(A)` are
equivalent. In particular `speye(3)` is not equivalent to
`speye(3,3)`.



Examples
~~~~~~~~


::

    `eye`_(3,3)-`full`_(speye(3,3))




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `full`_ sparse to full matrix conversion
+ `eye`_ identity matrix
+ `spzeros`_ sparse zero matrix
+ `spones`_ sparse matrix


.. _spones: spones.html
.. _spzeros: spzeros.html
.. _eye: eye.html
.. _full: full.html
.. _sparse: sparse.html


