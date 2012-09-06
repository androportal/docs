


mget
====

reads byte or word in a given binary format and converts to a double
type



mgeti
=====

reads byte or word in a given binary format and returns an int type



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x = mget([n, type, fd])
    x = mgeti([n, type, fd])




Arguments
~~~~~~~~~

:n a positive scalar: the number of items to be read.
: :fd a scalar: the `fd` parameter returned by the function `mopen`.
  -1 stands for the last opened file. Default value is -1.
: :type a string: the binary format used to write all the entries of
  `x`.
: :x a vector of floating point or integer numbers.
:



Description
~~~~~~~~~~~

The `mget` function reads data in the input specified by the stream
parameter `fd` and returns a vector of floating point data.

The `mgeti` function reads data in the input specified by the stream
parameter `fd` and returns a vector of integer data.

Data is read at the position at which the file pointer is currently
pointing and advances the indicator appropriately.

The `type` parameter is a conversion specifier which may be set to any
of the following flag characters (with default value `"l"`):

On Windows, default behavior is to skip byte 13 (0x0D). `mopen` should
be called with the `'b'` option, e.g. `fd1=`mopen`_(file1,'rb')`, so
that all bytes will be read without exception.

Data type:

:d double
: :f float
: :l long
: :i int
: :s short
: :c character
:

Optional flag:

:u.. unsigned (in combination with one of the above types)
: :..l little endian (in combination with one of the above types)
: :..b big endian (in combination with one of the above types)
:

Bytes read is automatically swapped if necessary (by checking
`little=endian` status).

This default swapping behavior can be suprressed by adding a flag in
the `mopen` function.

Formats `"l"`, `"d"` and `"f"` are only valid with the `mget`
function.



Examples
~~~~~~~~


::

    file1 = `fullfile`_(TMPDIR,'test1.bin');
    file2 = `fullfile`_(TMPDIR,'test2.bin');
    fd1=`mopen`_(file1,'wb');
    fd2=`mopen`_(file2,'wb');
    `mput`_(1996,'ull',fd1);
    `mput`_(1996,'ull',fd2);
    `mclose`_(fd1);
    `mclose`_(fd2);
    
    fd1=`mopen`_(file1,'rb');
    if 1996<>`mget`_(1,'ull',fd1)
      `write`_(%io(2),'Bug');
    end
    
    fd2=`mopen`_(file2,'rb');
    if 1996<>`mget`_(1,'ull',fd2)
      `write`_(%io(2),'Bug');
    end
    
    `mclose`_(fd1);
    `mclose`_(fd2);




See Also
~~~~~~~~


+ `mclose`_ closes an opened file
+ `meof`_ check if end of file has been reached
+ `mfprintf`_ converts, formats, and writes data to a file
+ `fprintfMat`_ writes a matrix in a file
+ `mfscanf`_ reads input from the stream pointer stream (interface to
  the C fscanf function)
+ `fscanfMat`_ reads a matrix from a text file
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
+ `mdelete`_ deletes file(s)


.. _mfscanf: mfscanf.html
.. _meof: meof.html
.. _mput: mput.html
.. _mgetstr: mgetstr.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mputl: mputl.html
.. _mdelete: mdelete.html
.. _mclose: mclose.html
.. _mfprintf: mfprintf.html
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _mtell: mtell.html
.. _mgetl: mgetl.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


