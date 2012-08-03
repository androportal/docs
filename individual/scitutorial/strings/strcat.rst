====
"strcat"
====

Scilab Function Last update : April 1993
**strcat** - catenate character strings



Calling Sequence
~~~~~~~~~~~~~~~~

txt=strcat(vstr [,strp])




Parameters
~~~~~~~~~~


+ **vstr** : vector of strings
+ **strp** : string, default value is the emptystr **""**
+ **txt** : string




Description
~~~~~~~~~~~

**txt=strcat(vstr)** catenates character strings :
**txt=vstr(1)+...+vstr(n)**

**txt=strcat(vstr,strp)** returns
**txt=strs(1)+strp+...+strp+strs(n)** . The plus symbol does the same:
**"a"+"b"** is the same as **strcat(["a","b"])**



Examples
~~~~~~~~


::

    
    
    strcat(string(1:10),',')
     
      




See Also
~~~~~~~~

` **string** `_,` **strings** `_,

.. _
      : ://./strings/strings.htm
.. _
      : ://./strings/string.htm


