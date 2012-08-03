====
"lindquist"
====

Scilab Function Last update : April 1993
**lindquist** - Lindquist's algorithm



Calling Sequence
~~~~~~~~~~~~~~~~

[P,R,T]=lindquist(n,H,F,G,R0)




Parameters
~~~~~~~~~~


+ **n** : number of iterations.
+ **H, F, G** : estimated triple from the covariance sequence of **y**
  .
+ **R0** : E(yk*yk')
+ **P** : solution of the Riccati equation after n iterations.
+ **R, T** : gain matrices of the filter.




Description
~~~~~~~~~~~

computes iteratively the minimal solution of the algebraic Riccati
equation and gives the matrices **R** and **T** of the filter model,
by the Lindquist's algorithm.



See Also
~~~~~~~~

` **srfaur** `_,` **faurre** `_,` **phc** `_,



Author
~~~~~~

G. Le V.

.. _
      : ://./signal/faurre.htm
.. _
      : ://./signal/phc.htm
.. _
      : ://./signal/srfaur.htm


