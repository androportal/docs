


list2vec
========

Concatenates list entries in a matrix.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [bigVector,varsizes] = list2vec(li)




Arguments
~~~~~~~~~

:li a list with n entries. The list entries must be 2D matrices with
  compatible types.
: :bigVector A column vector. Formed by the elements of the
  corresponding list entry.
: :varsizes An n by 3 matrix. Each row contains the dimensions of the
  corresponding list entry.
:



Description
~~~~~~~~~~~

Concatenates list entries in a column vector. The list entries are
supposed to be matrices with compatible types with respect to
concatenation.

This function is a subsidiary for `lmisolver`_



Examples
~~~~~~~~


::

    list2vec(`list`_(1,2,3))
    list2vec(`list`_([1 2 3],[4;5],[%s %s+1]))




See Also
~~~~~~~~


+ `vec2list`_ Inverse function of list2vec.


.. _vec2list: vec2list.html
.. _lmisolver: lmisolver.html


