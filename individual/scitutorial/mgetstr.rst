


mgetstr
=======

reads a character string from a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    str = mgetstr(n, [fd])




Arguments
~~~~~~~~~

:n non-negative integer: how many characters should be read.
: :fd an integer: file descriptor as returned by `mopen`_: where
  characters should be read. The value `-1` stands for the last opened
  file and is the default.
: :str the character string to be read.
:



Description
~~~~~~~~~~~

The `mgetstr` function attempts to read up to `n` characters from a
file. If end of file is reached before `n` characters are read,
`mgetstr` returns the properly read values only. As a consequence,
when the read cursor is already at the end of the file when `mgetstr`
is called, it returns an empty string no matter what value is provided
for `n`.



Examples
~~~~~~~~


::

    fn = SCI + '/ACKNOWLEDGEMENTS'; // absolute path to some file
    details = `fileinfo`_(fn);         // retrieve file details
    len = details(1);               // get file length
    fd = `mopen`_(fn, 'rt');           // open file as text with read mode
    str1 = mgetstr(33, fd)          // read 33 characters from fd
    `length`_(str1)                    // 33 characters read
    str2 = mgetstr(272, fd)         // read the next 272 characters from fd
    `length`_(str2)                    // 272 characters read
    `mseek`_(len - 5);                 // jump to the 5th character before end of file
    str3 = mgetstr(10, fd)          // try to read 10 characters: returns 5 characters only, no more available
    `length`_(str3)                    // yes, there are 5 characters: you just can't see the linefeed :)
    str4 = mgetstr(10, fd)          // read 10 characters: returns empty string
    `length`_(str4)                    // empty string
    `mclose`_(fd);                     // close file descriptor




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
+ `mopen`_ open a file in Scilab
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `mput`_ writes byte or word in a given binary format
+ `mputstr`_ write a character string in a file
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management
+ `mdelete`_ deletes file(s)
+ "Input/Output functions" section


.. _mfscanf: mfscanf.html
.. _meof: meof.html
.. _mput: mput.html
.. _mget: mget.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mdelete: mdelete.html
.. _mclose: mclose.html
.. _mfprintf: mfprintf.html
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


