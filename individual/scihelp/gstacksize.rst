


gstacksize
==========

set/get scilab global stack size



Calling Sequence
~~~~~~~~~~~~~~~~


::

    gstacksize(n)
    gstacksize('max')
    gstacksize('min')
    sz=gstacksize()




Arguments
~~~~~~~~~

:n integer, the required global stack size given in number of double
  precision words
: :sz 2-vector [total used]
:



Description
~~~~~~~~~~~

Scilab stores global variables in a stack.

`gstacksize(n)` allows the user to increase or decrease the size of
this stack. The maximum allowed size depends on the amount of free
memory and swap space available at the time. Note that Scilab can
increase automatically the global stacksize when needed.

`sz=gstacksize()` returns a 2-vector which contains the current total
and used global stack size.

`gstacksize('max')` allows the user to increase the size of this
global stack to the maximum.

`gstacksize('min')` allows the user to decrease the size of this
global stack to the minimum.



See Also
~~~~~~~~


+ `who`_ listing of variables
+ `stacksize`_ set scilab stack size


.. _stacksize: stacksize.html
.. _who: who.html


