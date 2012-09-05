


delbpt
======

delete breakpoints



Calling Sequence
~~~~~~~~~~~~~~~~


::

    delbpt([macroname [,linenumb]])




Arguments
~~~~~~~~~

:macroname string
: :linenumb scalar integer or vector of integers
:



Description
~~~~~~~~~~~

Deletes the breakpoint at line `linenumb` in the function `macroname`.

`linenumb` can be a row or column vector of line numbers, or a single
scalar line number.

Line numbers in `linenumb` are *physical* line numbers in function
`macroname`. Note that Scilab versions before 5.0 used *logical* line
numbers. The difference between physical and logical line numbers is
the number of *continued lines* (see `dot`_).

If `linenumb` is omitted, all the breakpoints in function `macroname`
are deleted.

If both `macroname` and `linenumb` are omitted, all breakpoints in all
functions are deleted.



Examples
~~~~~~~~


::

    `setbpt`_('foo',1),`setbpt`_('foo',10),delbpt('foo',10),`dispbpt`_()
    delbpt('foo',1),`dispbpt`_()
    
    `setbpt`_('foo1',4),`setbpt`_('foo1',9),`setbpt`_('foo2',6),`setbpt`_('foo3',8),`dispbpt`_()
    delbpt('foo2'),`dispbpt`_()
    delbpt(),`dispbpt`_()
    
    delbpt('foo',[1,2,5,6]),`dispbpt`_()




See Also
~~~~~~~~


+ `setbpt`_ set breakpoints
+ `dispbpt`_ display breakpoints
+ `pause`_ pause mode, invoke keyboard
+ `resume`_ return or resume execution and copy some local variables
+ `abort`_ interrupt evaluation.


.. _setbpt: setbpt.html
.. _resume: resume.html
.. _pause: pause.html
.. _dot: dot.html
.. _dispbpt: dispbpt.html
.. _abort: abort.html


