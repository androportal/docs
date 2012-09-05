


spget
=====

retrieves entries of sparse matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [ij,v,mn]=spget(sp)




Arguments
~~~~~~~~~

:sp real, complex or boolean sparse matrix
: :ij two columns integer matrix (indices of non-zeros or true
  entries)
: :mn integer vector with two entries (row-dimension, column-
  dimension)
: :v column vector
:



Description
~~~~~~~~~~~

`spget` is used to convert the internal representation of sparse
matrices into the standard `ij, v` representation.

Non zero entries (or entries set to true for a boolean sparse matrix)
of `sp` are located in rows and columns with indices in `ij`.



Examples
~~~~~~~~


::

    sp=`sparse`_([1,2;4,5;3,10],[1,2,3])
    [ij,v,mn]=spget(sp);




See Also
~~~~~~~~


+ `sparse`_ sparse matrix definition
+ `sprand`_ sparse random matrix
+ `speye`_ sparse identity matrix
+ `lufact`_ sparse lu factorization


.. _sparse: sparse.html
.. _speye: speye.html
.. _sprand: sprand.html
.. _lufact: lufact.html


