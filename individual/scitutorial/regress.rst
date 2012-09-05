


regress
=======

regression coefficients of two variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    coefs=regress(x,y)




Arguments
~~~~~~~~~

:x,y real or complex vector
:



Description
~~~~~~~~~~~

This function computes the regresion coefficients of two variables `x`
and `y`, both numerical vectors of same number of elements `n`.
`coefs=[a b]` be a 1x2 matrix such that `Y=a+bX` will be the equation
of the ordinary least square approximation to our data.



References
~~~~~~~~~~

Wonacott, T.H. & Wonacott, R.J.; Introductory Statistics, J.Wiley &
Sons, 1990.



Examples
~~~~~~~~


::

    x=[0.5608486 0.6623569 0.7263507 0.1985144 0.5442573 0.2320748 0.2312237]
    y=[0.3616361 0.2922267 0.5664249 0.4826472 0.3321719 0.5935095 0.5015342]
    coefs=regress(x,y)




See Also
~~~~~~~~


+ `covar`_ covariance of two variables


.. _covar: covar.html


