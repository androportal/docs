


iserror
=======

error occurrence test



Calling Sequence
~~~~~~~~~~~~~~~~


::

    iserror([n])




Arguments
~~~~~~~~~

:n an integer, an error number
:



Description
~~~~~~~~~~~

Tests if error number `n` has occurred (after a call to `errcatch`).
`iserror` returns `1` if the error occurred and `0` otherwise.

`n>0` is the error number ; all errors are tested with `n<0`.



See Also
~~~~~~~~


+ `error`_ error message
+ `error_table`_ table of error messages
+ `errcatch`_ error trapping


.. _error: error.html
.. _errcatch: errcatch.html
.. _error_table: error_table.html


