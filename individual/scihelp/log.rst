


log
===

natural logarithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=log(x)




Arguments
~~~~~~~~~

:x constant vector or constant matrix
:



Description
~~~~~~~~~~~

`log(x)` is the "element-wise" logarithm `y(i,j)=log(x(i,j))`. For
matrix logarithm see `logm`_.



Examples
~~~~~~~~


::

    `exp`_(log([1,%i,-1,-%i]))




See Also
~~~~~~~~


+ `exp`_ element-wise exponential
+ `logm`_ square matrix logarithm
+ `log10`_ base 10 logarithm
+ `ieee`_ set floating point exception mode


.. _ieee: ieee.html
.. _log10: log10.html
.. _logm: logm.html
.. _exp: exp.html


