


try
===

beginning of try block in try-catch control instruction



catch
=====

beginning of catch block in try-catch control instruction



Calling Sequence
~~~~~~~~~~~~~~~~


::

    try
    statements
    catch
    statements
    end




Description
~~~~~~~~~~~

The `try`- `catch` control instruction can be used to manage codes
that could possibly generate errors.

When a `try`- `catch` control instruction is executed, normally only
the statements between the `try` and `catch` keywords are executed.
However, if an error occurs during execution of any of these
statements, the error is recorded, the remaining statements up to the
`catch` keyword are skipped and the statements between the `catch` and
`end` keywords are executed using the default error handling mode (see
`errcatch`_).

The recorded error can be retrieved using the `lasterror`_ function.

The `catch` statements as well as the `catch` keyword can be omitted
if no alternative statements are given.

Note that one can also use the `execstr`_ function with `'errcatch'`
argument for error handling. This can be particularly useful for
handling syntactical errors.

Note also that `try-catch` is more or less similar to:


::

    if `execstr`_("<try instructions>","errcatch")<>0 then
      <catch instructions>
    end


It uses the same internal mechanism as `errcatch`_. It is the reason
why `errcatch`_ or *execstr(...,"errcatch")* cannot be included in
`try`- `catch` control structures. This context is detected and
produces a specific error message (this error is caught and stored
like any other error if it is triggered in the `try` block).

However, `try`- `catch` control structures can be nested (see example
2 below).



Examples
~~~~~~~~


::

    // example 1
    file_path=TMPDIR+'/wrong'
    try
      u=`mopen`_(file_path,'r')
      x=`mget`_(10,'c',u)
    catch
      `disp`_(['file '+file_path+ ' cannot be read','using default values for x'])
      x=1:10
    end 
     [error_message,error_number]=`lasterror`_(%t)



::

    // example 2 (nested try/catch structures)
    function nestedtry(a, b)
    `disp`_("START")
    `mprintf`_("\ta is %s\t\tb is %s\n",`string`_(a),`string`_(b))
    try
      `disp`_("try 1")
      try
        `disp`_("try 2")
        z=a+1;  // err when string
      catch
        `disp`_("catch 2")
        t=b+1;  // err when string
      end
      `disp`_("after try 2")
    catch
      `disp`_("catch 1")
    end
    `disp`_("after try 1 - THE END")
    endfunction
    nestedtry(1,1)
    nestedtry("a string",1)
    nestedtry(1,"a string")
    nestedtry("a string","a string")




See Also
~~~~~~~~


+ `error`_ error message
+ `execstr`_ execute Scilab code in strings
+ `if`_ keyword for conditional execution
+ `lasterror`_ get last recorded error message
+ `errcatch`_ error trapping


.. _execstr: execstr.html
.. _errcatch: errcatch.html
.. _lasterror: lasterror.html
.. _error: error.html
.. _if: if.html


