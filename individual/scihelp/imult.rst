


imult
=====

multiplication by i the imaginary unitary



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=imult(x)




Arguments
~~~~~~~~~

:x real or complex scalar, vector or matrix
: :y complex scalar, vector or matrix
:



Description
~~~~~~~~~~~

`imult(x)` is a more efficient way to multiply x by i than y = %i*x,
without the problems occuring when x comprises "special" floating
point numbers as %inf and %nan.



Examples
~~~~~~~~


::

    z1 = imult(%inf)
    z2 = %i * %inf




