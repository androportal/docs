


predef
======

variable protection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    n = predef()
    oldnew = predef(n)
    oldnew = predef('all')
    oldnew = predef('clear')
    variables_name = predef('names')




Description
~~~~~~~~~~~

Utility function used for defining "oldest" variables as "protected".
Protected variables cannot be killed. They are not saved by the
`'save'` command. The "oldest" are those appearing last in the
`who('get')`.

`predef()` gets the number of protected variables.

`predef('a[ll]')` sets all the variables protected, it also return the
old and new value of protected variables number.

`predef('c[lear]')` unprotect all but the last 7 variables, it also
return the old and new value of protected variables number.

`predef(n)` sets the `max(n,7)` last defined variables as protected,
it also return the old and new value of protected variables number.

`predef('names')` returns a vector of strings with the name of
protected variables.



Remarks
~~~~~~~

Variable `ans` created automatically when expressions are not assigned
is never protected by `predef('all')`.

A number of protected variables are set in the start-up file
`SCI/etc/scilab.start`. User may in particular set its own predefined
variables in user's startup files `SCIHOME/.scilab` and
`SCIHOME/scilab.ini`



See Also
~~~~~~~~


+ `clear`_ kills variables
+ `save`_ Save a variable or a serie of variables in a binary file
+ `ans`_ answer
+ `startup`_ startup files


.. _save: save.html
.. _startup: startup.html
.. _ans: ans.html
.. _clear: clear.html


