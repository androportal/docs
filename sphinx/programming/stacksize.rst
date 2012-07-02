Scilab Function

Last update : October 1995

**stacksize** - set scilab stack size

Calling Sequence
~~~~~~~~~~~~~~~~

``stacksize(n)  ``

``sz=stacksize()  ``

Parameters
~~~~~~~~~~

-  ``           n         ``: integer, the required stack size given in
   number of double precision words
-  ``           sz         ``: 2-vector [total used]

Description
~~~~~~~~~~~

Scilab stores "usual" variables in a stack ``         stk       `` (for
global variables see ``         gstacksize       ``).

``         stacksize(n)       `` allows the user to increase or decrease
the size of this stack. The maximum allowed size depends on the amount
of free memory and swap space available at the time.

This function with the ``         n       `` argument can now be used
everywhere.

``         sz=stacksize()       `` returns a 2-vector which contains the
current total and used stack size. It can be used everywhere.

See Also
~~~~~~~~

```           who         `` <who.htm>`_,
```           gstacksize         `` <gstacksize.htm>`_,
