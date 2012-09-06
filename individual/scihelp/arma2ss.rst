


arma2ss
=======

transform an armax data structure into state space representation.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [S,Sn] = arma2ss(Ar)
    S = arma2ss(Ar)




Parameters
~~~~~~~~~~

:Ar an armax data structure (see `armac`_.
: :S a discrete time state space data structure (see `syslin`_. The
  regular input to ouput transfer.
: :Sn a discrete time state space data structure (see `syslin`_. The
  noise input to ouput transfer.
:



Description
~~~~~~~~~~~

`[S,Sn] = arma2ss(Ar)`transform an armax data structure into a state
space representation. The full armax transfer `F`can be obtained by
`F=[S,Sn]`.



Examples
~~~~~~~~


::

    A = [`eye`_(2,2),[-1.5 0.1;-0.2 1.5],[0.7 -0.3;0.1 0.7]];
          B = [[0;0] [1;-1] [0.5;1.2]];
          Ar = `armac`_(A, B, `zeros`_(2, 2), 2, 1, 0)
          [S, Sn] = arma2ss(Ar)




See Also
~~~~~~~~


+ `armac`_
+ `arma`_
+ `syslin`_




Authors
~~~~~~~


+ Serge Steer, INRIA




History
~~~~~~~
Version Description 5.4.0 arma2ss added.
.. _arma: arma.html
.. _armac: armac.html
.. _syslin: syslin.html


