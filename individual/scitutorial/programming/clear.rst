====
"clear"
====

Scilab Function Last update : April 1993
**clear** - kills variables



Calling Sequence
~~~~~~~~~~~~~~~~

clear a




Description
~~~~~~~~~~~

This command kills variables which are not protected. It removes the
named variables from the environment. By itself **clear** kills all
the variables except the variables protected by **predef** . Thus the
two commands **predef(0)** and **clear** remove all the variables.

Normally, protected variables are standard libraries and variables
with the percent prefix.

Note the particular syntax **clear a** and not **clear(a)** . Note
also that **a=[]** does not kill **a** but sets **a** to an empty
matrix.



See Also
~~~~~~~~

` **predef** `_,` **who** `_,

.. _
      : ://./programming/who.htm
.. _
      : ://./programming/predef.htm


