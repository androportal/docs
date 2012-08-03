====
"gamma"
====

Scilab Function Last update : 06/07/2004
**gamma** - The gamma function.



Calling Sequence
~~~~~~~~~~~~~~~~

y = gamma(x)




Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **y** : real vector or matrix with same size than x.




Description
~~~~~~~~~~~

**gamma(x)** evaluates the gamma function at all the elements of **x**
. The gamma function is defined by :


::

    
    
                         /+oo
                         |   x-1  -t
             gamma(x) =  |  t    e    dt
                         /0
         
        


and generalizes the factorial function for real numbers ( **gamma(n+1)
= n!** ).



Examples
~~~~~~~~


::

    
    
    // simple examples
    gamma(0.5)
    gamma(6)-prod(1:5)
    
    // the graph of the Gamma function on [a,b]
    a = -3; b = 5;
    x = linspace(a,b,40000)';
    y = gamma(x);
    xbasc()
    c=xget("color")
    xset("color",2)
    plot2d(x, y, style=0, axesflag=5, rect=[a, -10, b, 10])
    xset("color",c)
    xtitle("The gamma function on ["+string(a)+","+string(b)+"]")
    xselect()
     
      




See Also
~~~~~~~~

` **gammaln** `_,` **dlgamma** `_,



Author
~~~~~~

W. J. Cody and L. Stoltz (code from Netlib (specfun))

.. _
      : ://./elementary/dlgamma.htm
.. _
      : ://./elementary/gammaln.htm


