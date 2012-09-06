


ascii
=====

string ascii conversions



Calling Sequence
~~~~~~~~~~~~~~~~


::

    a=ascii(txt)
    txt=ascii(a)




Arguments
~~~~~~~~~

:txt A character string or a matrix of character strings.
: :a A vector of integer ascii codes
:



Description
~~~~~~~~~~~

This function convert Scilab string to a vector of ascii code (the
first 127 codes are ASCII) or vector of ascii code to Scilab strings.

If `txt` is a matrix of string, `ascii(txt)` is equivalent to
`ascii(strcat(txt))`



Examples
~~~~~~~~


::

    ascii(["hello";"world"])
    ascii("scilab")
    ascii([115 99 105 108 97 98])




See Also
~~~~~~~~


+ `code2str`_ returns character string associated with Scilab integer
  codes. This function is obsolete.
+ `str2code`_ return scilab integer codes associated with a character
  string. This function is obsolete.


.. _code2str: code2str.html
.. _str2code: str2code.html


