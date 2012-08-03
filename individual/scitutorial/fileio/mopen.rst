====
"mopen"
====

Scilab Function Last update : 01/04/2004
**mopen** - open a file



Calling Sequence
~~~~~~~~~~~~~~~~

[fd,err]=mopen(file [, mode, swap ])




Parameters
~~~~~~~~~~


+ **file** : a character string. The pathname of the file to open.
+ **mode** : a character string that controls whether the file is
  opened for reading (r), writing (w), or appending (a) and whether the
  file is opened for updating (+). The mode can also include a b
  parameter to indicate a binary file.
+ **swap** : a scalar. If **swap** is present and **swap=0** then
  automatic bytes swap is disabled.
+ **err** : a scalar. Error indicator
+ **fd** : scalar. The **fd** parameter returned by the function
  **mopen** is used as a file descriptor (it's a positive integer).




Description
~~~~~~~~~~~

**mopen** may be used to open a file in a way compatible with the C
**fopen** procedure. Without swap argument the file is supposed to be
coded in "little endian IEEE format" and data are swaped if necessary
to match the IEEE format of the processor.

The mode parameter controls the access allowed to the stream. The
parameter can have one of the following values. In this list of
values, the b character indicates a binary file

**r or rb**: Opens the file for reading.
**w or wb**: Creates a new file for writing, or opens and truncates a
  file to zero length.
**a or ab**: Appends (opens a file for writing at the end of the file,
  or creates a file for writing).
**r+ or r+b**: Opens a file for update (reading and writing).
**w+ or w+b**: Truncates to zero length or creates a file for update.
**a+ or a+b**:Appends (opens a file for update, writing at the end of
  the file, or creates a file for writing).


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
function **file** .



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


