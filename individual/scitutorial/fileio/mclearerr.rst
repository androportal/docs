====
"mclearerr"
====

Scilab Function Last update : April 1993
**mclearerr** - reset binary file access errors



Calling Sequence
~~~~~~~~~~~~~~~~

mclearerr([fd])




Parameters
~~~~~~~~~~


+ **fd** : scalar. The **fd** parameter returned by the function
  **mopen** . -1 stands for last opened file. Default value is -1.




Description
~~~~~~~~~~~

The function **clearerr** is used to resets the error indicator and
EOF indicator to zero.



See Also
~~~~~~~~

` **merror** `_,` **mclose** `_,` **mopen** `_,` **mput** `_,`
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
      : ://./fileio/mtell.htm
.. _
      : ://./fileio/mclose.htm
.. _
      : ://./fileio/merror.htm
.. _
      : ://./fileio/mput.htm
.. _
      : ://./fileio/mget.htm


