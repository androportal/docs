


dispbpt
=======

display breakpoints



Calling Sequence
~~~~~~~~~~~~~~~~


::

    dispbpt()




Description
~~~~~~~~~~~

`dispbpt()` displays all active breakpoints currently inserted in
functions.

The line numbers displayed by `dispbpt()` are *physical* line numbers
in the mentioned functions. Note that Scilab versions before 5.0
showed *logical* line numbers. The difference between physical and
logical line numbers is the number of *continued* lines (see `dot`_).



See Also
~~~~~~~~


+ `setbpt`_ set breakpoints
+ `delbpt`_ delete breakpoints
+ `pause`_ pause mode, invoke keyboard
+ `resume`_ return or resume execution and copy some local variables
+ `abort`_ interrupt evaluation.


.. _setbpt: setbpt.html
.. _resume: resume.html
.. _pause: pause.html
.. _dot: dot.html
.. _delbpt: delbpt.html
.. _abort: abort.html


