====
"printf"
====

Scilab Function Last update : May 1994
**printf** - Emulator of C language printf function



Calling Sequence
~~~~~~~~~~~~~~~~

printf(format,value_1,..,value_n)




Parameters
~~~~~~~~~~


+ **format** : a Scilab string. Specifies a character string combining
  literal characters with conversion specifications.
+ **value_i** : Specifies the data to be converted according to the
  format parameter.
+ **str** : column vector of character strings
+ **file** : a Scilab string specifying a file name or a logical unit
  number (see **file** )




Description
~~~~~~~~~~~

The **printf** function converts, formats, and writes its **value**
parameters, under control of the **format** parameter, to the standard
output.

The **format** parameter is a character string that contains two types
of objects:

**Literal characters**: which are copied to the output stream.
**Conversion specifications**: each of which causes zero or more items
  to be fetched from the **value** parameter list. see
  **printf_conversion** for details


If any **value** s remain after the entire **format** has been
processed, they are ignored.



Examples
~~~~~~~~


::

    
    
    printf('Result is:\nalpha=%f",0.535)
     
      




See Also
~~~~~~~~

` **string** `_,` **print** `_,` **write** `_,` **format** `_,`
**disp** `_,` **file** `_,` **fprintf** `_,` **sprintf** `_,

.. _
      : ://./fileio/../programming/format.htm
.. _
      : ://./fileio/sprintf.htm
.. _
      : ://./fileio/print.htm
.. _
      : ://./fileio/file.htm
.. _
      : ://./fileio/fprintf.htm
.. _
      : ://./fileio/../strings/string.htm
.. _
      : ://./fileio/disp.htm
.. _
      : ://./fileio/write.htm


