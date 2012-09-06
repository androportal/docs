


exit
====

Ends the current Scilab session



Calling Sequence
~~~~~~~~~~~~~~~~


::

    exit
    exit(n)




Arguments
~~~~~~~~~

:n the exit status
:



Description
~~~~~~~~~~~

Ends the current Scilab session.

The exit status shall be `n`, if specified. Otherwise, the value shall
be zero.



Examples
~~~~~~~~


::

    exit
    i = 4;
    exit(i);




See Also
~~~~~~~~


+ `quit`_ Terminates Scilab or decreases the pause level
+ `abort`_ interrupt evaluation.
+ `break`_ keyword to interrupt loops
+ `resume`_ return or resume execution and copy some local variables


.. _break: break.html
.. _abort: abort.html
.. _resume: resume.html
.. _quit: quit.html


