


ereduc
======

computes matrix column echelon form by qz transformations



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [E,Q,Z [,stair [,rk]]]=ereduc(X,tol)




Arguments
~~~~~~~~~

:X m x n matrix with real entries.
: :tol real positive scalar.
: :E column echelon form matrix
: :Q m x m unitary matrix
: :Z n x n unitary matrix
: :stair vector of indexes,
    :* `ISTAIR(i) = + j` if the boundary element `E(i,j)` is a corner
      point.
    : :* `ISTAIR(i) = - j` if the boundary element `E(i,j)` is not a
      corner point.
    :
`(i=1,...,M)`
: :rk integer, estimated rank of the matrix
:



Description
~~~~~~~~~~~

Given an `m x n` matrix `X` (not necessarily regular) the function
ereduc computes a unitary transformed matrix `E=Q*X*Z` which is in
column echelon form (trapezoidal form). Furthermore the rank of matrix
`X` is determined.



Examples
~~~~~~~~


::

    X=[1 2 3;4 5 6]
    [E,Q,Z ,stair ,rk]=ereduc(X,1.d-15)




See Also
~~~~~~~~


+ `fstair`_ computes pencil column echelon form by qz transformations


.. _fstair: fstair.html


