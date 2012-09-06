


setbpt
======

set breakpoints



Calling Sequence
~~~~~~~~~~~~~~~~


::

    setbpt(macroname [,linenumb])




Arguments
~~~~~~~~~

:macroname a string
: :linenumb a scalar integer or a vector of integers
:



Description
~~~~~~~~~~~

`setbpt` interactively inserts a breakpoint in the line number
`linenumb` (default value is 1) of the function `macroname`.

`linenumb` can be a line or column vector of line numbers, or a single
scalar line number.

Line numbers in `linenumb` are *physical* line numbers in function
`macroname`. Note that Scilab versions before 5.0 used *logical* line
numbers. The difference between physical and logical line numbers is
the number of *continued lines* (see `dot`_).

When reaching a breakpoint, Scilab evaluates the specified physical
line and stops the execution flow. If the function is not compiled
(see `comp`_) the line is printed on the screen. Then Scilab goes into
a `pause`_ mode in which the user can check current values. The
`pause`_ is exited with `resume`_ or `abort`_.

Redefining the function does not clear the breakpoints, the user must
explicitly delete breakpoints using `delbpt`_. The maximum number of
functions with breakpoints enabled must be less than 100 and the
overall maximum number of breakpoints is set to 1000.



Examples
~~~~~~~~


::

    setbpt('foo'),setbpt('foo',10),`dispbpt`_()
    `delbpt`_()
    
    setbpt('foo',[1,2,5,6]),`dispbpt`_()




See Also
~~~~~~~~


+ `delbpt`_ delete breakpoints
+ `dispbpt`_ display breakpoints
+ `pause`_ pause mode, invoke keyboard
+ `resume`_ return or resume execution and copy some local variables
+ `abort`_ interrupt evaluation.
+ `quit`_ Terminates Scilab or decreases the pause level


.. _resume: resume.html
.. _quit: quit.html
.. _pause: pause.html
.. _dot: dot.html
.. _delbpt: delbpt.html
.. _comp: comp.html
.. _dispbpt: dispbpt.html
.. _abort: abort.html


