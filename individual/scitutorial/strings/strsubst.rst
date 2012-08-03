====
"strsubst"
====

Scilab Function Last update : April 1993
**strsubst** - substitute a character string by another in a character
string.



Calling Sequence
~~~~~~~~~~~~~~~~

str=strsubst(str1,str2,str3)




Parameters
~~~~~~~~~~


+ **str1** : a matrix of character string. The strings where to search
  occurrences of **str2**
+ **str2** : a character string. The string to search in **str1** .
+ **str3** : a character string. The replacement string.
+ **str** : a matrix of character string. The result of the
  substitution on **str2** by **str3** in **str1**




Description
~~~~~~~~~~~

**strsubst** replaces all occurrences of **str2** in **str1** by
**str3** .



Examples
~~~~~~~~


::

    
    
    strsubst('SCI/demos/scicos','SCI','.')
    strsubst('SCI/demos/scicos','/',' ')
     
      




See Also
~~~~~~~~

` **string** `_,` **strings** `_,

.. _
      : ://./strings/strings.htm
.. _
      : ://./strings/string.htm


