====
"ilib_compile"
====

Scilab Function Last update : 26/05/2005
**ilib_compile** - ilib_build utility: executes the makefile produced
by ilib_gen_Make



Calling Sequence
~~~~~~~~~~~~~~~~

libn=ilib_compile(lib_name,makename [,files])




Parameters
~~~~~~~~~~


+ **lib_name** : a character string, the generic name of the library
  without path and extension.
+ **makename** : character string. The path of the Makefile file
  without extension.
+ **files** : optionnal vector of character strings. If files is given
  the make is performed on each target contained in files then a whole
  make is performed
+ **libn** : character string. The path of the really generated shared
  library file.




Description
~~~~~~~~~~~

Utility function used by **ilib_build**

This executes the makefile produced by **ilib_gen_Make** , compiles
the C and fortran files and generates the shared library.

Shared libraries can then be used with the **link** and **addinter**
scilab function for incremental linking.



See Also
~~~~~~~~

` **addinter** `_,` **link** `_,` **ilib_build** `_,`
**ilib_gen_Make** `_,` **ilib_gen_gateway** `_,` **ilib_gen_loader**
`_,` **ilib_for_link** `_,

.. _
      : ://./utilities/../functions/addinter.htm
.. _
      : ://./utilities/link.htm
.. _
      : ://./utilities/ilib_build.htm
.. _
      : ://./utilities/ilib_for_link.htm
.. _
      : ://./utilities/ilib_gen_Make.htm
.. _
      : ://./utilities/ilib_gen_gateway.htm
.. _
      : ://./utilities/ilib_gen_loader.htm


