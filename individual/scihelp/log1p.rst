


log1p
=====

computes with accuracy the natural logarithm of its argument added by
one



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=log1p(x)




Arguments
~~~~~~~~~

:x real scalar, vector or matrix
: :y real scalar, vector or matrix
:



Description
~~~~~~~~~~~

`log1p(x)` is the "element-wise" `log(1+x)` function. `y(i,j)=log(1 +
x(i,j))`. This function, defined for `x` > -1, must be used if we want
to compute `log(1+x)` with accuracy for `|x|` << 1.



Examples
~~~~~~~~


::

    `format`_("e",24)
    `log`_(1.001)
    log1p(0.001)
    `log`_(1 + 1.e-7)
    log1p(1.e-7)
    `log`_(1 + 1.e-20)
    log1p(1.e-20)
    `format`_("v") //reset default format




See Also
~~~~~~~~


+ `log`_ natural logarithm


.. _log: log.html


