Scilab Function

Last update : April 1993

**return** - return or resume execution and copy some local variables

Calling Sequence
~~~~~~~~~~~~~~~~

``return``

``[x1,..,xn]=return(a1,..,an)  ``

Parameters
~~~~~~~~~~

-  ``           x         ``...

Description
~~~~~~~~~~~

In a function ``         return       `` stops the execution of the
function, ``         [..]=return(..)       `` stops the execution of the
function and put the local variables ``         ai       `` in calling
environnement under names ``         xi       ``.

In ``         pause       `` mode, it allows to return to upper level
``         [..]=return(..)       `` returns to upper level and put the
local variables ``         ai       `` in calling environnement under
names ``         xi       ``.

In an ``         execstr       `` called by a function
``         [..]=return(..)       `` stops the execution of the function
and put the local variables ``         ai       `` in calling
environnement under names ``         xi       ``.

``         resume       `` is equivalent to ``         return       ``.

See Also
~~~~~~~~

```           abort         `` <abort.htm>`_,
```           break         `` <break.htm>`_,
