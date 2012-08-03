====
"gammaln"
====

Scilab Function Last update : September 1997
**gammaln** - The logarithm of gamma function.



Calling Sequence
~~~~~~~~~~~~~~~~

y = gammaln(x)




Parameters
~~~~~~~~~~


+ **x** : real vector
+ **y** : real vector with same size.




Description
~~~~~~~~~~~

**gammaln(x)** evaluates the logarithm of gamma function at all the
elements of **x** , avoiding underflow and overflow. **x** must be
real.



Examples
~~~~~~~~


::

    
    
    gammaln(0.5)
    
     
      




See Also
~~~~~~~~

` **gamma** `_,` **dlgamma** `_,



Author
~~~~~~

W. J. Cody and L. Stoltz (code from Netlib (specfun))

.. _
      : ://./elementary/dlgamma.htm
.. _
      : ://./elementary/gamma.htm


