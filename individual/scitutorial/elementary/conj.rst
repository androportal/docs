====
"conj"
====

Scilab Function Last update : April 1993
**conj** - conjugate



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=conj(x)




Parameters
~~~~~~~~~~


+ **x,y** : real or complex matrix.




Description
~~~~~~~~~~~

**conj(x)** is the complex conjugate of **x** .



Examples
~~~~~~~~


::

    
    
    x=[1+%i,-%i;%i,2*%i];
    conj(x)
    x'-conj(x)  //x'  is conjugate transpose
     
      




