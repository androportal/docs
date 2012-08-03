====
"cell2mat"
====

Scilab Function Last update : 25/05/2005
**cell2mat** - convert a cell array into a matrix



Calling Sequence
~~~~~~~~~~~~~~~~

x=cell2mat(c)




Parameters
~~~~~~~~~~


+ **c** : cell, the components of c must have the same type and can be
  scalars or matrices
+ **x** : matrix




Description
~~~~~~~~~~~

Returns a matrix which is the concatenation of all components of the
cell c.

**cell2mat(c)**: all components of c must have the same data type
  (strings or doubles or integers or booleans). For each row **i ** of
  **c,** **cell2mat** concatenates all the components of the **ith** row
  of the cell **c**


Note that if the components of the cell input c **** are strings then
**cell2mat(c)** returns a column vector of strings concatenation



Examples
~~~~~~~~


::

    
    
    c=makecell([2,2],[1 2 3; 6 7 8],[4 5;9 10],[11 12;16 17],[14 13 15;18 19 20])
    cell2mat(c)
     
      




See Also
~~~~~~~~

` **cell** `_,

.. _
      : ://./elementary/../mtlb/cell.htm


