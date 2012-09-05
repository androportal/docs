


asind
=====

sine inverse, results in degree



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=asind(x)




Arguments
~~~~~~~~~

:x real vector/matrix. Elements must be in `[-1 1]` .
: :t real vector/matrix with same dimensions as `x`
:



Description
~~~~~~~~~~~

The entries of `t` are sine inverse of the corresponding entries of
`x`. Definition domain is [-1, 1]. The results are in [-90 90];



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[-1 0 1 `sqrt`_(2)/2 -`sqrt`_(2)/2 `sqrt`_(3)/2 -`sqrt`_(3)/2];
    asind(x)




See Also
~~~~~~~~


+ `sin`_ sine function
+ `sind`_ sine function, argument in degree.
+ `sinm`_ matrix sine function
+ `asinm`_ matrix wise sine inverse


.. _sinm: sinm.html
.. _asinm: asinm.html
.. _sind: sind.html
.. _sin: sin.html


