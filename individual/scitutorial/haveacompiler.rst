


haveacompiler
=============

detect if you have a C compiler.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    bOK=haveacompiler()




Arguments
~~~~~~~~~

:bOK returns %T a C compiler has been found.
:



Description
~~~~~~~~~~~

Detect if a C compiler is available on the system.

Please note that due to the multi vendors aspect in the Unix world
(Mac OS X, Unix or various GNU/Linux distributions), this function
always returns True for these operating system.



Examples
~~~~~~~~


::

    bOK = haveacompiler();




See Also
~~~~~~~~


+ `supported compilers`_ supported and compatible compilers by Scilab
+ `findmsvccompiler`_ detects Microsoft C Compiler


.. _findmsvccompiler: findmsvccompiler.html
.. _supported compilers: supported_compilers.html


