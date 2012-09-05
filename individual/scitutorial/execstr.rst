


execstr
=======

execute Scilab code in strings



Calling Sequence
~~~~~~~~~~~~~~~~


::

    execstr(instr)
    ierr=execstr(instr,'errcatch' [,msg])




Arguments
~~~~~~~~~

:instr vector of character strings, Scilab instruction to be executed.
: :ierr integer, 0 or error number.
: :msg character string with values `'m'` or `'n'`. Default value is
  `'n'`.
:



Description
~~~~~~~~~~~

Executes the Scilab instructions given in argument `instr`.

Note that instr should not make use of continuation marks (..)



If the 'errcatch' flag is not present, error handling works as usual.

If the 'errcatch' flag is set, and an error is encountered while
executing the instructions defined in `instr`, `execstr` issues no
error message, but aborts execution of the `instr` instructions (at
the point where the error occurred), and resumes with `ierr` equal to
the error number. In this case the display of the error message is
controlled by the `msg` option:

:"m" error message is displayed and recorded.
: :"n" no error message is displayed, but the error message is
  recorded (see `lasterror`). This is the default.
:

ierr=execstr(instr,'errcatch') can handle syntactical errors. This is
useful for evalution of instruction obtained by a query to the user.



Examples
~~~~~~~~


::

    execstr('a=1') // sets a=1.
    execstr('1+1') // does nothing (while evstr('1+1') returns 2)
    
    execstr(['if %t then';
             '  a=1';
             '  b=a+1';
             'else'
             ' b=0'
             'end'])
    
    execstr('a=zzzzzzz','errcatch')
    execstr('a=zzzzzzz','errcatch','m')
    
    //syntax errors
    execstr('a=1?02','errcatch')
    `lasterror`_(%t)
    
    execstr('a=[1 2 3)','errcatch')
    `lasterror`_(%t)
    
    // variable1 does not exist
    if execstr('variable1;','errcatch')<>0 then `disp`_("Trigger an error"),end
    
    // variable2 exists ... no error is triggered by execstr
    variable2=[2,3]; 
    if execstr('variable2;','errcatch')<>0 then 
       `disp`_("Trigger an error");
    else
       `disp`_("execstr is happy");
    end




See Also
~~~~~~~~


+ `evstr`_ evaluation of expressions
+ `lasterror`_ get last recorded error message
+ `error`_ error message
+ `try`_ beginning of try block in try-catch control instruction


.. _evstr: evstr.html
.. _try: try.html
.. _lasterror: lasterror.html
.. _error: error.html


