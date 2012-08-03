====
"perms"
====

Scilab Function Last update : 07/11/2006
**perms** - returns all permutations of a vector components



Calling Sequence
~~~~~~~~~~~~~~~~

y=perms(x)




Parameters
~~~~~~~~~~


+ **x** : a scalar or a vector.
+ **y** : a scalar or a matrix.




Description
~~~~~~~~~~~

Given a vector **x** of length **n** ,the function **perms** returns
all the permutations of **x** . The size of ** y** is **n!** x **n** .



Examples
~~~~~~~~


::

    // example 1:
    x=[4 7 10];
    y=perms(x)
    
    // example 2:
    x=[1 5 2 5];
    y=perms(x)




See Also
~~~~~~~~

` **permute** `_,



Author
~~~~~~

Farid Belahcene

.. _
      : ://./elementary/permute.htm


