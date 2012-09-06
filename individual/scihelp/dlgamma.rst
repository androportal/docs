


dlgamma
=======

derivative of gammaln function, psi function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = dlgamma(x)




Arguments
~~~~~~~~~

:x real vector
: :y real vector with same size.
:



Description
~~~~~~~~~~~

`dlgamma(x)` evaluates, at all the elements of `x` the logarithmic
derivative of the gamma function which corresponds also to the
derivative of the gammaln function :

`x` must be real. Also known as the psi function.



Examples
~~~~~~~~


::

    dlgamma(0.5)




See Also
~~~~~~~~


+ `gamma`_ The gamma function.
+ `gammaln`_ The logarithm of gamma function.




History
~~~~~~~
Version Description 5.4.0 Overloading allowed for list, mlist, tlist
and hypermatrix types.
.. _gamma: gamma.html
.. _gammaln: gammaln.html


