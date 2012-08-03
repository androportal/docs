====
"lstsize"
====

Scilab Function Last update : 2002
**lstsize** - list, tlist, mlist numbers of entries



Calling Sequence
~~~~~~~~~~~~~~~~

n=lstsize(x)




Parameters
~~~~~~~~~~


+ **l** : a list, tlist or mlist object
+ **n** : an integer, the number of entries




Description
~~~~~~~~~~~

**lstsize(x)** returns the number of entries for list, list, mlist
objects. This function is more efficient than the **size** function
and works similarily with all list types while **size** is overloaded
for **mlist** objects.



Examples
~~~~~~~~


::

    
    
    lstsize(list(1,'aqsdf'))
    x=ssrand(3,2,4);
    [ny,nu]=size(x)
    lstsize(x)
     
      




See Also
~~~~~~~~

` **length** `_,` **size** `_,` **list** `_,` **tlist** `_,` **mlist**
`_,

.. _
      : ://./elementary/../programming/list.htm
.. _
      : ://./elementary/size.htm
.. _
      : ://./elementary/../programming/mlist.htm
.. _
      : ://./elementary/../strings/length.htm
.. _
      : ://./elementary/../programming/tlist.htm


