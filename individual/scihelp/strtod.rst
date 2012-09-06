


strtod
======

Convert string to double.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    d =  strtod(str)
    [d,endstr] = strtod(str)




Arguments
~~~~~~~~~

:str A character string or matrix of character strings
: :d A real or matrix of reals
: :endstr A character string or matrix of character strings (next
  character in str after the numerical value).
:



Description
~~~~~~~~~~~

`[d,endstr] = strtod(str)` Parses strings str interpreting its content
as a floating point number and returns its value as a real.



Examples
~~~~~~~~


::

    strtod('123.556This is a sample real')
    [d,endstr] = strtod('123.556This is a sample real')
    strtod(['123.556This is a sample real','888.666 here'])
    [d,endstr] =strtod(['123.556This is a sample real','888.666 here'])




