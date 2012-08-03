====
"dlgamma"
====

Scilab Function Last update : September 1997
**dlgamma** - derivative of gammaln function, psi function



Calling Sequence
~~~~~~~~~~~~~~~~

y = dlgamma(x)




Parameters
~~~~~~~~~~


+ **x** : real vector
+ **y** : real vector with same size.




Description
~~~~~~~~~~~

**dlgamma(x)** evaluates, at all the elements of **x** the logarithmic
derivative of the gamma function which corresponds also to the
derivative of the gammaln function :


::

    
    
             d/dx (gamma(x)) / gamma(x) = d/dx (ln gamma(x))
         
        


**x** must be real. Also known as the psi function.



Examples
~~~~~~~~


::

    
    
    dlgamma(0.5)
    
     
      




See Also
~~~~~~~~

` **gamma** `_,` **gammaln** `_,



Author
~~~~~~

W. J. Cody (code from Netlib (specfun))

.. _
      : ://./elementary/gammaln.htm
.. _
      : ://./elementary/gamma.htm


