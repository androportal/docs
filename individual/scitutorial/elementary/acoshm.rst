====
"acoshm"
====

Scilab Function Last update : April 1993
**acoshm** - matrix hyperbolic inverse cosine



Calling Sequence
~~~~~~~~~~~~~~~~

t=acoshm(x)




Parameters
~~~~~~~~~~


+ **x,t** : real or complex square matrix




Description
~~~~~~~~~~~

acoshm is the matrix hyperbolic inverse cosine of the matrix x. Uses
the formula **t=logm(x+(x+eye())*sqrtm((x-eye())/(x+eye())))** For non
symmetric matrices result may be inaccurate.



Examples
~~~~~~~~


::

    
    
    A=[1,2;3,4];
    coshm(acoshm(A))
    A(1,1)=A(1,1)+%i;
    coshm(acoshm(A))
     
      




See Also
~~~~~~~~

` **acosh** `_,` **logm** `_,` **sqrtm** `_,

.. _
      : ://./elementary/acosh.htm
.. _
      : ://./elementary/sqrtm.htm
.. _
      : ://./elementary/logm.htm


