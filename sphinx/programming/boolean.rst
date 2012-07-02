Scilab Objects

Last update : April 1993

**boolean** - Scilab Objects, boolean variables and operators & \| ~

Description
~~~~~~~~~~~

A boolean variable is ``         %T       `` (for "true") or
``         %F       `` (for "false"). These variables can be used to
define matrices of booleans, with the usual syntax. Boolean matrices can
be manipulated as ordinary matrices for elements extraction/insertion
and concatenation. Note that other usual operations
(``         +, *, -, ^,       `` etc) are undefined for booleans
matrices, three special operators are defined for boolean matrices:

**~b**: is the element wise negation of boolean
``           b         `` (matrix).

**b1&b2**: is the element wise logical ``           and         `` of
``           b1         `` and ``           b2         `` (matrices).

**b1\|b2**: is the element wise logical ``           or         `` of
``           b1         `` and ``           b2         `` (matrices).

**Boolean variables can be used for indexing matrices or vectors.**For
instance ``           a([%T,%F,%T],:)         `` returns the submatrix
made of rows ``           1         `` and ``           3         `` of
``           a         ``. Boolean sparse matrices are supported.

Examples
~~~~~~~~

::


    [1,2]==[1,3]
    [1,2]==1
    a=1:5; a(a>2)
     
      

See Also
~~~~~~~~

```           matrices         `` <matrices.htm>`_,
```           or         `` <../elementary/or.htm>`_,
```           and         `` <../elementary/and.htm>`_,
```           not         `` <../elementary/not.htm>`_,
