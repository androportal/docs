


read
====

matrices read



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x] = read(file-desc,m,n,[format])
    [x]=read(file-desc,m,n,k,format)




Arguments
~~~~~~~~~

:file-desc character string specifying the file name or integer value
  specifying logical unit (fortran, see `file`_).
: :m, n integers (dimensions of the matrix x). Set m=-1 if you do not
  know the numbers of rows, so the whole file is read.
: :format : character string, specifies a "Fortran" format. This
  character string must begin with a right parenthesis and end with a
  left parenthesis. Formats cannot mix floating point or character
  edition modes.
: :k integer or vector of integer
:



Description
~~~~~~~~~~~

reads row after row the `mxn` matrix `x` ( `n=1` for character chain)
in the file `file-desc` (string or integer). Each row of the matrix
`x` begin in a new line of `file-desc` file. Depending on `format`, a
given row of the `x` matrix may be read from more than one line of
`file-desc` file.

The type of the result will depend on the specified format. If format
contains only `(d,e,f,g)` descriptors the function tries to read
numerical data (the result is matrix of real numbers).

If format contains only `a` descriptors the function tries to read
character strings (the result is a character string column vector). In
this case n must be equal to 1. Warning: The character strings are
truncated when they are longuer than 4093.

Examples for `format`:


::

    (1x,e10.3,5x,3(f3.0))
    (10x,a20)


When format is omitted data are read using numerical free format:
blank, comma and slash may be used as data separators, n*v may be use
to represent n occurrences of value n.

A direct access file can be used if using the parameter `k` which is
is the vector of record numbers to be read (one record per row), thus
`m` must be `m=prod(size(k))`.

To read on the keyboard use `read(%io(1),...)`.



Remark
~~~~~~

Last line of data files must be terminated by a newline to be taken
into account.



Examples
~~~~~~~~


::

    `mdelete`_(TMPDIR + '/foo');
    A = `rand`_(3,5);
    `write`_(TMPDIR + '/foo', A);
    B = read(TMPDIR + '/foo', 3, 5);
    B = read(TMPDIR + '/foo', -1, 5);
    read(%io(1), 1, 1, '(a)')  // waits for user's input




See Also
~~~~~~~~


+ `write`_ write in a formatted file
+ `load`_ Load a saved variable or a serie of variables
+ `file`_ file management
+ `readb`_ fortran file binary read
+ `x_dialog`_ Dialog for interactive multi-lines input.
+ `mscanf`_
+ `mfscanf`_ reads input from the stream pointer stream (interface to
  the C fscanf function)
+ `msscanf`_
+ `fscanfMat`_ reads a matrix from a text file


.. _write: write.html
.. _mfscanf: mfscanf.html
.. _readb: readb.html
.. _fscanfMat: fscanfMat.html
.. _msscanf: mfscanf.html#msscanf
.. _load: load.html
.. _x_dialog: x_dialog.html
.. _mscanf: mfscanf.html#mscanf
.. _file: file.html


