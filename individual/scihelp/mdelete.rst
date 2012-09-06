


mdelete
=======

deletes file(s)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mdelete(filename)




Arguments
~~~~~~~~~

:filename a character string: the pathname of the file(s) to delete.
:



Description
~~~~~~~~~~~

`mdelete` may be used to delete a file or a set of files if `filename`
contains meta-charaters.

Note that `mdelete` does not ask for confirmation when you enter the
delete command. To avoid accidentally losing files, make sure that you
have accurately specified the items you want deleted.



See Also
~~~~~~~~


+ `mopen`_ open a file in Scilab
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
+ `mscanf`_
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management


.. _mfscanf: mfscanf.html
.. _meof: meof.html
.. _mput: mput.html
.. _mget: mget.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mclose: mclose.html
.. _mgetstr: mgetstr.html
.. _mfprintf: mfprintf.html
.. _mscanf: mfscanf.html#mscanf
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


