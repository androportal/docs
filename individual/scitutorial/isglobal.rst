


isglobal
========

check if a variable is global



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=isglobal(x)




Arguments
~~~~~~~~~

:x any variable
: :t a boolean
:



Description
~~~~~~~~~~~

`isglobal(x)` returns *true* if `x` has been declared to be a global
variable and *false* otherwise.



Examples
~~~~~~~~


::

    isglobal(1)
    `global`_ a
    isglobal(a)




See Also
~~~~~~~~


+ `global`_ Define global variable
+ `clearglobal`_ kills global variables
+ `who`_ listing of variables


.. _clearglobal: clearglobal.html
.. _global: global.html
.. _who: who.html


