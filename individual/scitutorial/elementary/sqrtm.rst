====
"sqrtm"
====

Scilab Function Last update : April 1993
**sqrtm** - matrix square root



Calling Sequence
~~~~~~~~~~~~~~~~

y=sqrtm(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex square matrix




Description
~~~~~~~~~~~

**y=sqrt(x)** is the matrix square root of the **x** x matrix (
**x=y^2** ) Result may not be accurate if **x** is not symmetric.



Examples
~~~~~~~~


::

    
    
    x=[0 1;2 4]
    w=sqrtm(x); 
    norm(w*w-x)
    x(1,2)=%i;
    w=sqrtm(x);norm(w*w-x,1)
     
      




See Also
~~~~~~~~

` **expm** `_,` **sqroot** `_,

.. _
      : ://./elementary/../linear/expm.htm
.. _
      : ://./elementary/../linear/sqroot.htm


