


cell2mat
========

converts a cell array into a matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x=cell2mat(c)




Arguments
~~~~~~~~~

:c cell array, the components of `c` must have the same type and can
  be scalars or matrices
: :x matrix
:



Description
~~~~~~~~~~~

cell2mat(c) returns a matrix which is the concatenation of all
components of the cell array `c`.

All components of `c` must have the same data type (strings or doubles
or integers or booleans). For each row `i` of `c`, `cell2mat` of `c`,
`cell2mat` concatenates all the components of the `i`th row of the
cell array `c`.

Note that if the components of the cell array input `c` are strings
then `cell2mat(c)` returns a column vector of strings concatenation.



Examples
~~~~~~~~


::

    c=`makecell`_([2,2],[1 2 3; 6 7 8],[4 5;9 10],[11 12;16 17],[14 13 15;18 19 20])
    cell2mat(c)




See Also
~~~~~~~~


+ `cell`_ Create a cell array of empty matrices.
+ `makecell`_ Creates a cell array.


.. _makecell: makecell.html
.. _cell: cell.html


