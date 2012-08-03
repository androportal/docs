====
"coth"
====

Scilab Function Last update : April 1993
**coth** - hyperbolic cotangent



Calling Sequence
~~~~~~~~~~~~~~~~

[t]=coth(x)




Description
~~~~~~~~~~~

the elements of vector **t** are the hyperbolic cotangent of elements
of the vector **x** .



Examples
~~~~~~~~


::

    
    
    x=[1,2*%i]
    t=exp(x);
    (t-ones(x)./t).\(t+ones(x)./t)
    coth(x)
     
      




See Also
~~~~~~~~

` **cotg** `_,

.. _
      : ://./elementary/cotg.htm


