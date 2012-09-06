


resume
======

return or resume execution and copy some local variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    resume
    [x1,..,xn]=resume(a1,..,an)




Arguments
~~~~~~~~~

:x1,..,xn variables in calling environnement
: :a1,..,an local variables
:



Description
~~~~~~~~~~~

In a function `resume` stops the execution of the function,
`[x1,..,xn]=resume(a1,..,an)` stops the execution of the function and
put the local variables `ai` in calling environment under names `xi`.

In `pause` mode, it allows to return to lower level
`[x1,..,xn]=resume(a1,..,an)` returns to lower level and put the local
variables `ai` in calling environment under names `xi`.

In an `execstr` called by a function `[..]=resume(..)` stops the
execution of the function and put the local variables `ai` in calling
environment under names `xi`.

`resume` is equivalent to `return`.



See Also
~~~~~~~~


+ `abort`_ interrupt evaluation.
+ `break`_ keyword to interrupt loops
+ `pause`_ pause mode, invoke keyboard
+ `quit`_ Terminates Scilab or decreases the pause level
+ `return`_ return or resume execution and copy some local variables
+ `execstr`_ execute Scilab code in strings


.. _execstr: execstr.html
.. _abort: abort.html
.. _quit: quit.html
.. _pause: pause.html
.. _break: break.html
.. _return: return.html


