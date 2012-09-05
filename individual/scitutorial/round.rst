


round
=====

round to nearest integer



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=round(x)




Arguments
~~~~~~~~~

:x real or complex matrix
: :y integer value matrix (or complex matrix with integer real and
  imaginary part)
:



Description
~~~~~~~~~~~

`round(x)` rounds the elements of `x` to the nearest integers.

In case of tie, this function rounds to infinities. That is, if `x` is
positive and is halfway between two integers, then `round(x)` is
rounded toward `%inf`. If `x` is negative and is halfway between two
integers, then `round(x)` is rounded toward `-%inf`. In other words,
if `x` is positive, then `round(x)` is equal to `int(x+0.5)`, and if
`x` is negative, then `round(x)` is equal to `int(x-0.5)`



Examples
~~~~~~~~


::

    // Notice that round(1.5)==2
    round([1.3 1.5 1.7 2.5 3.7])
    // Notice the result for x negative
    // Notice that round(-1.5)==-2
    round([-1.3 -1.5 -1.7 -2.5 -3.7])
    round([2.2+%i*23, %pi*%i, -%i ])




See Also
~~~~~~~~


+ `int`_ round towards zero
+ `floor`_ round down
+ `ceil`_ round up


.. _int: int.html
.. _floor: floor.html
.. _ceil: ceil.html


