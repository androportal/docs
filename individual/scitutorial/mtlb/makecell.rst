====
"makecell"
====

Scilab Function Last update : 07/11/2006
**makecell** - creates a cell



Calling Sequence
~~~~~~~~~~~~~~~~

y=makecell([dim1,dim2],cpnt_1,cpnt_2,...)




Parameters
~~~~~~~~~~


+ **[dim1, dim2]** : a vector which contains the dimension of the cell
  (dim1: number of lines, dim2: number of columns)
+ **cpnt1, cpnt2,..** : the components of the cell (strings, vectors,
  matrices, ...)




Description
~~~~~~~~~~~

Returns a cell (size= dim1 x dim2), with cpnt1, cpnt2, ... the
components of the cell (ordered by line).



Examples
~~~~~~~~


::

    
    
    a=makecell([2,3],'10','foo1',[1 2;3 4],'foo2',[6 7 8],'foo3');
    
      




See Also
~~~~~~~~

` **cell** `_,

.. _
      : ://./mtlb/cell.htm


