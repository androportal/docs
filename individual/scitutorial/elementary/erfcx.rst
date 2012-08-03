====
"erfcx"
====

Scilab Function Last update : December 1994
**erfcx** - scaled complementary error function.



Calling Sequence
~~~~~~~~~~~~~~~~

y = erfcx(x)




Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **y** : real vector or matrix (of same size than x)




Description
~~~~~~~~~~~

**erfcx** computes the scaled complementary error function:


::

    
    
                  2                
         y = exp(x ) * erfc(x)
    
                    1
         y  -->  ---------    when x --> +oo
                 x sqrt(pi) 
       
        




See Also
~~~~~~~~

` **erf** `_,` **erfc** `_,` **calerf** `_,



Author
~~~~~~

W. J. Cody (code from Netlib (specfun))

.. _
      : ://./elementary/erfc.htm
.. _
      : ://./elementary/calerf.htm
.. _
      : ://./elementary/erf.htm


