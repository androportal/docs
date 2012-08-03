====
"ilib_gen_Make"
====

Scilab Function Last update : 26/05/2005
**ilib_gen_Make** - utility for **ilib_build** : produces a makefile
for building shared libraries



Calling Sequence
~~~~~~~~~~~~~~~~

Makename=ilib_gen_Make(name,files,libs,makename
  [,with_gateway,ldflags,cflags,fflags])




Parameters
~~~~~~~~~~


+ **lib_name** : a character string, the generic name of the library
  without path and extension.
+ **files** : a vector of character string. The names of the C or
  Fortran files without the extension and the path part.
+ **libs** : a vector of character string. additionnal libraries paths
  or [].
+ **makename** : character string. The path of the Makefile file.
+ **with_gateway** : a boolean. If true a file with name
  <lib_name>_gateway is added. Default value is %t
+ **ldflags** : a string. It can be used to add specific linker
  options in the generated Makefile. Default value is ''
+ **cflags** : a string. It can be used to add specific C compiler
  options in the generated Makefile. Default value is ''
+ **fflags** : a string. It can be used to add specific Fortran
  compiler options in the generated Makefile. Default value is ''
+ **Makename** : character string. The path of the really generated
  Makefile file.




Description
~~~~~~~~~~~

Utility function used by **ilib_build**

This function generates a makefile adapted to the Operating System for
building shared libraries to be loaded in Scilab. Proper options and
paths are set.

Shared libraries can then be used with the **link** and **addinter**
scilab function for incremental linking.

The shared library is build from a set of C or Fortran routines stored
in a directory and if required from a set of external libraries.

Files are not required to exist, when makefile is generated, but of
course are required for executing the makefile.



See Also
~~~~~~~~

` **addinter** `_,` **link** `_,` **ilib_build** `_,` **ilib_compile**
`_,` **ilib_gen_gateway** `_,` **ilib_gen_loader** `_,`
**ilib_for_link** `_,

.. _
      : ://./utilities/../functions/addinter.htm
.. _
      : ://./utilities/link.htm
.. _
      : ://./utilities/ilib_build.htm
.. _
      : ://./utilities/ilib_compile.htm
.. _
      : ://./utilities/ilib_for_link.htm
.. _
      : ://./utilities/ilib_gen_gateway.htm
.. _
      : ://./utilities/ilib_gen_loader.htm


