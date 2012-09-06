


whos
====

listing of variables in long form



Calling Sequence
~~~~~~~~~~~~~~~~


::

    whos()
    whos -type typ
    whos -name nam




Arguments
~~~~~~~~~

:typ a name of selected variable type (see `typeof`_)
: :nam first characters of selected names
:



Description
~~~~~~~~~~~

`whos()` displays all current variable names sorted by name (case
insensitive), types and memory used.

`whos -type typ` displays all current variables with specified type.

`whos -name nam` displays all current variables whose names begin with
`nam`.

Note : If a variable is global, a * appears after his type name.



Examples
~~~~~~~~


::

    `lines`_(0) 
    whos()
    whos -type boolean
    whos -name %




See Also
~~~~~~~~


+ `who`_ listing of variables
+ `who_user`_ listing of user's variables
+ `typeof`_ object type


.. _who: who.html
.. _who_user: who_user.html
.. _typeof: typeof.html


