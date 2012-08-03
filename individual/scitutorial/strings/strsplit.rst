====
"strsplit"
====

Scilab Function Last update : 01/02/2006
**strsplit** - split a string into a vector of strings



Calling Sequence
~~~~~~~~~~~~~~~~

v = strsplit(str,ind)




Parameters
~~~~~~~~~~


+ **str** : a string
+ **ind** : a vector of stricly increasing indices in the interval
  **[1 length(str)-1] ** .
+ **v** : the resulting column vector of strings (dimension
  **size(ind,'*')+1 ** ).




Description
~~~~~~~~~~~
**v = strsplit(str,ind)** splits the string **str** into a vector of
strings at the points given by the indices in **ind** (after each
characters pointed to by the index in ind).


Examples
~~~~~~~~


::

    
        S='strsplit splits a string into a vector of strings';
        strsplit(S,[15 25 30])
        ind=strindex(S,' ')
      




See Also
~~~~~~~~

` ** strcat** `_,` ** tokens** `_,



Authors
~~~~~~~

**S. Steer** INRIA


.. _
      : ://./strings/tokens.htm
.. _
      : ://./strings/strcat.htm


