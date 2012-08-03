====
"lsslist"
====

Scilab Function Last update : Jan 1997
**lsslist** - Scilab linear state space function definition



Calling Sequence
~~~~~~~~~~~~~~~~

lsslist()
lsslist(a1,....an)




Description
~~~~~~~~~~~

**lsslist(a1,....an)** is a shortcut to
**tlist(['lss','A';'B';'C';'X0','dt'], a1,....an)**

Creates a **tlist** with **['lss','A';'B';'C';'X0','dt']** as first
entry and **ai** 's as next entries if any. No type nor size checking
is done on **ai** 's.



See Also
~~~~~~~~

` **tlist** `_,` **syslin** `_,

.. _
      : ://./programming/../elementary/syslin.htm
.. _
      : ://./programming/tlist.htm


