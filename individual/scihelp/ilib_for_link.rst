


ilib_for_link
=============

utility for shared library management with link



Calling Sequence
~~~~~~~~~~~~~~~~


::

    libn=ilib_for_link(names,files,libs,flag [,makename [,loadername [,libname [,ldflags [,cflags [,fflags [,cc]]]]]]])




Arguments
~~~~~~~~~

:names a string matrix giving the entry names which are to be linked.
: :files string matrix giving source files needed for shared library
  creation.
: :libs string matrix giving extra libraries needed for shared library
  creation
: :flag a string flag ("c" or "f") for C or Fortran entry points.
: :makename character string. The pathname of the Makefile file
  without extension (default value `''`). This parameter is useless
  since Scilab 5.0. A warning will be displayed in Scilab 5.3 if you use
  another value that the default.
: :loadername character string. The pathname of the loader file
  (default value is `loader.sce`).
: :libname optional character string. The name of the generated shared
  library (default value is "", and in this case the name is derived
  from `names(1)`).
: :ldflags optional character string. It can be used to add specific
  linker options in the generated Makefile. Default value is ""
: :cflags optional character string. It can be used to add specific C
  compiler options in the generated Makefile. Default value is ""
: :fflags optional character string. It can be used to add specific
  Fortran compiler options in the generated Makefile. Default value is
  ""
: :cc optional character string. It can be used to specify a C
  compiler. Default value is ""
: :libn character string. The path of the really generated shared
  library file.
:



Description
~~~~~~~~~~~

This tool is used to create shared libraries and to generate a loader
file which can be used to dynamically load the shared library into
Scilab with the `link` function. New entry points given by `names` are
then accessible through the `call` function or with non linear tools
`ode`, `optim`,...

The file to compile are supposed to be located given by `makename`. If
`makename` sets a path different to the current directory, `loader`
script must be located in the same directory using the `loadername`
variable.

Many examples are provided in `SCI/modules/dynamic_link/examples`
directory. They are all released into the public domain.

**Note that a compiler must be available on the system to use this
function.**

**Languages handle by this function are: C, C++, Fortran and Fortran
90.**

On the internal technical level, under GNU/Linux and Mac OS X, the
ilib_* function are based on the autotools. First, a configure is
executed to detect compilers available. Then, a make is launched with
the provided arguments. For more information: `Full technical
description of the incremental link / dynamic link`_

Since version 5.3.2, under GNU/Linux, Scilab detects where the
libstdc++ is located (thanks to the command gcc -print-search-
dirs|grep ^install:|awk '{print $2}' ). Previously, the dynamic link
was using the libstdc++ embedded in Scilab.



Examples (C code)
~~~~~~~~~~~~~~~~~


::

    if `haveacompiler`_() then
    
    `chdir`_(TMPDIR)
    f1=['int ext1c(int *n, double *a, double *b, double *c)'
        '{int k;'
        '  for (k = 0; k < *n; ++k) '
        '      c[k] = a[k] + b[k];'
        '  return(0);}'];
    
    `mputl`_(f1,'fun1.c')
    
    //creating the shared library (a gateway, a Makefile and a loader are
    //generated.
    
    ilib_for_link('ext1c','fun1.c',[],"c")
    
    // load the shared library
    
    `exec`_ loader.sce
    
    //using the new primitive
    a=[1,2,3];b=[4,5,6];n=3;
    c=`call`_('ext1c',n,1,'i',a,2,'d',b,3,'d','out',[1,3],4,'d');
    if `norm`_(c-(a+b)) > %eps then pause,end
    
    end




See Also
~~~~~~~~


+ `addinter`_ new functions interface dynamic link at run time.
+ `link`_ dynamic linker
+ `ilib_compile`_ ilib_build utility: executes the Makefile produced
  by ilib_gen_Make
+ `ilib_gen_Make`_ utility for ilib_build: produces a Makefile for
  building shared libraries
+ `ilib_gen_gateway`_ utility for ilib_build, generates a gateway
  file.
+ `ilib_gen_loader`_ utility for ilib_build: generates a loader file
+ `ilib_build`_ utility for shared library management
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory




History
~~~~~~~
Version Description 5.4.0 This function no more accepts files with
".o" or ".obj" extensions as source files.
.. _Full technical description of the incremental link / dynamic link: http://wiki.scilab.org/Full%20technical%20description%20of%20the%20incremental%20link
.. _ilib_compile: ilib_compile.html
.. _addinter: addinter.html
.. _link: link.html
.. _ilib_gen_loader: ilib_gen_loader.html
.. _api_scilab: api_scilab.html
.. _ilib_gen_Make: ilib_gen_Make.html
.. _ilib_build: ilib_build.html
.. _ilib_gen_gateway: ilib_gen_gateway.html


