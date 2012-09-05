


bytecode
========

given a function returns the "bytecode" of a function in a Scilab
array and conversely.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x = bytecode(f)
    f= bytecode(X)




Arguments
~~~~~~~~~

:f A scilab function.
: :x an int32 row vector
:



Description
~~~~~~~~~~~

`x= bytecode(f)` returns the "bytecode" of the function `f` in the
Scilab integer array `x`.

`f= bytecode(x)` returns in `f` the function associated with the
"bytecode" given in the Scilab integer array `x`. Warning the validity
of `x` is not checked.



Remark
~~~~~~

The bytecode of Scilab function will evolve drastically in the future,
So the use of this function should be restricted to the profiling
instruction handling.



Examples
~~~~~~~~


::

    function a=foo(),a=`sin`_(3),endfunction
    bytecode(foo)




See Also
~~~~~~~~


+ `add_profiling`_ Adds profiling instructions to a function.
+ `bytecodewalk`_ walk in function bytecode applying transformation.
+ `macr2lst`_ function to list conversion
+ `macr2tree`_ function to tree conversion


.. _macr2tree: macr2tree.html
.. _add_profiling: add_profiling.html
.. _bytecodewalk: bytecodewalk.html
.. _macr2lst: macr2lst.html


