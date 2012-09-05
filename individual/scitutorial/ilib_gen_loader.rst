


ilib_gen_loader
===============

utility for ilib_build: generates a loader file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ilib_gen_loader(name,table,[libs])




Arguments
~~~~~~~~~

:name a character string, the generic name of the library without path
  and extension.
: :table 2 column string matrix giving the table of pairs 'scilab-
  name' 'interface name'
: :libs a string matrix, externals dynamic libraries filenames to load
  by loader file (optional).
:



Description
~~~~~~~~~~~

Utility function used by `ilib_build` This function generates a loader
file.



See Also
~~~~~~~~


+ `addinter`_ new functions interface dynamic link at run time.
+ `link`_ dynamic linker
+ `ilib_build`_ utility for shared library management
+ `ilib_compile`_ ilib_build utility: executes the Makefile produced
  by ilib_gen_Make
+ `ilib_gen_Make`_ utility for ilib_build: produces a Makefile for
  building shared libraries
+ `ilib_gen_loader`_ utility for ilib_build: generates a loader file
+ `ilib_for_link`_ utility for shared library management with link
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory


.. _ilib_for_link: ilib_for_link.html
.. _ilib_compile: ilib_compile.html
.. _addinter: addinter.html
.. _link: link.html
.. _ilib_gen_loader: ilib_gen_loader.html
.. _api_scilab: api_scilab.html
.. _ilib_gen_Make: ilib_gen_Make.html
.. _ilib_build: ilib_build.html


