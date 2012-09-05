


lstcat
======

list concatenation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    lc=lstcat(l1,..ln)




Arguments
~~~~~~~~~

:li list or any other type of variable
: :lc a list
:



Description
~~~~~~~~~~~

`lc=lstcat(l1,..ln)` catenates components of `li` lists in a single
list. If the `li` are other type of variables they are simply added to
the resulting list.



Examples
~~~~~~~~


::

    lstcat(`list`_(1,2,3),33,`list`_('foo',%s))
    lstcat(1,2,3)




See Also
~~~~~~~~


+ `list`_ Scilab object and list function definition


.. _list: list.html


