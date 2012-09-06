


beta
====

beta function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    z = beta(x,y)




Arguments
~~~~~~~~~

:x, y 2 positive reals or 2 matrices (or vectors) of positive reals of
  same size.
: :z a real or a matrix of the same size than `x` with `z(i,j) =
  beta(x(i,j),y(i,j))`.
:



Description
~~~~~~~~~~~

Computes the complete beta function :

For small `x` and `y` the algorithm uses the expression in function of
the gamma function, else it applies the exponential function onto the
result of the `betaln` function provided with the DCDFLIB: Library of
Fortran Routines for Cumulative Distribution Functions, Inverses, and
Other Parameter (see `cdfbet`_ for more information about DCDFLIB).



Examples
~~~~~~~~


::

    // example 1 :
    beta(5,2) - beta(2,5)   // symetry (must be exactly 0)
    beta(0.5,0.5)           // exact value is pi
    
    // example 2 : an error study based on the relation  B(1,x) = 1/x
    // (computing 1/x must lead to only a relative error of eps_m, so
    //  it may be used near as a reference to evaluate the error in B(1,x))  
    x = `logspace`_(-8,8,20000)';
    e = beta(`ones`_(x),x) - (1)./x;
    er = `abs`_(e) .* x;
    ind = `find`_(er ~= 0);
    eps = `ones`_(x(ind))*`number_properties`_("eps");
    `clf`_()
    `plot2d`_(x(ind),[er(ind) eps 2*eps],style=[1 2 3],logflag="ll",leg="er@eps_m@2 eps_m")
    `xtitle`_("approximate relative error in computing beta(1,x)")
    `show_window`_()
    
    // example 3 : plotting the beta function 
    t = `linspace`_(0.2,10,60);
    X = t'*`ones`_(t); Y = `ones`_(t')*t;
    Z = beta(X,Y);
    `clf`_()
    `plot3d`_(t, t, Z, flag=[2 4 4], leg="x@y@z", alpha=75, theta=30)
    `xtitle`_("The beta function on [0.2,10]x[0.2,10]")
    `show_window`_()




See Also
~~~~~~~~


+ `gamma`_ The gamma function.
+ `cdfbet`_ cumulative distribution function Beta distribution


.. _gamma: gamma.html
.. _cdfbet: cdfbet.html


