


mucomp
======

mu (structured singular value) calculation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [BOUND, D, G] = mucomp(Z, K, T)




Arguments
~~~~~~~~~

:Z the complex n-by-n matrix for which the structured singular value
  is to be computed
: :K the vector of length m containing the block structure of the
  uncertainty.
: :T the vector of length m indicating the type of each block. T(I) =
  1 if the corresponding block is real T(I) = 2 if the corresponding
  block is complex.
: :BOUND the upper bound on the structured singular value.
: :D, G vectors of length n containing the diagonal entries of the
  diagonal matrices D and G, respectively, such that the matrix
  `Z'*D^2*Z + sqrt(-1)*(G*Z-Z'*G) - bound^2*D^2` is negative
  semidefinite.
:



Description
~~~~~~~~~~~

To compute an upper bound on the structured singular value for a given
square complex matrix and given block structure of the uncertainty.



Reference
~~~~~~~~~

Slicot routine AB13MD.



