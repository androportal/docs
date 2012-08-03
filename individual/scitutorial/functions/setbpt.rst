====
"setbpt"
====

Scilab Function Last update : 06/02/2005
**setbpt** - set breakpoints



Calling Sequence
~~~~~~~~~~~~~~~~

setbpt(macroname [,linenumb])




Parameters
~~~~~~~~~~


+ **macroname** : string
+ **linenumb** : scalar integer or vector of integers




Description
~~~~~~~~~~~

**setbpt** interactively inserts a breakpoint in the line number
**linenumb** (default value is 1) of the function **macroname**

**linenumb** can be a line or column vector of line numbers, or a
single scalar line number.

When reaching the breakpoint, Scilab evaluates the specified line,
prints the number of the line and the name of the function. If the
function is not compiled (see **comp** ) the line is printed on the
screen. Then Scilab goes into a **pause** mode in which the user can
check current values. The **pause** is exited with **resume** or
**abort** . Redefining the function does not clear the breakpoints,
the user must explicitly delete breakpoints using **delbpt** . The
maximum number of functions with breakpoints enabled must be less than
100 and the maximum number of breakpoints is set to 1000.



Examples
~~~~~~~~


::

    setbpt('foo'),setbpt('foo',10),dispbpt()
    delbpt()
    
    setbpt('foo',[1,2,5,6]),dispbpt()




See Also
~~~~~~~~

` **delbpt** `_,` **dispbpt** `_,` **pause** `_,` **resume** `_,

.. _
      : ://./functions/../programming/pause.htm
.. _
      : ://./functions/../programming/resume.htm
.. _
      : ://./functions/dispbpt.htm
.. _
      : ://./functions/delbpt.htm


