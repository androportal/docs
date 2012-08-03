====
"sinhm"
====

Scilab Function Last update : April 1993
**sinhm** - matrix hyperbolic sine



Calling Sequence
~~~~~~~~~~~~~~~~

t=sinhm(x)




Parameters
~~~~~~~~~~


+ **x,t** : real or complex square matrix




Description
~~~~~~~~~~~

sinhm(x) is the matrix hyperbolic sine of the matrix x.
**t=(expm(x)-expm(-x))/2**



Examples
~~~~~~~~


::

    
    
    A=[1,2;2,3]
    asinhm(sinhm(A))
    A(1,1)=%i;sinhm(A)-(expm(A)-expm(-A))/2   //Complex case
     
      




See Also
~~~~~~~~

` **sinh** `_,

.. _
      : ://./elementary/sinh.htm


