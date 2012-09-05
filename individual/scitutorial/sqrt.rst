


sqrt
====

square root



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=sqrt(x)




Arguments
~~~~~~~~~

:x real or complex scalar or vector/matrix
:



Description
~~~~~~~~~~~

`sqrt(x)` is the vector/matrix of the square root of the `x` elements.
Result is complex if element of `x` is negative.



Examples
~~~~~~~~


::

    A = `matrix`_(4:4:16,2,2)
    sqrt(A)
    sqrt(-1)




See Also
~~~~~~~~


+ `hat`_ (^) exponentiation
+ `sqrtm`_ matrix square root


.. _sqrtm: sqrtm.html
.. _hat: hat.html


