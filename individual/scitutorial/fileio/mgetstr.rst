====
"mgetstr"
====

Scilab Function Last update : 01/04/2004
**mgetstr** - read a character string



Calling Sequence
~~~~~~~~~~~~~~~~

str=mgetstr(n [,fd] )




Parameters
~~~~~~~~~~


+ **n** :a positive scalar: The number of character to read.
+ **fd** : scalar. The **fd** parameter returned by the function
  **mopen** . -1 stands for last opened file. Default value is -1.
+ **str** : a character string




Description
~~~~~~~~~~~

mgetstr function allows to read a character string in a binary file.
If EOF is reached before read completion only the properly read values
will be returned.



See Also
~~~~~~~~

` **mclose** `_,` **meof** `_,` **mfprintf** `_,` **fprintfMat** `_,`
**mfscanf** `_,` **fscanfMat** `_,` **mget** `_,` **mgetstr** `_,`
**mopen** `_,` **mprintf** `_,` **mput** `_,` **mputstr** `_,`
**mscanf** `_,` **mseek** `_,` **mtell** `_,` **mdelete** `_,

.. _
      : ://./fileio/meof.htm
.. _
      : ://./fileio/mseek.htm
.. _
      : ://./fileio/mputstr.htm
.. _
      : ://./fileio/fprintfMat.htm
.. _
      : ://./fileio/mgetstr.htm
.. _
      : ://./fileio/mopen.htm
.. _
      : ://./fileio/mprintf.htm
.. _
      : ://./fileio/mfscanf.htm
.. _
      : ://./fileio/mtell.htm
.. _
      : ://./fileio/mclose.htm
.. _
      : ://./fileio/fscanfMat.htm
.. _
      : ://./fileio/mget.htm
.. _
      : ://./fileio/mdelete.htm
.. _
      : ://./fileio/mput.htm


