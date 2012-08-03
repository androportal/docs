====
"cellstr"
====

Scilab Function Last update : 25/05/2005
**cellstr** - convert strings vector (or strings matrix) into a cell
of strings



Calling Sequence
~~~~~~~~~~~~~~~~

c=cellstr(s)




Parameters
~~~~~~~~~~


+ **s** : strings vector, or strings matrix




Description
~~~~~~~~~~~

returns a cell array of strings

****If **s ** is a line vector of strings then **cellstr(s)** returns
  a **(one-by-one)** cell which contains one component (the
  concatenation of all columns components of **s )**
****If **s** is a column vector of strings then **cellstr(s)** convert
  s into a cell which have the same size : **(size(s,1)-by-one)** cell
  of strings
****If **s** is a matrix of strings then for each row ** i ** of **s**
  , **cellstr(s)** concatenates all the components of the ith rows of
  the matrix **s** (i.e s(i,1), s(i,2), s(i,3),...) and returns a (
  **size(s,1)-by-one)** cell of strings




Examples
~~~~~~~~


::

    
    
    cellstr("foo")
    cellstr(["sci","lab"])
    cellstr(["abc","def",'gh';"i","j","klm"])
     
      




See Also
~~~~~~~~

` **cell** `_,` **string** `_,

.. _
      : ://./elementary/../mtlb/cell.htm
.. _
      : ://./elementary/../strings/string.htm


