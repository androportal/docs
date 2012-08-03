====
"meof"
====

Scilab Function Last update : 01/04/2004
**meof** - check if end of file has been reached



Calling Sequence
~~~~~~~~~~~~~~~~

err=meof(fd)




Parameters
~~~~~~~~~~


+ **fd** : scalar. The **fd** parameter returned by the function
  **mopen** . -1 stands for last opened file. Default value is -1.
+ **err** : scalar. Error indicator




Description
~~~~~~~~~~~

The function **meof** will return a non null value if end of file has
been reached in a previous call to **mget** or **mgetstr** . The
function **clearerr** is used to reset the error flag and EOF flag to
zero.



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


