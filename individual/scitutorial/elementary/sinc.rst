====
"sinc"
====

Scilab Function Last update : April 1993
**sinc** - sinc function



Calling Sequence
~~~~~~~~~~~~~~~~

t=sinc(x)




Parameters
~~~~~~~~~~


+ **x** : real or complex vector or matrix
+ **t** : real or complex vector or matrix




Description
~~~~~~~~~~~

If **x** is a vector or a matrix, **t=sinc(x)** is the vector or
matrix such that **t(i)=sin(x(i))/x(i)** if **x(i)~=0** and **t(i)=1**
if **x(i)==0**



Examples
~~~~~~~~


::

    
    
    x=linspace(-10,10,3000);
    plot2d(x,sinc(x))
     
      




See Also
~~~~~~~~

` **sin** `_,` **cos** `_,

.. _
      : ://./elementary/sin.htm
.. _
      : ://./elementary/cos.htm


