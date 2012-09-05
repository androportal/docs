


mclose
======

closes an opened file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    err=mclose([fd])
    mclose('all')




Arguments
~~~~~~~~~

:fd a scalar: the `fd` parameter returned by the function `mopen` is
  used as a file descriptor.
: :err a scalar: an error indicator.
:



Description
~~~~~~~~~~~

`mclose` must be used to close a file opened by `mopen`. If `fd` is
omitted `mclose` closes the last opend file.

`mclose('all')` closes all files opened by ``file`_('open',..)` or
`mopen`. Be careful with this use of `mclose` because when it is used
inside a Scilab script file, it also closes the script and Scilab will
not execute commands written after `mclose('all')`.



See Also
~~~~~~~~


+ `meof`_ check if end of file has been reached
+ `mfprintf`_ converts, formats, and writes data to a file
+ `fprintfMat`_ writes a matrix in a file
+ `mfscanf`_ reads input from the stream pointer stream (interface to
  the C fscanf function)
+ `fscanfMat`_ reads a matrix from a text file
+ `mget`_ reads byte or word in a given binary format and converts to
  a double type
+ `mgetl`_ reads lines from an text file
+ `mgetstr`_ reads a character string from a file
+ `mopen`_ open a file in Scilab
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `mput`_ writes byte or word in a given binary format
+ `mputl`_ writes strings in an ascii file
+ `mputstr`_ write a character string in a file
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management
+ `file`_ file management
+ `mdelete`_ deletes file(s)


.. _mfscanf: mfscanf.html
.. _mtell: mtell.html
.. _meof: meof.html
.. _mput: mput.html
.. _mget: mget.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mputl: mputl.html
.. _mdelete: mdelete.html
.. _mgetstr: mgetstr.html
.. _mfprintf: mfprintf.html
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _file: file.html
.. _mgetl: mgetl.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


