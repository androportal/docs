


lasterror
=========

get last recorded error message



Calling Sequence
~~~~~~~~~~~~~~~~


::

    str=lasterror( [opt] )
    [str,n]=lasterror([opt])
    [str,n,line,func]=lasterror([opt])




Arguments
~~~~~~~~~

:str a vector of character strings or an empty matrix. The last
  recorded error message.
: :n an integer, 0 or the last recorded error number.
: :line an integer, 0 or the last recorded function line number.
: :func a string, the last recorded function name.
: :opt a boolean, if %t recorded message is cleared. Default is %t.
:



Description
~~~~~~~~~~~

Each time an error occurs, the Scilab error handler records it in an
internal table (only the last one is retained). The `lasterror`
function allows to get the message, the error number, the current
function (if any) and the current line number in the current function
out of this table.

The reported line number is the *physical* line number where the last
error occurred. Note that Scilab versions before 5.0 used to report
the *logical* line number of the last error. There is a difference
only if the function in error includes *continued lines* (see `dot`_)
before the point where the error happened.

This function is especially useful while using `errcatch`_ or
`execstr`_.

The recorded error message may be retained for a further call to
`lasterror` using `lasterror(%f)`.



Examples
~~~~~~~~


::

    ierr=`execstr`_('a=zzzzzzz','errcatch')
    if ierr>0 then 
      `disp`_(lasterror())
    end




See Also
~~~~~~~~


+ `errcatch`_ error trapping
+ `execstr`_ execute Scilab code in strings
+ `error`_ error message
+ `errclear`_ error clearing
+ `edit_error`_ opens in scilab editor the source of the last recorded
  error


.. _execstr: execstr.html
.. _dot: dot.html
.. _errclear: errclear.html
.. _errcatch: errcatch.html
.. _error: error.html
.. _edit_error: edit_error.html


