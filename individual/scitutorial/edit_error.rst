


edit_error
==========

opens in scilab editor the source of the last recorded error



Calling Sequence
~~~~~~~~~~~~~~~~


::

    answ = edit_error(clearerror)




Arguments
~~~~~~~~~

:clearerror boolean - if true the error condition is cleared, if false
  it is kept (as in `lasterror`_)
: :answ a string stating which source file is open (or why no file was
  open)
:



Description
~~~~~~~~~~~

This function opens in scilab editor the source of the function which
caused the last recorded error.

This function works only for functions which are defined in libraries,
i.e. not for internal functions, nor with functions defined online,
nor loaded with individual `exec`_ or `getd`_. This is since Scilab
presently retains only the path to libraries and not to individual
function sources.

Correspondance between the function name foo and function filename
foo.sci is tacitly assumed.



Examples
~~~~~~~~


::

    `acosh`_ abc
    edit_error




See Also
~~~~~~~~


+ `lasterror`_ get last recorded error message
+ `errclear`_ error clearing


.. _exec: exec.html
.. _getd: getd.html
.. _lasterror: lasterror.html
.. _errclear: errclear.html


