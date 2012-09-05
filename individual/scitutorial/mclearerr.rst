


mclearerr
=========

resets binary file access errors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mclearerr([fd])




Arguments
~~~~~~~~~

:fd a scalar: the `fd` parameter returned by the function `mopen`. -1
  stands for last opened file. Default value is -1.
:



Description
~~~~~~~~~~~

The function `mclearerr` is used to reset the error indicator and EOF
indicator to zero.



See Also
~~~~~~~~


+ `merror`_ tests the file access errors indicator
+ `mclose`_ closes an opened file
+ `mopen`_ open a file in Scilab
+ `mput`_ writes byte or word in a given binary format
+ `mget`_ reads byte or word in a given binary format and converts to
  a double type
+ `mgetstr`_ reads a character string from a file
+ `mputstr`_ write a character string in a file
+ `meof`_ check if end of file has been reached
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management


.. _mget: mget.html
.. _meof: meof.html
.. _mput: mput.html
.. _mgetstr: mgetstr.html
.. _mseek: mseek.html
.. _mclose: mclose.html
.. _mopen: mopen.html
.. _merror: merror.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html


