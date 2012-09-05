


clear
=====

kills variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    clear a b c
    clear('a','b','c')




Arguments
~~~~~~~~~

:a,b,c... variables of any type and size, but not protected
:



Description
~~~~~~~~~~~

This command kills variables which are not protected. It removes the
named variables from the environment. By itself `clear` kills all the
variables except the variables protected by `predef`. Thus the two
commands `predef(0)` and `clear` remove all the variables.

Normally, protected variables are standard libraries and variables
with the percent prefix.

Note the particular syntax `clear a` and `clear('a')` and not
`clear(a)`. Note also that `a=[]` does not kill `a` but sets `a` to an
empty matrix.

The command `clear` can kill nonexistent variables, i. e. `clear`
kills nonexistent variables as if they exist.



See Also
~~~~~~~~


+ `predef`_ variable protection
+ `who`_ listing of variables


.. _who: who.html
.. _predef: predef.html


