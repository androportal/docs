


fourplan
========

augmented plant to four plants



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P11,P12,P21,P22]=fourplan(P,r)




Arguments
~~~~~~~~~

:P `syslin` list (linear system)
: :r 1x2 row vector, dimension of `P22`
: :P11,P12,P21,P22 `syslin` lists.
:



Description
~~~~~~~~~~~

Utility function.

`P` being partitioned as follows:


::

    P=[ P11 P12;
        P21 P22]


with `size(P22)=r` this function returns the four linear systems
`P11,P12,P21,P22`.



See Also
~~~~~~~~


+ `lqg`_ LQG compensator
+ `lqg2stan`_ LQG to standard problem
+ `lqr`_ LQ compensator (full state)
+ `lqe`_ linear quadratic estimator (Kalman Filter)
+ `lft`_ linear fractional transformation


.. _lqg2stan: lqg2stan.html
.. _lqg: lqg.html
.. _lqe: lqe.html
.. _lqr: lqr.html
.. _lft: lft.html


