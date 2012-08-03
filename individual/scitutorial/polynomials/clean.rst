====
"clean"
====

Scilab Function Last update : April 1993
**clean** - cleans matrices (round to zero small entries)



Calling Sequence
~~~~~~~~~~~~~~~~

[B]=clean(A [,epsa [,epsr]])




Parameters
~~~~~~~~~~


+ **A** : a numerical matrix (scalar, polynomial, sparse...)
+ **epsa,epsr** : real numbers (default values resp. 1.d-10 and
  1.d-10)




Description
~~~~~~~~~~~

This function eliminates (i.e. set to zero) all the coefficients with
absolute value < **epsa** and relative value < **epsr** (relative
means relative w.r.t. 1-norm of coefficients) in a polynomial
(possibly matrix polynomial or rational matrix).

Default values are **epsa=1.d-10** and **epsr=1.d-10;**

For a constant (non polynomial) matrix **clean(A,epsa)** sets to zero
all entries of **A** smaller than **epsa** .



Examples
~~~~~~~~


::

    
    
    x=poly(0,'x');
    w=[x,1,2+x;3+x,2-x,x^2;1,2,3+x]/3;
    w*inv(w)
    clean(w*inv(w))
     
      




