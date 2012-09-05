


minus
=====

(-) subtraction operator, sign changes



Calling Sequence
~~~~~~~~~~~~~~~~


::

    X-Y
    -Y




Arguments
~~~~~~~~~

:X scalar or vector or matrix of numbers, polynomials or rationals. It
  may also be a `syslin` list.
: :Y scalar or vector or matrix of numbers, polynomials or rationals.
  It may also be a `syslin` list.
:



Description
~~~~~~~~~~~

Subtraction

For numeric operands subtraction as its usual meaning. If one of the
operands is a matrix and the other one a scalar then the operation is
performed element-wise. For `X - Y`, if `Y==[]` then `X` is returned;
if `X==[]` then `-Y` is returned.

Subtraction may also be defined for other data types through "soft-
coded" operations (see `overloading`_).



Examples
~~~~~~~~


::

    [1,2]-1
    []-2
    
    %s-2
    1/%s-2




See Also
~~~~~~~~


+ `addf`_ symbolic addition
+ `mtlb_mode`_ switch Matlab like operations
+ `plus`_ (+) addition operator
+ `overloading`_ display, functions and operators overloading
  capabilities


.. _mtlb_mode: mtlb_mode.html
.. _overloading: overloading.html
.. _plus: plus.html
.. _addf: addf.html


