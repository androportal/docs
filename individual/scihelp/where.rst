


where
=====

get current instruction calling tree



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [linenum,mac]=where()




Arguments
~~~~~~~~~

:linenum a column vector of integers
: :mac a column vector of strings
:



Description
~~~~~~~~~~~

`[linenum,mac]=where()` returns `linenum` and `mac` such as current
instruction has been called by the `linenum(1)` line of function
`mac(1)`, `mac(1)` has been called by the `linenum(2)` line of
function `mac(2)` and so on.

`mac(i)` is in general the name of a function but it may also be
`"exec"` or `"execstr"` if instruction lies in an exec file or an
execstr instruction.



See Also
~~~~~~~~


+ `whereami`_ display current instruction calling tree
+ `pause`_ pause mode, invoke keyboard


.. _whereami: whereami.html
.. _pause: pause.html


