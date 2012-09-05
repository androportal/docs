


simp_mode
=========

toggle rational simplification



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mod=simp_mode()
    simp_mode(mod)




Arguments
~~~~~~~~~

:mod a boolean
:



Description
~~~~~~~~~~~

rational simplification is called after nearly each operations on
rationals. It is possible to toggle simplification on or off using
`simp_mode` function.

`simp_mod(%t)` set rational simplification mode on

`simp_mod(%f)` set rational simplification mode off

`mod=simp_mod()` returns in mod the current rational simplification
mode



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    mod=simp_mode()
    simp_mode(%f);hns=s/s
    simp_mode(%t);hns=s/s
    simp_mode(mod);




See Also
~~~~~~~~


+ `simp`_ rational simplification


.. _simp: simp.html


