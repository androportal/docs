


sinm
====

matrix sine function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=sinm(x)




Arguments
~~~~~~~~~

:x real or complex square matrix
:



Description
~~~~~~~~~~~

`sinm(x)` is matrix sine of x matrix.



Examples
~~~~~~~~


::

    A=[1,2;2,4];
    sinm(A)+0.5*%i*(`expm`_(%i*A)-`expm`_(-%i*A))




See Also
~~~~~~~~


+ `sin`_ sine function
+ `asinm`_ matrix wise sine inverse


.. _asinm: asinm.html
.. _sin: sin.html


