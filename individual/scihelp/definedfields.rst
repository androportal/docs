


definedfields
=============

return index of list's defined fields



Calling Sequence
~~~~~~~~~~~~~~~~


::

    k=definedfields(l)




Arguments
~~~~~~~~~

:l a list , tlist or mlist variable.
: :k a vector of index.
:



Description
~~~~~~~~~~~

If `l` is a `list` `tlist` `mlist` `k=definedfields(l)` returns in `k`
the indices of the defined list fields. This function is useful
because indexing undefined fields produces an error.



Examples
~~~~~~~~


::

    l=`list`_(1);l(3)=5
    k=definedfields(l)
    
    t=`tlist`_('x');t(5)=4
    definedfields(t)
    
    m=`mlist`_(['m','a','b']);m.b='sdfgfgd'
    definedfields(m)




See Also
~~~~~~~~


+ `list`_ Scilab object and list function definition
+ `tlist`_ Scilab object and typed list definition.
+ `mlist`_ Scilab object, matrix oriented typed list definition.
+ `insertion`_ partial variable assignation or modification
+ `extraction`_ matrix and list entry extraction


.. _mlist: mlist.html
.. _list: list.html
.. _insertion: insertion.html
.. _extraction: extraction.html
.. _tlist: tlist.html


