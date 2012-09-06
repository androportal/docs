


tbx_build_src
=============

Build sources (toolbox compilation process)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    tbx_build_src(names, files, flag, [src_path [, libs [, ldflags [, cflags [, fflags [, cc [, libname [, loadername [, makename]]]]]]]]])




Arguments
~~~~~~~~~

:names a string matrix giving the entry names which are to be linked.
: :files string matrix giving objects files needed for shared library
  creation
: :flag a string flag ("c" or "f") for C or Fortran entry points.
: :src_path Path to the source files ; in a normal toolbox it should
  be the directory containing the builder_src_(lang).sce script (which
  should be the script calling this function). Default is current
  directory.
: :libs string matrix giving extra libraries needed for shared library
  creation
: :ldflags optional character string. It can be used to add specific
  linker options in the generated Makefile. Default value is ''
: :cflags optional character string. It can be used to add specific C
  compiler options in the generated Makefile. Default value is ''
: :fflags optional character string. It can be used to add specific
  Fortran compiler options in the generated Makefile. Default value is
  ''
: :cc optional character string. It can be used to specify a C
  compiler. Default value is ''
: :libname optional character string. The name of the generated shared
  library (default value is '', and in this case the name is derived
  from `names(1)`).
: :loadername character string. The pathname of the loader file
  (default value is `loader.sce`).
: :makename character string. The pathname of the Makefile file
  without extension. This parameter is useless since Scilab 5.0. Default
  value to use: []. A warning will be displayed in Scilab 5.3 if you use
  another value that the default.
:



Examples
~~~~~~~~


::

    // Recommended usage
    tbx_build_src(['csum','csub'], ['csum.c','csub.c'], 'c', ..
                  `get_absolute_file_path`_('builder_c.sce'));




See Also
~~~~~~~~


+ `ilib_for_link`_ utility for shared library management with link


.. _ilib_for_link: ilib_for_link.html


