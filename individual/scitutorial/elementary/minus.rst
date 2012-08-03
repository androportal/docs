====
"minus"
====

Scilab Function Last update : April 1993
**minus** - (-) substraction operator, sign changes



Calling Sequence
~~~~~~~~~~~~~~~~

X-Y
-Y




Parameters
~~~~~~~~~~


+ **X** : scalar or vector or matrix of numbers, polynomials or
  rationals. It may also be a **syslin** list
+ **Y** : scalar or vector or matrix of numbers, polynomials or
  rationals. It may also be a **syslin** list




Description
~~~~~~~~~~~

Substraction

For numeric operands substraction as its usual meaning. If one of the
operands is a matrix and the other one a scalar the the operation is
performed element-wise. if **Y==[] X** is returned; if **X==[] -Y** is
returned.

Substraction may also be defined for other data types through "soft-
coded" operations.



Examples
~~~~~~~~


::

    
    
    [1,2]-1
    []-2
    
    %s-2
    1/%s-2
    "cat"+"enate"
     
      




See Also
~~~~~~~~

` **addf** `_,` **mtlb_mode** `_,

.. _
      : ://./elementary/addf.htm
.. _
      : ://./elementary/../programming/mtlb_mode.htm


