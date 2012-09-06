


getvariablesonstack
===================

get variable names on stack of scilab



Calling Sequence
~~~~~~~~~~~~~~~~


::

    s=getvariablesonstack()
    s=getvariablesonstack('local')
    s=getvariablesonstack('global')




Arguments
~~~~~~~~~

:s a string matrix
:



Description
~~~~~~~~~~~

`getvariablesonstack()` returns in `s` variable names on scilab stack.

`getvariablesonstack('local')` returns local variables on scilab
stack.

`getvariablesonstack('global')` returns global variables on scilab
stack.

Variables are sorted by alphabetical order.



Examples
~~~~~~~~


::

    getvariablesonstack()
    getvariablesonstack('local')
    getvariablesonstack('global')




See Also
~~~~~~~~


+ `who`_ listing of variables
+ `whos`_ listing of variables in long form


.. _whos: whos.html
.. _who: who.html


