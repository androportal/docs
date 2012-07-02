Scilab Function

Last update : 2003

**definedfields** - return index of list's defined fields

Calling Sequence
~~~~~~~~~~~~~~~~

``k=definedfields(l)    ``

Parameters
~~~~~~~~~~

-  ``           l         ``: a list , tlist or mlist variable.
-  ``           k         ``: a vector of index.

Description
~~~~~~~~~~~

If ``         l       `` is a ``         list       ``
``         tlist       `` ``         mlist       ``
``         k=definedfields(l)       `` returns in ``         k       ``
the indices of the defined list fields. This function is useful because
indexing undefined fields produces an error.

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

```           list         `` <list.htm>`_,
```           tlist         `` <tlist.htm>`_,
```           mlist         `` <mlist.htm>`_,
```           insertion         `` <insertion.htm>`_,
```           extraction         `` <extraction.htm>`_,
