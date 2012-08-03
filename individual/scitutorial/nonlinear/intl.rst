====
"intl"
====

Scilab Function Last update : April 1993
**intl** - Cauchy integral



Calling Sequence
~~~~~~~~~~~~~~~~

[y]=intl(a,b,z0,r,f)




Parameters
~~~~~~~~~~


+ **z0** : complex number
+ **a,b** : two real numbers
+ **r** : positive real number
+ **f** : "external" function




Description
~~~~~~~~~~~

If **f** is a complex-valued function, **intl(a,b,z0,r,f)** computes
the integral of **f(z)dz** along the curve in the complex plane
defined by **z0 + r.exp(%i*t)** for **a<=t<=b** .(part of the circle
with center **z0** and radius **r** with phase between **a** and **b**
)



See Also
~~~~~~~~

` **intc** `_,



Author
~~~~~~

F. D.

.. _
      : ://./nonlinear/intc.htm


