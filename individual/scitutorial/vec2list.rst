


vec2list
========

Inverse function of list2vec.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    li=vec2list(bigVector,varsizes,ind)




Arguments
~~~~~~~~~

:bigVector An m by n matrix. Each column is used to generate the
  corresponding list entry.
: :varsizes An n by 2 matrix. Each row give the dimensions of the
  matrix to be built with the corresponding column of bigVector.
: :ind a list with n entries. Each entry is a vector of positive
  integers which gives the hierchical path where the corresponding
  matrix has to be put.
: :li a list or a recursive list with n leaves. The list entries (or
  leaves) are 2D matrices built with the corresponding column of
  bigVector and size given by the corresponding row of varsizes.
:



Description
~~~~~~~~~~~

If the ind argument is not given, this function creates a list. The
list entries (or leaves) are 2D matrices built with the corresponding
column of bigVector and size given by the corresponding row of
varsizes.

If the ind argument is given, this function creates a hierachical list
with n leaves. The leaves are 2D matrices built with the corresponding
column of bigVector and size given by the corresponding row of
varsizes. The hierachical path for each leaf if given by the
corresponding entry of ind.

This function is a subsidiary for `lmisolver`_



Examples
~~~~~~~~


::

    vec2list(1:4,`ones`_(4,2))
    vec2list(1:4,[2 1;1 2])
    vec2list(1:4,`ones`_(4,2),`list`_(1,2,[3,1],[3,2,1]))




See Also
~~~~~~~~


+ `list2vec`_ Concatenates list entries in a matrix.


.. _list2vec: list2vec.html
.. _lmisolver: lmisolver.html


