


faurre
======

filter computation by simple Faurre algorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [P,R,T]=faurre(n,H,F,G,R0)




Arguments
~~~~~~~~~

:n number of iterations.
: :H, F, G estimated triple from the covariance sequence of `y`.
: :R0 E(yk*yk')
: :P solution of the Riccati equation after n iterations.
: :R, T gain matrix of the filter.
:



Description
~~~~~~~~~~~

This function computes iteratively the minimal solution of the
algebraic Riccati equation and gives the matrices `R` and `T` of the
filter model. The algorithm tries to compute the solution P as the
growing limit of a sequence of matrices Pn such that


::

    -1
    Pn+1=F*Pn*F'+(G-F*Pn*h')*(R0-H*Pn*H')  *(G'-H*Pn*F')
    -1
    P0=G*R0 *G'


Note that this method may not converge,especially when F has poles
near the unit circle. Use preferably the srfaur function.



See Also
~~~~~~~~


+ `srfaur`_ square-root algorithm
+ `lindquist`_ Lindquist's algorithm
+ `phc`_ Markovian representation


.. _phc: phc.html
.. _lindquist: lindquist.html
.. _srfaur: srfaur.html


