====
"ilib_gen_gateway"
====

Scilab Function Last update : 20/12/2004
**ilib_gen_gateway** - utility for **ilib_build** , generates a
gateway file.



Calling Sequence
~~~~~~~~~~~~~~~~

ilib_gen_gateway(name,table)




Parameters
~~~~~~~~~~


+ **name** : a character string, the generic name of the library
  without path and extension.
+ **table** : 2 column string matrix giving the table of pairs
  'scilab-name' 'interface name'




Description
~~~~~~~~~~~

Utility function used by **ilib_build** This function generates a
gateway file used by **addinter** .



See Also
~~~~~~~~

` **addinter** `_,` **link** `_,` **ilib_build** `_,` **ilib_compile**
`_,` **ilib_gen_Make** `_,` **ilib_gen_loader** `_,` **ilib_for_link**
`_,

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
      : ://./utilities/ilib_gen_Make.htm
.. _
      : ://./utilities/ilib_gen_loader.htm


