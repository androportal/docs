====
"lstcat"
====

Scilab Function Last update : Jan 1997
**lstcat** - list concatenation



Calling Sequence
~~~~~~~~~~~~~~~~

lc=lstcat(l1,..ln)




Parameters
~~~~~~~~~~


+ **li** : list or any other type of variable
+ **lc** : a list




Description
~~~~~~~~~~~

**lc=lstcat(l1,..ln)** catenates components of **li** lists in a
single list. If the **li** are other type of variables they are simply
added to the resulting list.



Examples
~~~~~~~~


::

    
    
    lstcat(list(1,2,3),33,list('foo',%s))
    lstcat(1,2,3)
     
      




See Also
~~~~~~~~

` **list** `_,

.. _
      : ://./programming/list.htm


