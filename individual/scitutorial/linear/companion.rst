====
"companion"
====

Scilab Function Last update : April 1993
**companion** - companion matrix



Calling Sequence
~~~~~~~~~~~~~~~~

A=companion(p)




Parameters
~~~~~~~~~~


+ **p** : polynomial or vector of polynomials
+ **A** : square matrix




Description
~~~~~~~~~~~

Returns a matrix **A** with characteristic polynomial equal to **p**
if **p** is monic. If **p** is not monic the characteristic polynomial
of **A** is equal to **p/c** where **c** is the coefficient of largest
degree in **p** .

If **p** is a vector of monic polynomials, **A** is block diagonal,
and the characteristic polynomial of the ith block is **p(i)** .



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    p=poly([1,2,3,4,1],'s','c')
    det(s*eye()-companion(p))
    roots(p)
    spec(companion(p))
     
      




See Also
~~~~~~~~

` **spec** `_,` **poly** `_,` **randpencil** `_,



Author
~~~~~~

F.D.

.. _
      : ://./linear/spec.htm
.. _
      : ://./linear/../programming/poly.htm
.. _
      : ://./linear/randpencil.htm


