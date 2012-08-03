====
"type"
====

Scilab Function Last update : April 1993
**type** - variable type



Calling Sequence
~~~~~~~~~~~~~~~~

[i]=type(x)




Parameters
~~~~~~~~~~


+ **x** : Scilab object
+ **i** : integer




Description
~~~~~~~~~~~

**type(x)** returns an integer which is the type of **x** as following
:

1 : real or complex constant matrix.

2 : polynomial matrix.

4 : boolean matrix.

5 : sparse matrix.

6 : sparse boolean matrix.

8 : matrix of integers stored on 1 2 or 4 bytes

9 : matrix of graphic handles

10 : matrix of character strings.

11 : un-compiled function.

13 : compiled function.

14 : function library.

15 : list.

16 : typed list (tlist)

17 : mlist

128 : pointer



See Also
~~~~~~~~

` **typeof** `_,

.. _
      : ://./programming/../elementary/typeof.htm


