


ilib_gen_gateway
================

utility for ilib_build, generates a gateway file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    ilib_gen_gateway(name,table)




Arguments
~~~~~~~~~

:name a character string, the generic name of the library without path
  and extension.
: :table 2 column string matrix giving the table of pairs 'scilab-
  name' 'interface name'
:



Description
~~~~~~~~~~~

Utility function used by `ilib_build` This function generates a
gateway file used by `addinter`.

if WITHOUT_AUTO_PUTLHSVAR variable is defined and equals to %t,
PutLhsVar(); will need to manage PutLhsVar in each interface as
internal scilab functions.

In another case (default, for compatibility with previous version) ,
PutLhsVar(); is added in each interface.

You can also see
SCI/contrib/toolbox_skeleton/sci_gateway/c/builder_gateway_c.sce (as
example about WITHOUT_AUTO_PUTLHSVAR)



Example about WITHOUT_AUTO_PUTLHSVAR = %t
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    `cd`_ TMPDIR
    WITHOUT_AUTO_PUTLHSVAR = %t;
    name = 'gw_example1';
    table = ['sci_func1', 'func1']
    ilib_gen_gateway(name,table)
    
    // generated gateway
    `mgetl`_(TMPDIR+'/gw_example1.c')



::

    `int`_ sci_func1(char *fname)
    {
      // ... your C code
      // you need to add a explicit PutLhsVar();
      // as internal all gateways of scilab
      
      PutLhsVar();
      return 0;
    }




Example about WITHOUT_AUTO_PUTLHSVAR = %f (default)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


::

    `cd`_ TMPDIR
    WITHOUT_AUTO_PUTLHSVAR = %f;
    name = 'gw_example2';
    table = ['sci_func2', 'func2']
    ilib_gen_gateway(name,table)
    
    // generated gateway
    `mgetl`_(TMPDIR+'/gw_example2.c')



::

    `int`_ sci_func2(char *fname)
    {
      // ... your code
      // you do NOT need to add a explicit PutLhsVar();
      // added by scilab after call to sci_func2
      // default mode in scilab 4
    
      return 0;
    }




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


