


exp
===

element-wise exponential



Calling Sequence
~~~~~~~~~~~~~~~~


::

    exp(X)




Arguments
~~~~~~~~~

:X scalar, vector or matrix with real or complex entries.
:



Description
~~~~~~~~~~~

`exp(X)` is the (element-wise) exponential of the entries of `X`.



Examples
~~~~~~~~


::

    x=[1,2,3+%i];
    `log`_(exp(x))  //element-wise
    2^x
    exp(x*`log`_(2))




See Also
~~~~~~~~


+ `expm`_ square matrix exponential
+ `log`_ natural logarithm


.. _expm: expm.html
.. _log: log.html


