


lsslist
=======

Scilab linear state space function definition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    lsslist()
    lsslist(a1,....an)




Description
~~~~~~~~~~~

`lsslist(a1,....an)` is a shortcut to
`tlist(['lss','A';'B';'C';'X0','dt'], a1,....an)`

Creates a `tlist` with `['lss','A';'B';'C';'X0','dt']` as first entry
and `ai`'s as next entries if any. No type nor size checking is done
on `ai`'s.



See Also
~~~~~~~~


+ `tlist`_ Scilab object and typed list definition.
+ `syslin`_ linear system definition


.. _syslin: syslin.html
.. _tlist: tlist.html


