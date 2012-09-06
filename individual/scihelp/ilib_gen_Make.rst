


ilib_gen_Make
=============

utility for ilib_build: produces a Makefile for building shared
libraries



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Makename=ilib_gen_Make(name,files,libs,makename [,with_gateway,ldflags,cflags,fflags,cc])




Arguments
~~~~~~~~~

:lib_name a character string, the generic name of the library without
  path and extension.
: :files a vector of character string. The names of the C or Fortran
  files without the extension and the path part.
: :libs a vector of character string. additionnal libraries paths or
  [].
: :makename character string. The path of the Makefile file. This
  parameter is useless since Scilab 5.0. A warning will be displayed in
  Scilab 5.3 if you use another value that the default.
: :with_gateway a boolean. If true a file with name <lib_name>_gateway
  is added. Default value is %t
: :ldflags a string. It can be used to add specific linker options in
  the generated Makefile. Default value is ""
: :cflags a string. It can be used to add specific C compiler options
  in the generated Makefile. Default value is ""
: :fflags a string. It can be used to add specific Fortran compiler
  options in the generated Makefile. Default value is ""
: :cc a string. The name of the C compiler. Default value is the C
  compiler detected on the host.
:



Description
~~~~~~~~~~~

Utility function used by `ilib_build`

This function generates a Makefile adapted to the Operating System for
building shared libraries to be loaded in Scilab. Proper options and
paths are set.

Shared libraries can then be used with the `link` and `addinter`
scilab function for incremental/dynamic linking.

The shared library is build from a set of C or Fortran routines stored
in a directory and if required from a set of external libraries.

Files are not required to exist, when Makefile is generated, but of
course are required for executing the Makefile.

**Only use this function is you know what you are doing (it is a semi-
private function).**



See Also
~~~~~~~~


+ `addinter`_ new functions interface dynamic link at run time.
+ `link`_ dynamic linker
+ `ilib_build`_ utility for shared library management
+ `ilib_compile`_ ilib_build utility: executes the Makefile produced
  by ilib_gen_Make
+ `ilib_gen_gateway`_ utility for ilib_build, generates a gateway
  file.
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
.. _ilib_build: ilib_build.html
.. _ilib_gen_gateway: ilib_gen_gateway.html


