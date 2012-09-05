


gammaln
=======

The logarithm of gamma function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = gammaln(x)




Arguments
~~~~~~~~~

:x real vector
: :y real vector with same size.
:



Description
~~~~~~~~~~~

`gammaln(x)` evaluates the logarithm of gamma function at all the
elements of `x`, avoiding underflow and overflow. `x` must be real.



Examples
~~~~~~~~


::

    gammaln(0.5)




See Also
~~~~~~~~


+ `gamma`_ The gamma function.
+ `dlgamma`_ derivative of gammaln function, psi function




History
~~~~~~~
Version Description 5.4.0 Overloading allowed for list, mlist, tlist
and hypermatrix types.
.. _gamma: gamma.html
.. _dlgamma: dlgamma.html


