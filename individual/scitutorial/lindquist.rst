


lindquist
=========

Lindquist's algorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P,R,T]=lindquist(n,H,F,G,R0)




Arguments
~~~~~~~~~

:n number of iterations.
: :H, F, G estimated triple from the covariance sequence of `y`.
: :R0 E(yk*yk')
: :P solution of the Riccati equation after n iterations.
: :R, T gain matrices of the filter.
:



Description
~~~~~~~~~~~

computes iteratively the minimal solution of the algebraic Riccati
equation and gives the matrices `R` and `T` of the filter model, by
the Lindquist's algorithm.



See Also
~~~~~~~~


+ `srfaur`_ square-root algorithm
+ `faurre`_ filter computation by simple Faurre algorithm
+ `phc`_ Markovian representation


.. _phc: phc.html
.. _srfaur: srfaur.html
.. _faurre: faurre.html


