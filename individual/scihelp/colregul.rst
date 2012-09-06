


colregul
========

removing poles and zeros at infinity



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Stmp,Ws]=colregul(Sl,alfa,beta)




Arguments
~~~~~~~~~

:Sl,Stmp `syslin` lists
: :alfa,beta reals (new pole and zero positions)
:



Description
~~~~~~~~~~~

computes a prefilter `Ws` such that `Stmp=Sl*Ws` is proper and with
full rank `D` matrix.

Poles at infinity of `Sl` are moved to `alfa`;

Zeros at infinity of `Sl` are moved to `beta`;

`Sl` is assumed to be a left invertible linear system ( `syslin` list)
in state-space representation with possibly a polynomial `D` matrix.



See Also
~~~~~~~~


+ `invsyslin`_ system inversion
+ `inv`_ matrix inverse
+ `rowregul`_ removing poles and zeros at infinity
+ `rowshuff`_ shuffle algorithm


.. _invsyslin: invsyslin.html
.. _rowshuff: rowshuff.html
.. _inv: inv.html
.. _rowregul: rowregul.html


