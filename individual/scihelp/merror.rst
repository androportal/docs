


merror
======

tests the file access errors indicator



Calling Sequence
~~~~~~~~~~~~~~~~


::

    err = merror([fd])      
    [err, msg] = merror([fd])




Arguments
~~~~~~~~~

:fd a scalar: the `fd` parameter returned by the function `mopen` is
  used as a file descriptor (it's a positive integer). -1 stands for
  last opened file. The default value is -1.
: :err a scalar: an error status number of the most recent file I/O
  operation associated with the specified file. If the most recent I/O
  operation performed on the specified file was successful, the value of
  `msg` is empty and `merror` returns an `err` value of 0.
: :msg a string: an error string message.
:



Description
~~~~~~~~~~~

The function `merror` is used to test the file access errors indicator
returning non-zero if it is set. The error indicator can only be reset
by the `mclearerr` function.

A nonzero `err` indicates that an error occurred in the most recent
file I/O operation. The value of message is a string that can contain
information about the nature of the error. If the message is not
helpful, consult the C run-time library manual for your host operating
system for further details.



Examples
~~~~~~~~


::

    fd = `mopen`_(TMPDIR +'/filetxt.txt','wt');
    [err,msg] = merror(fd)
    if (err <> 0) then 
      `mprintf`_('Problem\n');
    end
    `mclose`_(fd);




See Also
~~~~~~~~


+ `mclearerr`_ resets binary file access errors
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
.. _mclearerr: mclearerr.html
.. _mclose: mclose.html
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html


