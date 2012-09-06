


msprintf
========

converts, formats, and writes data in a string



sprintf
=======



Calling Sequence
~~~~~~~~~~~~~~~~


::

    str=msprintf(format,a1,...,an);




Arguments
~~~~~~~~~

:format a Scilab string describing the format to use to write the
  remaining operands.
: :str a character string.
: :a1,...,an Specifies the data to be converted and printed according
  to the format parameter.
:



Description
~~~~~~~~~~~

The `msprintf` writes formatted operands in its returned value (a
Scilab string). The argument operands are formatted under control of
the format operand.

Note that, in this case, the escape sequences ( `"\n"`) (in format)
split string to a matrix of string (see example)



Examples
~~~~~~~~


::

    `msprintf`_('%5.3f %5.3f',123,0.732)
    `msprintf`_('%5.3f\n%5.3f',123,0.732)
    `msprintf`_('--%s-\n-%d--',"hello",3)




See Also
~~~~~~~~


+ `mprintf`_ converts, formats, and writes data to the main scilab
  window
+ `printf_conversion`_ mprintf, msprintf, mfprintf conversion
  specifications


.. _mprintf: mprintf.html
.. _printf_conversion: printf_conversion.html


