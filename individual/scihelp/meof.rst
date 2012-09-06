


meof
====

check if end of file has been reached



Calling Sequence
~~~~~~~~~~~~~~~~


::

    err=meof(fd)




Arguments
~~~~~~~~~

:fd a scalar: the `fd` parameter returned by the function `mopen`. -1
  stands for last opened file. Default value is -1.
: :err a scalar: an error indicator.
:



Description
~~~~~~~~~~~

The function `meof` will return a non null value if end of file has
been reached in a previous call to `mget` or `mgetstr`. The function
`mclearerr` is used to reset the error flag and EOF flag to zero.



See Also
~~~~~~~~


+ `mclose`_ closes an opened file
+ `meof`_ check if end of file has been reached
+ `mfprintf`_ converts, formats, and writes data to a file
+ `fprintfMat`_ writes a matrix in a file
+ `mfscanf`_ reads input from the stream pointer stream (interface to
  the C fscanf function)
+ `fscanfMat`_ reads a matrix from a text file
+ `mget`_ reads byte or word in a given binary format and converts to
  a double type
+ `mgetstr`_ reads a character string from a file
+ `mopen`_ open a file in Scilab
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `mput`_ writes byte or word in a given binary format
+ `mputstr`_ write a character string in a file
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management
+ `mdelete`_ deletes file(s)


.. _mfscanf: mfscanf.html
.. _meof: meof.html
.. _mput: mput.html
.. _mget: mget.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mdelete: mdelete.html
.. _mclose: mclose.html
.. _mgetstr: mgetstr.html
.. _mfprintf: mfprintf.html
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


