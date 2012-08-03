====
"hrmt"
====

Scilab Function Last update : April 1993
**hrmt** - gcd of polynomials



Calling Sequence
~~~~~~~~~~~~~~~~

[pg,U]=hrmt(v)




Parameters
~~~~~~~~~~


+ **v** : row of polynomials i.e. **1** x **k** polynomial matrix
+ **pg** : polynomial
+ **U** : unimodular matrix polynomial




Description
~~~~~~~~~~~

**[pg,U]=hrmt(v)** returns a unimodular matrix **U** and **pg** = gcd
of row of polynomials **v** such that **v*U = [pg,0]** .



Examples
~~~~~~~~


::

    
    
    x=poly(0,'x');
    v=[x*(x+1),x^2*(x+1),(x-2)*(x+1),(3*x^2+2)*(x+1)];
    [pg,U]=hrmt(v);U=clean(U)
    det(U)
     
      




See Also
~~~~~~~~

` **gcd** `_,` **htrianr** `_,



Author
~~~~~~

S. Steer INRIA

.. _
      : ://./polynomials/htrianr.htm
.. _
      : ://./polynomials/gcd.htm


