


sind
====

sine function, argument in degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=sind(x)




Arguments
~~~~~~~~~

:x real vector or matrix
: :t real vector or matrix with same dimensions as `x`
:



Description
~~~~~~~~~~~

For a vector or a matrix x , `sind(x)` is the sine of its elements
supposed to be given in degree. The results are in [-1 1]. For
integers `n`, `sind(n*180)` is exactly zero.



Examples
~~~~~~~~


::

    x=[0,30 45 60 90 360];
    sind(x)




See Also
~~~~~~~~


+ `sin`_ sine function
+ `sinm`_ matrix sine function


.. _sinm: sinm.html
.. _sin: sin.html


