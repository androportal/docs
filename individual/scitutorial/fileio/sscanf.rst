====
"sscanf"
====

Scilab Function Last update : 04/10/2004
**sscanf** - Converts formatted input given by a string



Calling Sequence
~~~~~~~~~~~~~~~~

[v_1,...v_n]=sscanf (string,format)




Parameters
~~~~~~~~~~


+ **format** :Specifies the format conversion.
+ **string** :Specifies input to be read.




Description
~~~~~~~~~~~

This function is obsolete, use preferably the **msscanf** function
which is more efficient and is more compatible with the C **sscanf**
procedure.

The sscanf functions interpret character string according to a format,
and returns the converted results.

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

` **mprintf** `_,` **msscanf** `_,` **mfscanf** `_,

.. _
      : ://./fileio/mprintf.htm
.. _
      : ://./fileio/mfscanf.htm


