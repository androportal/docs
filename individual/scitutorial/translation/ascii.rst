====
"ascii"
====

Scilab Function Last update : April 1998
**ascii** - string ascii conversions



Calling Sequence
~~~~~~~~~~~~~~~~

a=ascii(txt)
txt=ascii(a)




Parameters
~~~~~~~~~~


+ **txt** : character string or matrix of strings.
+ **a** : vector of integer ascii codes




Description
~~~~~~~~~~~

This function convert Scilab string to a vector of ascii code or
vector of ascii code to Scilab strings.

If **txt** is a matrix of string, **ascii(txt)** is equivalent to
**ascii(strcat(txt))**



See Also
~~~~~~~~

` **code2str** `_,` **str2code** `_,

.. _
      : ://./translation/../strings/str2code.htm
.. _
      : ://./translation/../strings/code2str.htm


