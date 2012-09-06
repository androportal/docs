


colinout
========

inner-outer factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Inn,X,Gbar]=colinout(G)




Arguments
~~~~~~~~~

:G linear system ( `syslin` list) `[A,B,C,D]`
: :Inn inner factor ( `syslin` list)
: :Gbar outer factor ( `syslin` list)
: :X row-compressor of `G` ( `syslin` list)
:



Description
~~~~~~~~~~~

Inner-outer factorization (and column compression) of (lxp) `G
=[A,B,C,D]` with l<=p.

`G` is assumed to be fat ( `l<=p`) without zero on the imaginary axis
and with a `D` matrix which is full row rank.

`G` must also be stable for having `Gbar` stable.

Dual of `rowinout`.



See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `rowinout`_ inner-outer factorization


.. _rowinout: rowinout.html
.. _syslin: syslin.html


