====
"length"
====

Scilab Function Last update : April 1993
**length** - length of object



Calling Sequence
~~~~~~~~~~~~~~~~

n=length(M)




Parameters
~~~~~~~~~~


+ **M** : matrix (usual or polynomial or character string) or list
+ **n** : integer or integer matrix




Description
~~~~~~~~~~~

For usual or polynomial matrix **n** is the integer equal to number of
rows times number of columns of **M** . (Also valid for **M** a
boolean matrix)

For matrices made of character strings (and in particular for a
character string) **length** returns in **n** the length of entries of
the matrix of character strings **M** .

The length of a list is the number of elements in the list (also given
by **size** ).

**length('123')** is **3** . **length([1,2;3,4])** is **4** .



See Also
~~~~~~~~

` **size** `_,

.. _
      : ://./strings/../elementary/size.htm


