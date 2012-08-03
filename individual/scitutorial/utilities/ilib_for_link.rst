====
"ilib_for_link"
====

Scilab Function Last update : 29/06/2005
**ilib_for_link** - utility for shared library management with link



Calling Sequence
~~~~~~~~~~~~~~~~

libn=ilib_for_link(names,files,libs,flag [,makename [,loadername
  [,libname [,ldflags [,cflags [,fflags [,cc]]]]]]])




Parameters
~~~~~~~~~~


+ **names** : a string matrix giving the entry names which are to be
  linked.
+ **files** : string matrix giving objects files needed for shared
  library creation
+ **libs** : string matrix giving extra libraries needed for shred
  library creation
+ **flag** : a string flag ("c" or "f") for C or Fortran entry points.
+ **makename** : character string. The pathname of the Makefile file
  without extension (default value **Makelib** ).
+ **loadername** : character string. The pathname of the loader file
  (default value is **loader.sce** ).
+ **libname** : optional character string. The name of the generated
  shared library (default value is '', and in this case the name is
  derived from **names(1)** ).
+ **ldflags** : optional character string. It can be used to add
  specific linker options in the generated Makefile. Default value is ''
+ **cflags** : optional character string. It can be used to add
  specific C compiler options in the generated Makefile. Default value
  is ''
+ **fflags** : optional character string. It can be used to add
  specific Fortran compiler options in the generated Makefile. Default
  value is ''
+ **cc** : optional character string. It can be used to specify a C
  compiler. Default value is ''
+ **libn** : character string. The path of the really generated shared
  library file.




Description
~~~~~~~~~~~

This tool is used to create shared libraries and to generate a loader
file which can be used to dynamically load the shared library into
Scilab with the **link** function. New entry points given by **names**
are then accessible through the **call** function or with non linear
tools **ode** , **optim** ,...

The file to compile are supposed to be located given by **makename** .
If **makename** sets a path different to the current directory,
**loader** script must be located in the same directory using the
**loadername** variable.

Many examples are provided in **examples/link-examples-so** directory.



Examples
~~~~~~~~


::

    
    
    
    f1=['int ext1c(n, a, b, c)'
        'int *n;     double *a, *b, *c;'
        '{int k;'
        '  for (k = 0; k < *n; ++k) '
        '      c[k] = a[k] + b[k];'
        '  return(0);}'];
    
    mputl(f1,'fun1.c')
    
    //creating the shared library (a gateway, a Makefile and a loader are 
    //generated. 
    
    ilib_for_link('ext1c','fun1.o',[],"c") 
    
    // load the shared library 
    
    exec loader.sce 
    
    //using the new primitive
    a=[1,2,3];b=[4,5,6];n=3;
    c=call('ext1c',n,1,'i',a,2,'d',b,3,'d','out',[1,3],4,'d');
    if norm(c-(a+b)) > %eps then pause,end
    
     
      




See Also
~~~~~~~~

` **addinter** `_,` **link** `_,` **ilib_compile** `_,`
**ilib_gen_Make** `_,` **ilib_gen_gateway** `_,` **ilib_gen_loader**
`_,` **ilib_for_link** `_,

.. _
      : ://./utilities/../functions/addinter.htm
.. _
      : ://./utilities/link.htm
.. _
      : ://./utilities/ilib_compile.htm
.. _
      : ://./utilities/ilib_for_link.htm
.. _
      : ://./utilities/ilib_gen_Make.htm
.. _
      : ://./utilities/ilib_gen_gateway.htm
.. _
      : ://./utilities/ilib_gen_loader.htm


