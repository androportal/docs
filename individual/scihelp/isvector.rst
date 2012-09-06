


isvector
========

check if a variable is a vector



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=isvector(x)




Arguments
~~~~~~~~~

:x vector or matrix
: :t a boolean
:



Description
~~~~~~~~~~~

`isvector(x)` returns true if `x` is a vector (only one of its
dimension is different from 1).



Examples
~~~~~~~~


::

    isvector(`ones`_(10,1))
    isvector(1)




