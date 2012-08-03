====
"part"
====

Scilab Function Last update : April 1993
**part** - extraction of strings



Calling Sequence
~~~~~~~~~~~~~~~~

[c]=part(mp,v)




Parameters
~~~~~~~~~~


+ **mp,c** : string matrices
+ **v** : integer vector.




Description
~~~~~~~~~~~

Let **s[k]** stands for the **k** character of string **s** ( or the
white space character if **k >length(s)** ).

**part** returns **c** , a matrix of character strings, such that
**c(i,j)** is the string **"s[v(1)]...s[v(n)]"** ( **s=mp(i,j)** ).



Examples
~~~~~~~~


::

    
    
    c=part(['a','abc','abcd'],[1,1,2])
     
      




See Also
~~~~~~~~

` **string** `_,` **length** `_,

.. _
      : ://./strings/length.htm
.. _
      : ://./strings/string.htm


