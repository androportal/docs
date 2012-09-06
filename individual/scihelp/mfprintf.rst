


mfprintf
========

converts, formats, and writes data to a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mfprintf(fd,format,a1,...,an);




Arguments
~~~~~~~~~

:fd a scalar, file descriptor given by `mopen` (it's a positive
  integer). If `fd` equals 0 redirection in stderr. If `fd` equals 6
  redirection in stdout. OBSOLETE: The value `-1` refers to the default
  file (i.e the last opened file).
: :format a Scilab string describing the format to use to write the
  remaining operands. The `format` operand follows, as close as
  possible, the C `printf` format operand syntax.
: :str a character string: a string to be scanned.
: :a1,...,an the data to be converted and printed according to the
  format parameter.
:



Description
~~~~~~~~~~~

The `mfprintf` function is a interface for C-coded version of
`fprintf` function.

The `mfprintf` function writes formatted operands to the file
specified by the file desciptor `fd`. The argument operands are
formatted under control of the `format` operand.

This function may be used to output column vectors of numbers and
string vectors without an explicit loop on the elements. In that case
this function iterates on the rows. The shortest vector gives the
number of time the format has to be iterated.

An homogeneous sequence of identical type parameters can be replaced
by a matrix.



Examples
~~~~~~~~


::

    fd = `mopen`_(TMPDIR+'/text.txt','wt');
    mfprintf(fd,'hello %s %d.\n','world',1);
    mfprintf(fd,'hello %s %d.\n','scilab',2);
    mfprintf(fd,'This line is built with a column vector (26:28) %d.\n',[26:28].');
    mfprintf(fd,'This line is built with a row vector (26:28) %d.\n',[26:28]);
    A = `rand`_(3,6);
    mfprintf(fd,'This line is built with a matrix %.3f.\n',A);
    `mclose`_(fd);
    if (`isdef`_('editor') | (`funptr`_('editor')<>0)) then
      `editor`_(TMPDIR+'/text.txt')
    end
    mfprintf(0,'stderr output.\n');
    mfprintf(6,'stdout output.\n');




See Also
~~~~~~~~


+ `mclose`_ closes an opened file
+ `meof`_ check if end of file has been reached
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
+ `printf_conversion`_ mprintf, msprintf, mfprintf conversion
  specifications


.. _mfscanf: mfscanf.html
.. _meof: meof.html
.. _mput: mput.html
.. _mget: mget.html
.. _fscanfMat: fscanfMat.html
.. _mprintf: mprintf.html
.. _printf_conversion: printf_conversion.html
.. _mdelete: mdelete.html
.. _mclose: mclose.html
.. _mgetstr: mgetstr.html
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


