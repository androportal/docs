====
"erf"
====

Scilab Function Last update : December 1994
**erf** - The error function.



Calling Sequence
~~~~~~~~~~~~~~~~

y = erf(x)




Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **y** : real vector or matrix (of same size than x)




Description
~~~~~~~~~~~

**erf** computes the error function:


::

    
    
                        /x     2
                2       |    -t
         y = -------    |   e    dt
             sqrt(pi)  /0
                       
       
        




Examples
~~~~~~~~


::

    
    
    deff('y=f(t)','y=exp(-t^2)');
    erf(0.5)-2/sqrt(%pi)*intg(0,0.5,f)
     
      




See Also
~~~~~~~~

` **erfc** `_,` **erfcx** `_,` **calerf** `_,` **cdfnor** `_,



Author
~~~~~~

W. J. Cody (code from Netlib (specfun))

.. _
      : ://./elementary/erfc.htm
.. _
      : ://./elementary/calerf.htm
.. _
      : ://./elementary/erfcx.htm
.. _
      : ://./elementary/../dcd/cdfnor.htm


