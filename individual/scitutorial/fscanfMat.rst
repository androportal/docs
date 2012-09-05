


fscanfMat
=========

reads a matrix from a text file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    M = fscanfMat(filename[, fmt]);
    [M, text] = fscanfMat(filename [, fmt]);




Arguments
~~~~~~~~~

:filename a character string giving the name of the file to be
  scanned.
: :fmt a character string giving the format. This is an optional
  parameter, the default value is `"%lg"`. Supported format:
  `%[width].[precision]type` or `%type` where: `width`: optional number
  that specifies the minimum number of characters output; `precision`:
  optional number that specifies the maximum number of characters
  printed for all or part of the output field, or the minimum number of
  digits printed for integer values. `type`: lf, lg, d, i, e, f, g (see
  `scanf_conversion`_).
: :M output variable. A matrix of real numbers.
: :text output variable. A column vector of strings. It is comments in
  the beginning of the file `filename`.
:



Description
~~~~~~~~~~~

The `fscanfMat` function is used to read a real matrix from a text
file. The first non-numeric lines of the file are returned in `text`
if requested and all the remaining lines must have the same number of
columns (column separator are assumed to be white spaces or tab
characters). The number of columns of the matrix will follow the
number of columns found in the file and the number of lines is fetched
by detecting eof in the input file. This function can be used to read
back numerical data saved with the `fprintfMat` (default separator
used is a space).

`fscanfMat` supports files encoded as ANSI/ASCII and UTF-8.



Examples
~~~~~~~~


::

    fd = `mopen`_(TMPDIR + "/Mat", "w");
    `mfprintf`_(fd, "Some text.....\n");
    `mfprintf`_(fd, "Some text again\n");
    a = `rand`_(6,6);
    for i = 1:6 ,
    for j = 1:6, `mfprintf`_(fd, "%5.2f ", a(i,j));end;
    `mfprintf`_(fd, "\n"); 
    end
    `mclose`_(fd);
    a1 = fscanfMat(TMPDIR + "/Mat")
    
    A = `ones`_(5,5) + 0.1;
    `fprintfMat`_(TMPDIR + "/Matrix.txt", A, "%lg");
    B = fscanfMat(TMPDIR + "/Matrix.txt", "%lg");
    A == B
    
    C = [%nan, %inf, -%inf, 1];
    `fprintfMat`_(TMPDIR + "/MatrixNANINF.txt", C);
    D = fscanfMat(TMPDIR + '/MatrixNANINF.txt')




See Also
~~~~~~~~


+ `scanf_conversion`_ scanf, sscanf, fscanf conversion specifications
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
.. _mscanf: mfscanf.html#mscanf
.. _mopen: mopen.html
.. _mseek: mseek.html
.. _scanf_conversion: scanf_conversion.html
.. _mtell: mtell.html
.. _mputstr: mputstr.html
.. _fprintfMat: fprintfMat.html


