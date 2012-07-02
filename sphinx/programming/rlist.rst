Scilab Function

Last update : Jan 1997

**rlist** - Scilab rational fraction function definition

Calling Sequence
~~~~~~~~~~~~~~~~

``rlist()  ``

``rlist(a1,....an)    ``

Description
~~~~~~~~~~~

``         rlist(a1,....an)       `` is a shortcut to
``         tlist(['r','num';'den','dt'], a1,....an)       ``

Creates a ``         tlist       `` with
``         ['r','num';'den','dt']       `` as first entry and
``         ai       ``'s as next entries if any. No type nor size
checking is done on ``         ai       ``'s.

See Also
~~~~~~~~

```           tlist         `` <tlist.htm>`_,
```           syslin         `` <../elementary/syslin.htm>`_,
