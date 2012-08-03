====
"merror"
====

Scilab Function Last update : August 2003
**merror** - tests the file access errors indicator



Calling Sequence
~~~~~~~~~~~~~~~~

merror([fd])




Parameters
~~~~~~~~~~


+ **fd** : scalar. The **fd** parameter returned by the function
  **mopen** . -1 stands for last opened file. Default value is -1.




Description
~~~~~~~~~~~

The function **merror** is used to tests the file access errors
indicator. returning non-zero if it is set. The error indicator can
only be reset by the **mclearerr** function.



See Also
~~~~~~~~

` **mclearerr** `_,` **mclose** `_,` **mopen** `_,` **mput** `_,`
**mget** `_,` **mgetstr** `_,` **mputstr** `_,` **meof** `_,`
**mseek** `_,` **mtell** `_,

.. _
      : ://./fileio/meof.htm
.. _
      : ://./fileio/mseek.htm
.. _
      : ://./fileio/mputstr.htm
.. _
      : ://./fileio/mgetstr.htm
.. _
      : ://./fileio/mopen.htm
.. _
      : ://./fileio/mclose.htm
.. _
      : ://./fileio/mtell.htm
.. _
      : ://./fileio/mclearerr.htm
.. _
      : ://./fileio/mput.htm
.. _
      : ://./fileio/mget.htm


