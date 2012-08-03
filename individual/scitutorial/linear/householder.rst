====
"householder"
====

Scilab Function Last update : April 1993
**householder** - Householder orthogonal reflexion matrix



Calling Sequence
~~~~~~~~~~~~~~~~

u=householder(v [,w])




Parameters
~~~~~~~~~~


+ **v** : real or complex column vector
+ **w** : real or complex column vector with same size as **v** .
  Default value is **eye(v)**
+ **u** : real or complex column vector




Description
~~~~~~~~~~~

given 2 column vectors **v** , ** w** of same size,
**householder(v,w)** returns a unitary column vector **u** , such that
** (eye()-2*u*u')*v** is proportional to **w** . **(eye()-2*u*u')** is
the orthogonal Householder reflexion matrix .

**w** default value is ** eye(v)** . In this case vector **
(eye()-2*u*u')*v** is the vector ** eye(v)*norm(v)** .



See Also
~~~~~~~~

` **qr** `_,` **givens** `_,

.. _
      : ://./linear/qr.htm
.. _
      : ://./linear/givens.htm


