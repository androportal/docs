


testmatrix
==========

generate special matrices, such as Hilbert, Franck



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [y]=testmatrix(name,n)




Arguments
~~~~~~~~~

:name a character string
: :n integers, matrix size
: :y `n` x `n` matrix
:



Description
~~~~~~~~~~~

Creates some particular matrices.

:testmatrix('magi',n) returns a magic square of size `n` x `n`.
: :testmatrix('frk',n) returns the Franck matrix.
: :testmatrix('hilb',n) is the inverse of the `n` x `n` Hilbert matrix
  `(Hij= 1/(i+j-1))`.
:



