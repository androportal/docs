


rowinout
========

inner-outer factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Inn,X,Gbar]=rowinout(G)




Arguments
~~~~~~~~~

:G linear system ( `syslin` list) `[A,B,C,D]`
: :Inn inner factor ( `syslin` list)
: :Gbar outer factor ( `syslin` list)
: :X row-compressor of `G` ( `syslin` list)
:



Description
~~~~~~~~~~~

Inner-outer factorization (and row compression) of ( `l`x `p`) `G
=[A,B,C,D]` with `l>=p`.

`G` is assumed to be tall ( `l>=p`) without zero on the imaginary axis
and with a `D` matrix which is full column rank.

`G` must also be stable for having `Gbar` stable.

`G` admits the following inner-outer factorization:


::

    G = [ Inn ] | Gbar |
                |  0   |


where `Inn` is square and inner (all pass and stable) and `Gbar`
square and outer i.e: Gbar is square bi-proper and bi-stable (Gbar
inverse is also proper and stable);

Note that:


::

    [ Gbar ]
    X*G = [  -   ]
    [  0   ]


is a row compression of `G` where `X` = `Inn` inverse is all-pass i.e:


::

    T
    X (-s) X(s) = Identity


(for the continuous time case).



See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `colinout`_ inner-outer factorization


.. _colinout: colinout.html
.. _syslin: syslin.html


