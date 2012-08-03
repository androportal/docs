====
"imult"
====

Scilab Function Last update : July 2001
**imult** - multiplication by i the imaginary unitary



Calling Sequence
~~~~~~~~~~~~~~~~

y=imult(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex scalar, vector or matrix
+ **y** : complex scalar, vector or matrix




Description
~~~~~~~~~~~

**imult(x)** is a more efficient way to multiply x by i than y = %i*x,
without the problems occuring when x comprises "special" floating
point numbers as %inf and %nan.



Examples
~~~~~~~~


::

    
    
    z1 = imult(%inf)
    z2 = %i * %inf
     
      




Author
~~~~~~

B.P.;



