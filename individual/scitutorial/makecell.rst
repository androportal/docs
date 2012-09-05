


makecell
========

Creates a cell array.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s = makecell(dims,a1,a2,...an)




Arguments
~~~~~~~~~

:dims a vector with positive integer elements, the cell array
  dimension
: :a1,a2,...,an Sequence of Scilab variables, `n` must be equal to
  `prod(dims)`
: :s resulting cell array
:



Description
~~~~~~~~~~~

`s= makecell(dims,a1,a2,...an)` creates a cell array of dimensions
given by `dims` with the given input arguments. The `ai` are stored
along the last dimension first.



Examples
~~~~~~~~


::

    makecell([2,3],1,2,3,'x','y','z')




See Also
~~~~~~~~


+ `cell`_ Create a cell array of empty matrices.


.. _cell: cell.html


