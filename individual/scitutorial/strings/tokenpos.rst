====
"tokenpos"
====

Scilab Function Last update : 2001
**tokenpos** - returns the tokens positions in a character string.



Calling Sequence
~~~~~~~~~~~~~~~~

kdf=tokenpos(str [,delimiter])




Parameters
~~~~~~~~~~


+ **str** : a character string. The string where to search the tokens.
+ **delimiter** : (optional) a character or a vector of characters.
  The tokens delimeters.
+ **kdf** : two columns matrix, first column gives the index of the
  beginning of the tokens, the second gives the index of the last
  character of the tokens.




Description
~~~~~~~~~~~

**kdf=tokenpos(str [,delimiter]) ** searches the tokens included in
the string **str** . The **delimiter** default value is [" ",<Tab>]
where <Tab> stands for **ascii(9)** . It returns the indices of the
first and last characters of each found tokens.



Examples
~~~~~~~~


::

    
    
    str='This is a character string';
    kdf=tokenpos(str)
    first=part(str,kdf(1,1):kdf(1,2))
     
      




See Also
~~~~~~~~

` **strindex** `_,` **tokens** `_,

.. _
      : ://./strings/strindex.htm
.. _
      : ://./strings/tokens.htm


