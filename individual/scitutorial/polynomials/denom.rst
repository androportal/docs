====
"denom"
====

Scilab Function Last update : April 1993
**denom** - denominator



Calling Sequence
~~~~~~~~~~~~~~~~

den=denom(r)




Parameters
~~~~~~~~~~


+ **r** : rational or polynomial or constant matrix.
+ **den** : polynomial matrix




Description
~~~~~~~~~~~

**den=denom(r)** returns the denominator of a rational matrix.

Since rationals are internally represented as
**r=list(['r','num','den','dt'],num,den,[])** , **denom(r** ) is the
same as **r(3)** , **r('den')** or **r.den**



See Also
~~~~~~~~

` **numer** `_,

.. _
      : ://./polynomials/numer.htm


