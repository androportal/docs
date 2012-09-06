


lstsize
=======

list, tlist, mlist numbers of entries



Calling Sequence
~~~~~~~~~~~~~~~~


::

    n=lstsize(l)




Arguments
~~~~~~~~~

:l a list, tlist or mlist object
: :n an integer, the number of entries
:



Description
~~~~~~~~~~~

`lstsize(l)` returns the number of entries for list, list, mlist
objects. This function is more efficient than the `size` function and
works similarily with all list types while `size` is overloaded for
`mlist` objects.



Examples
~~~~~~~~


::

    lstsize(`list`_(1,'aqsdf'))
    x=`ssrand`_(3,2,4);
    [ny,nu]=`size`_(x)
    lstsize(x)




See Also
~~~~~~~~


+ `length`_ length of object
+ `size`_ size of objects
+ `list`_ Scilab object and list function definition
+ `tlist`_ Scilab object and typed list definition.
+ `mlist`_ Scilab object, matrix oriented typed list definition.


.. _mlist: mlist.html
.. _size: size.html
.. _length: length.html
.. _list: list.html
.. _tlist: tlist.html


