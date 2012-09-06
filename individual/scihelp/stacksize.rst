


stacksize
=========

set scilab stack size



Calling Sequence
~~~~~~~~~~~~~~~~


::

    stacksize(n)
    stacksize('max')
    stacksize('min')
    sz=stacksize()




Arguments
~~~~~~~~~

:n an integer, the required stack size given in number of double
  precision words
: :sz a 2-vector [total used]
:



Description
~~~~~~~~~~~

Scilab stores "usual" variables in a stack `stk` (for global variables
see `gstacksize`_).

`stacksize(n)` allows the user to increase or decrease the size of
this stack. The maximum allowed size depends on the amount of free
memory and swap space available at the time.

`stacksize('max')` allows the user to increase the size of this stack
to the maximum.

`stacksize('min')` allows the user to decrease the size of this stack
to the minimum.

This function with the `n` argument can now be used everywhere.

`sz=stacksize()` returns a 2-vector which contains the current total
and used stack size.

By default, the size of the stack is 100 000 000.

On 64 bit platforms, maximum size of the stack is limited to 268 435
454.



See Also
~~~~~~~~


+ `who`_ listing of variables
+ `gstacksize`_ set/get scilab global stack size


.. _gstacksize: gstacksize.html
.. _who: who.html


