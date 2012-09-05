


ilib_mex_build
==============

utility for mex library management



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ilib_mex_build(lib_name,table,files,libs [,makename,ldflags,cflags,fflags,cc])




Arguments
~~~~~~~~~

:lib_name a character string, the generic name of the library without
  path and extension.
: :table 3 column string matrix giving the table of 'scilab-name',
  'interface name', 'cmex' or 'fmex'
: :files string matrix giving objects files needed for shared library
  creation
: :libs string matrix giving extra libraries needed for shared library
  creation
: :makename character string. The path of the Makefile file without
  extension. This parameter is useless since Scilab 5.0. Default value
  to use: []. A warning will be displayed in Scilab 5.3 if you use
  another value that the default.
: :ldflags,cflags,fflags,cc character strings to provide options/flags
  for the loader, the C compiler, the Fortran compiler. cc provides the
  name of the compiler.
:



Description
~~~~~~~~~~~

This function is used to create mex libraries and to generate a loader
file which can be used to dynamically load the mex shared library.

Note that the file name containing the mex code can be set in the
third input argument ( `files`) or the second value of the `table`
input argument.

**Note that a compiler must be available on the system to use this
function.**



Examples
~~~~~~~~


::

    `cd`_(TMPDIR);
    
    `mputl`_(['#include ""mex.h""'
           'void mexFunction(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[])'
           '{'
           '  int *dims = mxGetDimensions(prhs[0]);'
           '  sciprint(""%d %d %d\n"",dims[0],dims[1],dims[2]);'
           '}'],'mexfunction16.c');
    ilib_mex_build('libmex',['mexf16','mexfunction16','cmex'],[],[],'','','','');
    
    `exec`_(TMPDIR+'/loader.sce');
    mexf16(`rand`_(2,3,2));




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
.. _ilib_gen_gateway: ilib_gen_gateway.html


