


cellstr
=======

converts strings vector (or strings matrix) into a cell array of
strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c=cellstr(s)




Arguments
~~~~~~~~~

:s strings vector, or strings matrix
:



Description
~~~~~~~~~~~

returns a cell array of strings


+ If `s` is a row vector of strings then `cellstr(s)` returns a one-
  by-one cell array which contains one component (the concatenation of
  all column components of `s`.
+ If `s` is a column vector of strings then `cellstr(s)` converts `s`
  into a cell array of strings which have the same size : `size(s,1
  )`-by-one.
+ If `s` is a matrix of strings then for each row `i` of `s`,
  `cellstr(s)` concatenates all the components of the `i`th rows of the
  matrix `s` (i.e `s(i,1)`, `s(i,2)`, `s(i,3)`,...) and returns a
  `size(s,1)`-by-one cell array of strings.




Examples
~~~~~~~~


::

    cellstr("foo")
    cellstr(["sci","lab"])
    cellstr(["abc","def",'gh';"i","j","klm"])




See Also
~~~~~~~~


+ `cell`_ Create a cell array of empty matrices.
+ `makecell`_ Creates a cell array.
+ `string`_ conversion to string


.. _makecell: makecell.html
.. _cell: cell.html
.. _string: string.html


