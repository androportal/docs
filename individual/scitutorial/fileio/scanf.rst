====
"scanf"
====

Scilab Function Last update : May 1994
**scanf** - Converts formatted input on standard input



Calling Sequence
~~~~~~~~~~~~~~~~

[v_1,...v_n]=scanf (format);




Parameters
~~~~~~~~~~


+ **format** :Specifies the format conversion.




Description
~~~~~~~~~~~

The scanf functions get character data on standard input (%io(1)),
interpret it according to a format, and returns the converted results.

The format parameter contains conversion specifications used to
interpret the input.

The format parameter can contain white-space characters (blanks, tabs,
newline, or formfeed) that, except in the following two cases, read
the input up to the next nonwhite-space character. Unless there is a
match in the control string, trailing white space (including a newline
character) is not read.

**-**Any character except % (percent sign), which must match the next
  character of the input stream.
**-**A conversion specification that directs the conversion of the
  next input field. see **scanf_conversion** for details.




See Also
~~~~~~~~

` **printf** `_,` **read** `_,` **fscanf** `_,` **sscanf** `_,

.. _
      : ://./fileio/read.htm
.. _
      : ://./fileio/printf.htm
.. _
      : ://./fileio/fscanf.htm
.. _
      : ://./fileio/sscanf.htm


