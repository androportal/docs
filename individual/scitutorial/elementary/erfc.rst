====
"erfc"
====

Scilab Function Last update : December 1994
**erfc** - The complementary error function.



Calling Sequence
~~~~~~~~~~~~~~~~

y = erfc(x)




Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **y** : real vector or matrix (of same size than x)




Description
~~~~~~~~~~~

**erfc** computes the complementary error function:


::

    
    
                       /+oo    2
                2      |     -t
         y = -------   |    e    dt
             sqrt(pi)  |
                       /x
    
         y = 1 - erf(x)
       
        




Examples
~~~~~~~~


::

    
    
    erf([0.5,0.2])+erfc([0.5,0.2])
     
      




See Also
~~~~~~~~

` **erf** `_,` **erfcx** `_,` **calerf** `_,



Author
~~~~~~

W. J. Cody (code from Netlib (specfun))

.. _
      : ://./elementary/calerf.htm
.. _
      : ://./elementary/erf.htm
.. _
      : ://./elementary/erfcx.htm


