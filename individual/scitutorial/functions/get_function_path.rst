====
"get_function_path"
====

Scilab Function Last update : May 2000
**get_function_path** - get source file path of a library function



Calling Sequence
~~~~~~~~~~~~~~~~

path=get_function_path(fun_name)




Parameters
~~~~~~~~~~


+ **fun_name** : a string, the name of the function
+ **path** : a string, the absolute pathname of the function source
  file (.sci) or [].




Description
~~~~~~~~~~~

Given the name of a function get_function_path returns the absolute
pathname of the function source file if the function is defined in a
Scilab library (see lib) or [] if name does not match any library
function.



Examples
~~~~~~~~


::

    
    
    get_function_path('median')
     
      




See Also
~~~~~~~~

` **lib** `_,` **string** `_,

.. _
      : ://./functions/lib.htm
.. _
      : ://./functions/../strings/string.htm


