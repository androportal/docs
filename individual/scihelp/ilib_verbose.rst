


ilib_verbose
============

set level of display used by dynamic link functions.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    level = ilib_verbose()
    ilib_verbose(level)




Arguments
~~~~~~~~~

:level : level of verbose for dynamic link functions. 0 : no message 1
  : default level (as previous version of scilab) 2 : maximum verbose
  level (configure , makefile, debug information, ...)
:



Description
~~~~~~~~~~~

"ilib_verbose" set level of display used by dynamic link functions.

All dynamic functions in dynamic link module check this value and
display or not some information.



Examples
~~~~~~~~


::

    if `haveacompiler`_() then
      cur_verbose = ilib_verbose();
      ilib_verbose(0);
    
      `chdir`_(TMPDIR);
      f1=['int ext1c(int *n, double *a, double *b, double *c)'
          '{int k;'
          '  for (k = 0; k < *n; ++k) '
          '      c[k] = a[k] + b[k];'
          '  return(0);}'];
    
      `mputl`_(f1,'fun1.c');
    
      `ilib_for_link`_('ext1c','fun1.c',[],"c");
      `exec`_ loader.sce;
    
      //using the new primitive
      a=[1,2,3];b=[4,5,6];n=3;
      c = `call`_('ext1c',n,1,'i',a,2,'d',b,3,'d','out',[1,3],4,'d');
      if `norm`_(c-(a+b)) > %eps then pause,end
    
      ilib_verbose(1);
    
      f2=['int ext2c(int *n, double *a, double *b, double *c)'
          '{int k;'
          '  for (k = 0; k < *n; ++k) '
          '      c[k] = a[k] + b[k];'
          '  return(0);}'];
    
      `mputl`_(f2,'fun2.c');
    
      `ilib_for_link`_('ext2c','fun2.c',[],"c") 
      `exec`_ loader.sce;
    
      //using the new primitive
      a = [1,2,3]; b = [4,5,6];n = 3;
      c = `call`_('ext2c',n,1,'i',a,2,'d',b,3,'d','out',[1,3],4,'d');
      if `norm`_(c-(a+b)) > %eps then pause,end
    
      ilib_verbose(cur_verbose);
    
    end




See Also
~~~~~~~~


+ `mode`_ select a mode in an exec-file
+ `link`_ dynamic linker
+ `ilib_compile`_ ilib_build utility: executes the Makefile produced
  by ilib_gen_Make
+ `ilib_build`_ utility for ilib_build: produces a Makefile for
  building shared libraries
+ `ilib_for_link`_ utility for shared library management with link
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory


.. _ilib_for_link: ilib_for_link.html
.. _ilib_compile: ilib_compile.html
.. _link: link.html
.. _api_scilab: api_scilab.html
.. _ilib_build: ilib_gen_Make.html
.. _mode: mode.html


