====
"excel2sci"
====

Scilab Function Last update : April 1993
**excel2sci** - reads ascii Excel files



Calling Sequence
~~~~~~~~~~~~~~~~

M=excel2sci(fname [,sep])




Parameters
~~~~~~~~~~


+ **fname** : character string. The file path
+ **sep** : character string. Excel separator used, default value is
  ","
+ **M** : matrix of strings




Description
~~~~~~~~~~~

Given an ascii file created by Excel using "Text and comma" format
**exel2sci(fname)** returns the corresponding Scilab matrix of
strings. Use **exel2sci(fname,sep )** for an other choice of
separator.

Note: You may eval all or part ot **M** using function **evstr** .



See Also
~~~~~~~~

` **read** `_,` **evstr** `_,

.. _
      : ://./translation/../fileio/read.htm
.. _
      : ://./translation/../programming/evstr.htm


