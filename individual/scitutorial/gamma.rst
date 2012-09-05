


gamma
=====

The gamma function.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = gamma(x)




Arguments
~~~~~~~~~

:x real vector or matrix
: :y real vector or matrix with same size than x.
:



Description
~~~~~~~~~~~

`gamma(x)` evaluates the gamma function at all the elements of `x`.
The gamma function is defined by :

and generalizes the factorial function for real numbers ( `gamma(n+1)
= n!`).



Examples
~~~~~~~~


::

    // simple examples
    gamma(0.5)
    gamma(6)-`prod`_(1:5)



::

    // the graph of the Gamma function on [a,b]
    a = -3; b = 5;
    x = `linspace`_(a,b,40000)';
    y = gamma(x);
    `clf`_()
    c=`xget`_("color")
    `xset`_("color",2)
    `plot2d`_(x, y, style=0, axesflag=5, rect=[a, -10, b, 10])
    `xset`_("color",c)
    `xtitle`_("The gamma function on ["+`string`_(a)+","+`string`_(b)+"]")
    `show_window`_()




See Also
~~~~~~~~


+ `gammaln`_ The logarithm of gamma function.
+ `dlgamma`_ derivative of gammaln function, psi function




History
~~~~~~~
Version Description 5.4.0 Overloading allowed for list, mlist, tlist
and hypermatrix types.
.. _dlgamma: dlgamma.html
.. _gammaln: gammaln.html


