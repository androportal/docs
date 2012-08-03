====
"sprintf"
====

Scilab Function Last update : May 1994
**sprintf** - Emulator of C language sprintf function



Calling Sequence
~~~~~~~~~~~~~~~~

str=sprintf(format,value_1,..,value_n)




Parameters
~~~~~~~~~~


+ **format** : a Scilab string. Specifies a character string combining
  literal characters with conversion specifications.
+ **value_i** : Specifies the data to be converted according to the
  format parameter.
+ **str** : column vector of character strings




Description
~~~~~~~~~~~

The **sprintf** function converts, formats, and stores its **value**
parameters, under control of the **format** parameter.

The **format** parameter is a character string that contains two types
of objects:

**Literal characters**: which are copied to the output stream.
**Conversion specifications**: each of which causes zero or more items
  to be fetched from the **value** parameter list. see
  **printf_conversion** for details


If there are not enough items for **format** in the **value**
parameter list, **sprintf** generate an error. If any **value** s
remain after the entire **format** has been processed, they are
ignored.

Note: **sprintf** is obsolete, use **msprintf** instead.



Examples
~~~~~~~~


::

    
    
    fahr=120
    sprintf('%3d Fahrenheit = %6.1f Celsius',fahr,(5/9)*(fahr-32)) 
    
     
      




See Also
~~~~~~~~

` **string** `_,` **print** `_,` **write** `_,` **format** `_,`
**disp** `_,` **file** `_,` **printf** `_,` **fprintf** `_,`
**msprintf** `_,

.. _
      : ://./fileio/../programming/format.htm
.. _
      : ://./fileio/printf.htm
.. _
      : ://./fileio/print.htm
.. _
      : ://./fileio/mprintf.htm
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


