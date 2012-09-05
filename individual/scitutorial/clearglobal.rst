


clearglobal
===========

kills global variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    clearglobal()
    clearglobal nam1 ... namn
    clearglobal('nam1', ...,'namn')




Arguments
~~~~~~~~~

:nam1,..., namn valid variable names
:



Description
~~~~~~~~~~~

`clearglobal()` kills all the global variables.

`clearglobal nam1 ... namn` kills the global variables given by their
names.

Note that `clearglobal()` only clears the global variables, the local
copies of these global variables are not destroyed.



Examples
~~~~~~~~


::

    `global`_ a b c
    a=1;b=2;c=3;
    who('global')
    clearglobal b
    who('global')




See Also
~~~~~~~~


+ `global`_ Define global variable
+ `who`_ listing of variables


.. _global: global.html
.. _who: who.html


