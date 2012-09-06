


boolean
=======

Scilab Objects, boolean variables and operators & | ~



Description
~~~~~~~~~~~

A boolean variable is `%T` (for "true") or `%F` (for "false"). These
variables can be used to define matrices of booleans, with the usual
syntax. Boolean matrices can be manipulated as ordinary matrices for
elements extraction/insertion and concatenation. Note that other usual
operations ( `+, *, -, ^,` etc) are undefined for booleans matrices.
Тhree special operators are defined for boolean matrices:

:~b is the element-wise negation of boolean `b` (matrix).
: :b1&b2 is the element-wise logical `and` of `b1` and `b2`
  (matrices).
: :b1|b2 is the element-wise logical `or` of `b1` and `b2` (matrices).
: :Boolean variables can be used for indexing matrices or vectors. For
  instance `a([%T,%F,%T],:)` returns the submatrix made of rows `1` and
  `3` of `a`. Boolean sparse matrices are supported.
:



Examples
~~~~~~~~


::

    [1,2]==[1,3]
    [1,2]==1
    a=1:5; a(a>2)




See Also
~~~~~~~~


+ `matrices`_ Scilab object, matrices in Scilab
+ `or`_ logical OR of the elements of an array
+ `and`_ logical AND of the elements of an array
+ `not`_ (~) logical not


.. _and: and.html
.. _matrices: matrices.html
.. _not: not.html
.. _or: or.html


