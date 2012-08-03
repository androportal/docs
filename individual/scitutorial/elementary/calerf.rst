====
"calerf"
====

Scilab Function Last update : December 1994
**calerf** - computes error functions.



Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **flag** : integer indicator
+ **y** : real vector or matrix (of same size than x)




Description
~~~~~~~~~~~

**calerf(x,0)** computes the error function **erf(x)**

**calerf(x,1)** computes the complementary error function **erfc(x)**

**calerf(x,2)** computes the scaled complementary error function
**erfcx(x)**



Examples
~~~~~~~~


::

    
    
    deff('y=f(t)','y=exp(-t^2)');
    calerf(1,0)
    2/sqrt(%pi)*intg(0,1,f)
     
      




See Also
~~~~~~~~

` **erf** `_,` **erfc** `_,` **erfcx** `_,



Author
~~~~~~

W. J. Cody (code from Netlib (specfun))

.. _
      : ://./elementary/erfc.htm
.. _
      : ://./elementary/erf.htm
.. _
      : ://./elementary/erfcx.htm


