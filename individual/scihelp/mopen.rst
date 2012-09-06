


mopen
=====

open a file in Scilab



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [fd, err] = mopen(file [, mode, swap ])




Arguments
~~~~~~~~~

:file a character string. The pathname of the file to open.
: :mode a character string that controls whether the file is opened
  for reading (r), writing (w), or appending (a) and whether the file is
  opened for updating (+). The mode can also include a b parameter to
  indicate a binary file. 'rb' default value
: :swap a scalar. If `swap` is present and `swap = 0` then automatic
  bytes swap is disabled. 1 default value
: :err a scalar. Error indicator. error value: error message: 0 No
  error -1 no more logical units -2 cannot open file -3 no more memory
  -4 invalid name -5 invalid status
: :fd scalar. The `fd` parameter returned by the function `mopen` is
  used as a file descriptor (it's a positive integer).
:



Description
~~~~~~~~~~~

`mopen` may be used to open a file in a way compatible with the C
`fopen` procedure. Without swap argument the file is supposed to be
coded in "little endian IEEE format" and data are swaped if necessary
to match the IEEE format of the processor.

The mode parameter controls the access allowed to the stream. The
parameter can have one of the following values. In this list of
values, the b character indicates a binary file

:r Opens the file for reading.
: :rb Opens a binary file for reading.
: :rt Opens a text file for reading.
: :w Creates a new file for writing, or opens and truncates a file to
  zero length.
: :wb Creates a new binary file for writing, or opens and truncates a
  file to zero length.
: :wt Creates a text binary file for writing, or opens and truncates a
  file to zero length.
: :a or ab Appends (opens a file for writing at the end of the file,
  or creates a file for writing).
: :r+ or r+b Opens a file for update (reading and writing).
: :w+ or w+b Truncates to zero length or creates a file for update.
: :a+ or a+b Appends (opens a file for update, writing at the end of
  the file, or creates a file for writing).
:

When you open a file for update, you can perform both input and output
operations on the resulting stream. However, an output operation
cannot be directly followed by an input operation without a file-
positioning operation (mseek() function). Also, an input operation
cannot be directly followed by an output operation without an
intervening file positioning operation, unless the input operation
encounters the end of the file.

When you open a file for append (that is, when the mode parameter is a
or a+), it is impossible to overwrite information already in the file.
You can use the fseek() function to reposition the file pointer to any
position in the file, but when output is written to the file, the
current file pointer is ignored. All output is written at the end of
the file and the file pointer is repositioned to the end of the
output.

To open files in a way compatible with Fortran like functions use
function `file`.


::

    // open a SCI+'/ACKNOWLEDGEMENTS' as text and read only
          fd_r = mopen(SCI+'/ACKNOWLEDGEMENTS', 'rt')
          
          // read five lines of fd_r
          `mgetl`_(fd_r, 5)
          
          // another way to read file
          // here read five words
          `mfscanf`_(5, fd_r, '%s')
          
          // close file descriptor associated to SCI+'/ACKNOWLEDGEMENTS' as text and read only
          `mclose`_(fd_r);



::

    // open a file as text with write property
          fd_w = mopen(TMPDIR+'/write.txt', 'wt');
          
          // write a line in fd_w
          `mputl`_('This is a line of text', fd_w);
          `mclose`_(fd_w);
          
          // read text
          fd_r2 = mopen(TMPDIR+'/write.txt', 'rt');
          `mgetl`_(fd_r2)
          `mclose`_(fd_r2);



::

    // read write a file as binary
          
          // first we write file
          fd_wb = mopen(TMPDIR+'/writeread.bin', 'wb')
          
          // put values as binary
          `mput`_(2003, 'l', fd_wb);
          `mput`_(2008, 'i', fd_wb);
          `mput`_(2012, 's', fd_wb);
          `mput`_(98, 'c', fd_wb);
          
          // close file descriptor associated to TMPDIR+'/writeread.bin'
          `mclose`_(fd_wb);
          
          // we read file
          fd_rb = mopen(TMPDIR+'/writeread.bin', 'rb')
          
          `mget`_(fd_rb, 'l')
          `mget`_(fd_rb, 'i')
          `mget`_(fd_rb, 's')
          `mget`_(fd_rb, 'c')
          
          `mclose`_(fd_rb)




See Also
~~~~~~~~


+ `mclose`_ closes an opened file
+ `merror`_ tests the file access errors indicator
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
+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `mput`_ writes byte or word in a given binary format
+ `mputl`_ writes strings in an ascii file
+ `mputstr`_ write a character string in a file
+ `mscanf`_
+ `mseek`_ set current position in binary file.
+ `mtell`_ binary file management
+ `mdelete`_ deletes file(s)


.. _mfscanf: mfscanf.html
.. _meof: meof.html
.. _mput: mput.html
.. _mget: mget.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _mputl: mputl.html
.. _mdelete: mdelete.html
.. _mclose: mclose.html
.. _mgetstr: mgetstr.html
.. _mfprintf: mfprintf.html
.. _mscanf: mfscanf.html#mscanf
.. _mseek: mseek.html
.. _merror: merror.html
.. _mtell: mtell.html
.. _mgetl: mgetl.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


