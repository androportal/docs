


isinf
=====

check for infinite entries



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r=isinf(x)




Arguments
~~~~~~~~~

:x real or complex vector or matrix r : boolean vector or matrix
:



Description
~~~~~~~~~~~

`isinf(x)` returns a boolean vector or matrix which contains true
entries corresponding with infinite `x` entries and false entries
corresponding with finite `x` entries.



Examples
~~~~~~~~


::

    isinf([1 0.01 -%inf %inf])




See Also
~~~~~~~~


+ `isnan`_ check for "Not a Number" entries


.. _isnan: isnan.html


