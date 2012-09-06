


error
=====

error message



Calling Sequence
~~~~~~~~~~~~~~~~


::

    error(message)
    error(message, n)
    error(n)
    error(n, message)
    error(n, pos)




Arguments
~~~~~~~~~

:message a string or a vector of strings. The error message to be
  displayed.
: :n an integer. The number associated with the error message.
: :pos an integer. A parameter for the error message.
:



Description
~~~~~~~~~~~

`error` function allows to issue an error message and to handle the
error. By defaut `error` stops the current execution and resume to the
prompt level. This default can be changed using the `errcatch` or
`execstr(...,'errcatch')` functions.

`error(message)` prints the character string contained in `message`.
The number associated with the error message is 10000

`error(message,n)` prints the character string contained in `message`.
The number associated with the error message is given by `n`. This
number should be greater than 10000.

`error(n)` prints the predefined error message associated with the
error number `n`.

Some predefined error messages require a parameter (see
`error_table`_). In this case the `pos` argument must be used
`error(n,pos)` to give the parameter value. In the other cases the
`pos` argument is ignored.

See `error_table`_ for a list of error messages and the associated
error numbers.



Examples
~~~~~~~~


::

    error('my error message')
    error(43)
    error(52, 3)
    error(10001, ['A'; 'multi';'line';'error';'message'])
    `lasterror`_()




See Also
~~~~~~~~


+ `warning`_ warning messages
+ `errcatch`_ error trapping
+ `execstr`_ execute Scilab code in strings
+ `lasterror`_ get last recorded error message
+ `error_table`_ table of error messages




History
~~~~~~~
Version Description 5.4.0 The `error` function can take vector of
strings as input argument.
.. _execstr: execstr.html
.. _warning: warning.html
.. _error_table: error_table.html
.. _errcatch: errcatch.html
.. _lasterror: lasterror.html


