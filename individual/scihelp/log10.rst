


log10
=====

base 10 logarithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=log10(x)




Arguments
~~~~~~~~~

:x vector or matrix
:



Description
~~~~~~~~~~~

`log10(x)` is the "element-wise" base 10 logarithm
`y(i,j)=log10(x(i,j))`.



Examples
~~~~~~~~


::

    10.^log10([1,%i,-1,-%i])




See Also
~~~~~~~~


+ `log`_ natural logarithm
+ `logm`_ square matrix logarithm
+ `hat`_ (^) exponentiation
+ `ieee`_ set floating point exception mode


.. _ieee: ieee.html
.. _log: log.html
.. _hat: hat.html
.. _logm: logm.html


