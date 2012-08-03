====
"fscanf"
====

Scilab Function Last update : May 1994
**fscanf** - Converts formatted input read on a file



Calling Sequence
~~~~~~~~~~~~~~~~

[v_1,...v_n]=fscanf (file,format)




Parameters
~~~~~~~~~~


+ **format** :Specifies the format conversion.
+ **file** :Specifies the input file name or file number.




Description
~~~~~~~~~~~

The fscanf functions read character data on the file specified by the
**file** argument , interpret it according to a format, and returns
the converted results.

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

` **printf** `_,` **read** `_,` **scanf** `_,` **sscanf** `_,`
**mfscanf** `_,

.. _
      : ://./fileio/printf.htm
.. _
      : ://./fileio/sscanf.htm
.. _
      : ://./fileio/mfscanf.htm
.. _
      : ://./fileio/read.htm
.. _
      : ://./fileio/scanf.htm


