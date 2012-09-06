


tbx_build_gateway
=================

Build a gateway (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_build_gateway(libname, names, files, [gateway_path [, libs [, ldflags [, cflags [, fflags [, cc [, makename [, ismex]]]]]]]])




Arguments
~~~~~~~~~

:libname a character string, the generic name of the library without
  path and extension.
: :names 2 column string matrix giving the table of pairs 'scilab-
  name', 'interface name'
: :files string matrix giving objects files needed for shared library
  creation
: :gateway_path Path to the sources of the gateway ; in a normal
  toolbox it should be the directory containing the
  builder_gateway_(lang).sce script (which should be the script calling
  this function). Default is current directory.
: :libs string matrix giving extra libraries needed for shared library
  creation
: :ldflags,cflags,fflags character strings to provide options for the
  loader, the C compiler and the Fortran compiler.
: :cc character string. The name of or path to the compiler.
: :makename character string. The path of the Makefile file without
  extension. This parameter is useless since Scilab 5.0. Default value
  to use: []. A warning will be displayed in Scilab 5.3 if you use
  another value that the default.
: :ismex Internal variable to specify if we are working with mex or
  not.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_build_gateway('mytoolbox', ['c_sum','sci_csum';'c_sub','sci_csub'], ['sci_csum.c','sci_csub.c'], ..
                      `get_absolute_file_path`_('builder_gateway_c.sce'), ..
                      ['../../src/c/libcsum']);




See Also
~~~~~~~~


+ `ilib_build`_ utility for shared library management


.. _ilib_build: ilib_build.html


