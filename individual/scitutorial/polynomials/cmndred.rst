====
"cmndred"
====

Scilab Function Last update : April 1993
**cmndred** - common denominator form



Calling Sequence
~~~~~~~~~~~~~~~~

[n,d]=cmndred(num,den)




Parameters
~~~~~~~~~~


+ **num, den** : two polynomial matrices of same dimensions




Description
~~~~~~~~~~~

**[n,d]=cmndred(num,den)** computes a polynomial matrix **n** and a
common denominator polynomial **d** such that:

**n/d=num./den**

The rational matrix defined by **num./den** is **n/d**



See Also
~~~~~~~~

` **simp** `_,` **clean** `_,

.. _
      : ://./polynomials/simp.htm
.. _
      : ://./polynomials/clean.htm


