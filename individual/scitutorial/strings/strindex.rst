====
"strindex"
====

Scilab Function Last update : 27/08/2004
**strindex** - search position of a character string in an other
string.



Calling Sequence
~~~~~~~~~~~~~~~~

ind=strindex(str1,str2)
[ind,which]=strindex(str1,str2)




Parameters
~~~~~~~~~~


+ **str1** : a character string. The string where to search
  occurrences of **str2**
+ **str2** : a character string or character string vector . The
  string(s) to search in **str1**
+ **ind** : vector of indexes
+ **which** : vector of indexes




Description
~~~~~~~~~~~

**strindex** searches indexes where **str2(i)** is found in **str1**

for each **k** it exist a **i** shuch that
**part(str1,ind(k)+(0:length(str2(i))-1))** is the same string than
**str2(i)** . If **which** argument is required it contains these
**i** .



Examples
~~~~~~~~


::

    
    
    k=strindex('SCI/demos/scicos','/')
    k=strindex('SCI/demos/scicos','SCI/')
    k=strindex('SCI/demos/scicos','!')
    k=strindex('aaaaa','aa') 
    k=strindex('SCI/demos/scicos',['SCI','sci'])
    [k,w]=strindex('1+3*abc/2.33',['+','-','*','/'])
     
      




See Also
~~~~~~~~

` **string** `_,` **strings** `_,

.. _
      : ://./strings/strings.htm
.. _
      : ://./strings/string.htm


