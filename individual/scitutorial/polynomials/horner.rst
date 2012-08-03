====
"horner"
====

Scilab Function Last update : April 1993
**horner** - polynomial/rational evaluation



Calling Sequence
~~~~~~~~~~~~~~~~

horner(P,x)




Parameters
~~~~~~~~~~


+ **P** : polynomial or rational matrix
+ **x** : real number or polynomial or rational




Description
~~~~~~~~~~~

evaluates the polynomial or rational matrix **P = P(s)** when the
variable **s** of the polynomial is replaced by **x** :

**horner(P,x)** = **P(x)**

Example (Bilinear transform): Assume **P = P(s)** is a rational matrix
then the rational matrix **P((1+s)/(1-s))** is obtained by
**horner(P,(1+s)/(1-s))** .

To evaluate a rational matrix at given frequencies use preferably the
**freq** primitive.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');M=[s,1/s];
    horner(M,1)
    horner(M,%i)
    horner(M,1/s)
     
      




See Also
~~~~~~~~

` **freq** `_,` **repfreq** `_,` **evstr** `_,

.. _
      : ://./polynomials/../control/repfreq.htm
.. _
      : ://./polynomials/../programming/evstr.htm
.. _
      : ://./polynomials/../control/freq.htm


