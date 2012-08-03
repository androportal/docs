====
"mclose"
====

Scilab Function Last update : 01/04/2004
**mclose** - close an opened file



Calling Sequence
~~~~~~~~~~~~~~~~

err=mclose([fd])
mclose('all')




Parameters
~~~~~~~~~~


+ **fd** : scalar. The **fd** parameter returned by the function
  **mopen** is used as a file descriptor (it's a positive integer).
+ **err** : a scalar. Error indicator : vector




Description
~~~~~~~~~~~

**mclose** must be used to close a file opened by **mopen** . If fd is
omitted **mclose** closes the last opend file.

**mclose('all')** closes all files opened by **file('open',..)** or
**mopen**



See Also
~~~~~~~~

` **meof** `_,` **mfprintf** `_,` **fprintfMat** `_,` **mfscanf** `_,`
**fscanfMat** `_,` **mget** `_,` **mgetstr** `_,` **mopen** `_,`
**mprintf** `_,` **mput** `_,` **mputstr** `_,` **mscanf** `_,`
**mseek** `_,` **mtell** `_,` **file** `_,` **mdelete** `_,

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
      : ://./fileio/file.htm
.. _
      : ://./fileio/mfscanf.htm
.. _
      : ://./fileio/mtell.htm
.. _
      : ://./fileio/fscanfMat.htm
.. _
      : ://./fileio/mget.htm
.. _
      : ://./fileio/mdelete.htm
.. _
      : ://./fileio/mput.htm


