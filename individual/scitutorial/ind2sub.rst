


ind2sub
=======

linear index to matrix subscript values



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [i1,i2,..] =ind2sub(dims,I)
    Mi = ind2sub(dims,I)




Arguments
~~~~~~~~~

:dims vector: the matrix dimensions
: :I vector: the given linear index
: :i1,i2,.. the subscript values (same matrix shape as `I`)
: :Mi matrix whose columns contains the subscript values.
:



Description
~~~~~~~~~~~

`ind2sub` is used to determine the equivalent subscript values
corresponding to a given single index into an array. `[i1,i2,..] =
ind2sub(dims,I)` returns the arrays `i1`, `i2`, ... containing the
equivalent row, column, ... subscripts corresponding to the index
matrix `I` for a matrix of size `dims`. `Mi=ind2sub(dims,I)` returns a
matrix `Mi` whose columns are the arrays `i1(:)`, `i2(:)`, ...



Examples
~~~~~~~~


::

    ind2sub([2,3,2],1:12)
    [i,j,k]=ind2sub([2,3,2],1:12)




See Also
~~~~~~~~


+ `sub2ind`_ matrix subscript values to linear index
+ `extraction`_ matrix and list entry extraction
+ `insertion`_ partial variable assignation or modification


.. _insertion: insertion.html
.. _extraction: extraction.html
.. _sub2ind: sub2ind.html


