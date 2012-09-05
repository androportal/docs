


fprintfMat
==========

writes a matrix in a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    fprintfMat(file,M [,format,text])




Arguments
~~~~~~~~~

:file a string, the pathname of the file to be written
: :M a matrix of real numbers
: :format a character string giving the format. This is an optional
  parameter, the default value is `"%lf"`. Supported format:
  `%[width].[precision]type` or `%type`, where: `width`: an optional
  number that specifies the minimum number of characters output;
  `precision`: an optional number that specifies the maximum number of
  characters printed for all or part of the output field, or the minimum
  number of digits printed for integer values; `type`: lf, lg, d, i, e,
  f, g (see `scanf_conversion`_ for details).
: :text a row (column) vector of strings giving non numerical comments
  stored at the beginning of the file.
:



Description
~~~~~~~~~~~

The `fprintfMat` function writes a matrix in a formated file. Each row
of the matrix give a line in the file. If `text` is given then the
elements of `text` are inserted elementwise at the beginning of the
file one element per line.



Examples
~~~~~~~~


::

    n = 50;
    a = `rand`_(n, n, "u");
    fprintfMat(TMPDIR + "/Mat", a, "%5.2f");
    a1 = `fscanfMat`_(TMPDIR + "/Mat");
    
    // Lets we create a file Mat1 and insert a comment into it
    some_comment = ["This is a comment","This the second line of the comment.","This is the third line of the comment."];
    fprintfMat(TMPDIR + "/Mat1", a, "%5.2f",some_comment);




See Also
~~~~~~~~


+ `scanf_conversion`_ scanf, sscanf, fscanf conversion specifications
+ `mclose`_ closes an opened file
+ `meof`_ check if end of file has been reached
+ `mfprintf`_ converts, formats, and writes data to a file
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


