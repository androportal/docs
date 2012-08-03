====
"determ"
====

Scilab Function Last update : 09/06/2006
**determ** - determinant of polynomial matrix



Calling Sequence
~~~~~~~~~~~~~~~~

res=determ(W [,k])




Parameters
~~~~~~~~~~


+ **W** : real square polynomial matrix
+ **k** : integer (upper bound for the degree of the determinant of W)




Description
~~~~~~~~~~~

returns the determinant of a real polynomial matrix (computation made
by FFT if W size is greater than 2*2).

**res=determ(W [,k])** **k** is an integer larger than the actual
degree of the determinant of **W** .

The default value of **k** is the smallest power of 2 which is larger
than **n*maxi(degree(W))** .

Method (Only if W size is greater than 2*2) : evaluate the determinant
of **W** for the Fourier frequencies and apply inverse FFT to the
coefficients of the determinant.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    w=s*rand(10,10);
    determ(w)
    det(coeff(w,1))*s^10
     
      




See Also
~~~~~~~~

` **det** `_,` **detr** `_,` **coffg** `_,



Author
~~~~~~

F.D.

.. _
      : ://./polynomials/detr.htm
.. _
      : ://./polynomials/../linear/det.htm
.. _
      : ://./polynomials/coffg.htm


