


ieee
====

set floating point exception mode



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mod=ieee()
    ieee(mod)




Arguments
~~~~~~~~~

:mod integer scalar whose possible values are 0, 1 or 2
:



Description
~~~~~~~~~~~

`ieee()` returns the current floating point exception mode.

:0 floating point exception produces an error
: :1 floating point exception produces a warning
: :2 floating point exception produces Inf or Nan
:

`ieee(mod)` sets the current floating point exception mode.

The initial mode value is 0.



Remarks
~~~~~~~

Floating point exception arising inside some library algorithms are
not yet handled by `ieee` modes.



Examples
~~~~~~~~


::

    ieee(1);1/0
    ieee(2);1/0,`log`_(0)




See Also
~~~~~~~~


+ `errcatch`_ error trapping


.. _errcatch: errcatch.html


