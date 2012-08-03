====
"pause"
====

Scilab Function Last update : April 1993
**pause** - pause mode, invoke keyboard



Description
~~~~~~~~~~~

Switch to the **pause** mode; inserted in the code of a function,
**pause** interrupts the execution of the function: one receives a
prompt symbol which indicates the level of the **pause** (e.g.
**-1->** ). The user is then in a new workspace in which all the
lower-level variables (and in particular all the variable of the
function) are available. To return to the calling workspace enter
**"return"**

In this mode, **[...]=return(...) ** returns the variables of the
argument **(...)** to the calling workspace with names in the output
** [...]** . Otherwise, the lower-level variables are protected and
cannot be modified.

The **pause** is extremely useful for debugging purposes.

This mode is killed by the command **"abort"** .



See Also
~~~~~~~~

` **halt** `_,` **return** `_,` **abort** `_,` **quit** `_,`
**whereami** `_,` **where** `_,

.. _
      : ://./programming/../gui/halt.htm
.. _
      : ://./programming/quit.htm
.. _
      : ://./programming/where.htm
.. _
      : ://./programming/return.htm
.. _
      : ://./programming/abort.htm
.. _
      : ://./programming/whereami.htm


