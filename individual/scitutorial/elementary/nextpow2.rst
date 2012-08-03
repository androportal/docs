====
"nextpow2"
====

Scilab Function Last update : 2002
**nextpow2** - next higher power of 2.



Calling Sequence
~~~~~~~~~~~~~~~~

t=nextpow2(x)




Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **p** : integer vector or matrix




Description
~~~~~~~~~~~

If **x** is a scalar, **nextpow2(x)** returns the first **p** such
that **2^p >= abs(x)** . if **x** is a vector or a matrix
**nextpow2(x)** applies element-wise.



Examples
~~~~~~~~


::

    
    
    nextpow2(127)
    nextpow2(128)
    nextpow2(0:10)
     
      




See Also
~~~~~~~~

` **frexp** `_,

.. _
      : ://./elementary/frexp.htm


