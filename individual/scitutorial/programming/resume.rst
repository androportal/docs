====
"resume"
====

Scilab Function Last update : April 1993
**resume** - return or resume execution and copy some local variables



Calling Sequence
~~~~~~~~~~~~~~~~

resume
[x1,..,xn]=resume(a1,..,an)




Parameters
~~~~~~~~~~


+ **x** ...




Description
~~~~~~~~~~~

In a function **resume** stops the execution of the function,
**[..]=resume(..)** stops the execution of the function and put the
local variables **ai** in calling environnement under names **xi** .

In **pause** mode, it allows to return to lower level
**[..]=resume(..)** returns to lower level and put the local variables
**ai** in calling environnement under names **xi** .

In an **execstr** called by a function **[..]=resume(..)** stops the
execution of the function and put the local variables **ai** in
calling environnement under names **xi** .

**resume** is equivalent to **return** .



See Also
~~~~~~~~

` **abort** `_,` **break** `_,

.. _
      : ://./programming/break.htm
.. _
      : ://./programming/abort.htm


