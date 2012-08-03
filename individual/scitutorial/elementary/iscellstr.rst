====
"iscellstr"
====

Scilab Function Last update : 07/11/2006
**iscellstr** - Checks if all the cell components are strings



Calling Sequence
~~~~~~~~~~~~~~~~

y=iscellstr(c)




Parameters
~~~~~~~~~~


+ **c** : a cell.
+ **y** : a double (0 or 1).




Description
~~~~~~~~~~~

Given a cell **c** ,the function **iscellstr** returns 1 if all the
cell components are strings else returns 0.



Examples
~~~~~~~~


::

    // example 1:
    c=makecell([1,3],'foo1','foo2','foo3');
    y=iscellstr(c)
    
    // example 2:
    c=makecell([1,3],'foo1',5,'foo3');
    y=iscellstr(c)




See Also
~~~~~~~~

` **cell** `_,` **makecell** `_,



Author
~~~~~~

Farid Belahcene

.. _
      : ://./elementary/../mtlb/cell.htm
.. _
      : ://./elementary/../mtlb/makecell.htm


