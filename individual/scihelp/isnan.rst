


isnan
=====

check for "Not a Number" entries



Calling Sequence
~~~~~~~~~~~~~~~~


::

    r=isnan(x)




Arguments
~~~~~~~~~

:x real or complex vector or matrix r : boolean vector or matrix
:



Description
~~~~~~~~~~~

`isnan(x)` returns a boolean vector or matrix which contains true
entries corresponding with "Not a Number" `x` entries and false
entries corresponding with regular `x` entries.

In this paragraph, we give the reason of the existence of this
function. Consider the floating point number `x` and assume that we
want to know if this number is a Not A Number. The condition
`(x==%nan)` is false if `x` is equal to `%nan`. This is why the
function `isnan` is helpful: it allows to see if a floating point
number is a NaN, without actually comparing its value against `%nan`.



Examples
~~~~~~~~


::

    isnan([1 0.01 -%nan %inf-%inf])


In the following example, we see that `%nan` has very particular
comparison properties and compare the result with the `isnan`
function.


::

    %nan == %nan
    %nan <> %nan
    isnan(%nan)


In the following example, we extract the non-NaNs values `y` from the
array `x`.


::

    x = [1 2 %nan 3 %nan 4]
    k = `find`_(~isnan(x))
    y = x(k)




See Also
~~~~~~~~


+ `isinf`_ check for infinite entries


.. _isinf: isinf.html


