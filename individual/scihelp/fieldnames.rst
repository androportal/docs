


fieldnames
==========

get a tlist, mlist or struct fields names



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = fieldnames(lst)




Arguments
~~~~~~~~~

:lst A tlist, mlist or struct variable.
: :f Strings column vector of fields names.
:



Description
~~~~~~~~~~~

The `fieldnames` function returns field names of a tlist, mlist or
struct. `fieldnames` does not work on cells.



Examples
~~~~~~~~


::

    fieldnames(`tlist`_(['listtype', 'f1', 'f2'], [], []))
    fieldnames(`mlist`_(['V', 'key', 'value'], ['a' 'b' ; 'c' 'd'], [1 2 ; 3 4]))
    fieldnames(`struct`_('f1', 25, 'month', 'DEC', 'year', 2006))
    obj.x = 3;
    obj.y = 3;
    fieldnames(obj)




See Also
~~~~~~~~


+ `extraction`_ matrix and list entry extraction
+ `getfield`_ list field extraction
+ `tlist`_ Scilab object and typed list definition.
+ `mlist`_ Scilab object, matrix oriented typed list definition.
+ `struct`_ create a struct


.. _mlist: mlist.html
.. _getfield: getfield.html
.. _extraction: extraction.html
.. _struct: struct.html
.. _tlist: tlist.html


