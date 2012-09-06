


fscanf
======

Converts formatted input read on a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [v_1,...v_n]=fscanf (file,format)




Arguments
~~~~~~~~~

:format Specifies the format conversion.
: :file Specifies the input file name or file number.
:



Description
~~~~~~~~~~~

This function is obsolete, use preferably the `mfscanf` function which
is more efficient and is more compatible with the C `fscanf`
procedure.

The fscanf functions read character data on the file specified by the
`file` argument , interpret it according to a format, and returns the
converted results.

The format parameter contains conversion specifications used to
interpret the input.

The format parameter can contain white-space characters (blanks, tabs,
newline, or formfeed) that, except in the following two cases, read
the input up to the next nonwhite-space character. Unless there is a
match in the control string, trailing white space (including a newline
character) is not read.


+ Any character except % (percent sign), which must match the next
  character of the input stream.
+ A conversion specification that directs the conversion of the next
  input field. see `scanf_conversion`_ for details.




See Also
~~~~~~~~


+ `printf`_
+ `read`_ matrices read
+ `scanf`_ Converts formatted input on standard input
+ `sscanf`_ Converts formatted input given by a string
+ `mfscanf`_ reads input from the stream pointer stream (interface to
  the C fscanf function)
+ `scanf_conversion`_ scanf, sscanf, fscanf conversion specifications


.. _mfscanf: mfscanf.html
.. _sscanf: sscanf.html
.. _scanf: scanf.html
.. _read: read.html
.. _printf: mprintf.html#printf
.. _scanf_conversion: scanf_conversion.html


