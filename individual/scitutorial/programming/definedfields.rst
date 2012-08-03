====
"definedfields"
====

Scilab Function Last update : 2003
**definedfields** - return index of list's defined fields



Calling Sequence
~~~~~~~~~~~~~~~~

k=definedfields(l)




Parameters
~~~~~~~~~~


+ **l** : a list , tlist or mlist variable.
+ **k** : a vector of index.




Description
~~~~~~~~~~~

If **l** is a **list** **tlist** **mlist** **k=definedfields(l)**
returns in **k** the indices of the defined list fields. This function
is useful because indexing undefined fields produces an error.



Examples
~~~~~~~~


::

    
    
    l=list(1);l(3)=5 
    k=definedfields(l)
    
    t=tlist('x');t(5)=4
    definedfields(t)
    
    m=mlist(['m','a','b']);m.b='sdfgfgd' 
    definedfields(m)  
     
      




See Also
~~~~~~~~

` **list** `_,` **tlist** `_,` **mlist** `_,` **insertion** `_,`
**extraction** `_,

.. _
      : ://./programming/mlist.htm
.. _
      : ://./programming/list.htm
.. _
      : ://./programming/insertion.htm
.. _
      : ://./programming/extraction.htm
.. _
      : ://./programming/tlist.htm


