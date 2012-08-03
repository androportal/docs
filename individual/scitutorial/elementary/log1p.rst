====
"log1p"
====

Scilab Function Last update : July 2001
**log1p** - computes with accuracy the natural logarithm of its
argument added by one



Calling Sequence
~~~~~~~~~~~~~~~~

y=log1p(x)




Parameters
~~~~~~~~~~


+ **x** : real scalar, vector or matrix
+ **y** : real scalar, vector or matrix




Description
~~~~~~~~~~~

**logp1(x)** is the "element-wise" log(1+x) function. **y(i,j)=log(1 +
x(i,j))** . This function, defined for x > -1, must be used if we want
to compute log(1+x) with accuracy for |x| << 1.



Examples
~~~~~~~~


::

    
    
    format("e",24)
    log(1.001)
    log1p(0.001)
    log(1 + 1.e-7)
    log1p(1.e-7)
    log(1 + 1.e-20)
    log1p(1.e-20)
    format("v") //reset default format
       
      




See Also
~~~~~~~~

` **log** `_,



Author
~~~~~~

B.P.;

.. _
      : ://./elementary/log.htm


