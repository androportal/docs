


ilib_compile
============

ilib_build utility: executes the Makefile produced by ilib_gen_Make



Calling Sequence
~~~~~~~~~~~~~~~~


::

    libn=ilib_compile(lib_name,makename [,files,ldflags,cflags,fflags,cc])




Arguments
~~~~~~~~~

:lib_name a character string, the generic name of the library without
  path and extension.
: :makename character string. The path of the Makefile file without
  extension.
: :files optional vector of character strings. If files is given the
  make is performed on each target contained in files then a whole make
  is performed
: :libn character string. The path of the actual generated shared
  library file.
: :ldflags,cflags,fflags,cc character strings to provide options/flags
  for the loader, the C compiler, the Fortran compiler. cc provides the
  name of the compiler.
:



Description
~~~~~~~~~~~

Utility function used by `ilib_build`

This executes the Makefile produced by `ilib_gen_Make`, compiles the C
and fortran files and generates the shared library.

Shared libraries can then be used with the `link` and `addinter`
Scilab function for incremental/dynamic link.

**Note that a compiler must be available on the system to use this
function.**

On the internal technical level, under GNU/Linux and Mac OS X, the
ilib_* function are based on the autotools. First, a configure is
executed to detect compilers available. Then, a make is launched with
the provided arguments. For more information: `Full technical
description of the incremental link / dynamic link`_

Since version 5.3.2, under GNU/Linux, Scilab detects where the
libstdc++ is located (thanks to the command gcc -print-search-
dirs|grep ^install:|awk '{print $2}' ). Previously, the dynamic link
was using the libstdc++ embedded in Scilab.



See Also
~~~~~~~~


+ `addinter`_ new functions interface dynamic link at run time.
+ `link`_ dynamic linker
+ `ilib_build`_ utility for shared library management
+ `ilib_gen_Make`_ utility for ilib_build: produces a Makefile for
  building shared libraries
+ `ilib_gen_gateway`_ utility for ilib_build, generates a gateway
  file.
+ `ilib_gen_loader`_ utility for ilib_build: generates a loader file
+ `ilib_for_link`_ utility for shared library management with link
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory


.. _Full technical description of the incremental link / dynamic link: http://wiki.scilab.org/Full%20technical%20description%20of%20the%20incremental%20link
.. _ilib_for_link: ilib_for_link.html
.. _addinter: addinter.html
.. _link: link.html
.. _ilib_gen_loader: ilib_gen_loader.html
.. _api_scilab: api_scilab.html
.. _ilib_gen_Make: ilib_gen_Make.html
.. _ilib_build: ilib_build.html
.. _ilib_gen_gateway: ilib_gen_gateway.html


