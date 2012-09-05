


return
======

return or resume execution and copy some local variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    return
    [x1,..,xn]=return(a1,..,an)




Arguments
~~~~~~~~~

:x1,..,xn variables in calling environment
: :a1,..,an local variables
:



Description
~~~~~~~~~~~

In a function `return` stops the execution of the function,
`[x1,..,xn]=return(a1,..,an)` stops the execution of the function and
put the local variables `ai` in calling environment under names `xi`.

In `pause` mode, it allows to return to upper level.
`[x1,..,xn]=return(a1,..,an)` returns to upper level and put the local
variables `ai` in calling environment under names `xi`.

In an `execstr` called by a function `[x1,..,xn]=return(a1,..,an)`
stops the execution of the function and put the local variables `ai`
in calling environment under names `xi`.

The statement `resume` is equivalent to `return`.



See Also
~~~~~~~~


+ `abort`_ interrupt evaluation.
+ `break`_ keyword to interrupt loops
+ `execstr`_ execute Scilab code in strings
+ `resume`_ return or resume execution and copy some local variables


.. _break: break.html
.. _abort: abort.html
.. _resume: resume.html
.. _execstr: execstr.html


