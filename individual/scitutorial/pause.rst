


pause
=====

pause mode, invoke keyboard



Description
~~~~~~~~~~~

Switch to the `pause` mode; inserted in the code of a function,
`pause` interrupts the execution of the function: one receives a
prompt symbol which indicates the level of the `pause` (e.g. `-1->`).
The user is then in a new workspace in which all the lower-level
variables (and in particular all the variable of the function) are
available. To return to the calling workspace enter `"return"`.

In this mode, `[...]=return(...)` returns the variables of the
argument `(...)` to the calling workspace with names in the output
`[...]`. Otherwise, the lower-level variables are protected and cannot
be modified.

The `pause` is extremely useful for debugging purposes.

This mode is killed by the command `"abort"`.



See Also
~~~~~~~~


+ `halt`_ stop execution
+ `return`_ return or resume execution and copy some local variables
+ `abort`_ interrupt evaluation.
+ `quit`_ Terminates Scilab or decreases the pause level
+ `whereami`_ display current instruction calling tree
+ `where`_ get current instruction calling tree
+ `sleep`_ suspend Scilab


.. _sleep: sleep.html
.. _abort: abort.html
.. _quit: quit.html
.. _whereami: whereami.html
.. _return: return.html
.. _halt: halt.html
.. _where: where.html


