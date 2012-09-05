


coth
====

hyperbolic cotangent



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [t]=coth(x)




Arguments
~~~~~~~~~

:x real or complex vector or matrix.
: :t real or complex vector or matrix.
:



Description
~~~~~~~~~~~

The elements of `t` are the hyperbolic cotangent of elements of `x`.



Examples
~~~~~~~~


::

    x=[1,2*%i]
    t=`exp`_(x);
    (t-`ones`_(x)./t).\(t+`ones`_(x)./t)
    coth(x)




See Also
~~~~~~~~


+ `cotg`_ cotangent


.. _cotg: cotg.html


