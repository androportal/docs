


number_properties
=================

determine floating-point parameters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    pr = number_properties(prop)




Arguments
~~~~~~~~~

:prop string
: :pr real or boolean scalar
:



Description
~~~~~~~~~~~

This function may be used to get the characteristic numbers/properties
of the floating point set denoted here by `F(b,p,emin,emax)` (usually
the 64 bits float numbers set prescribe by IEEE 754). Numbers of `F`
are of the form:


::

    `sign`_ * m * b^e


`e` is the exponent and `m` the mantissa:


::

    m = d_1 b^(-1) + d_2 b^(-2) + .... + d_p b^(-p)


`d_i` the digits are in `[0, b-1]` and `e` in `[emin, emax]`, the
number is said "normalised" if `d_1 ~= 0`. The following may be
gotten:

:prop = "radix" then `pr` is the radix `b` of the set `F`
: :prop = "digits" then `pr` is the number of digits `p`
: :prop = "huge" then `pr` is the max positive float of `F`
: :prop = "tiny" then `pr` is the min positive normalised float of `F`
: :prop = "denorm" then `pr` is a boolean (%t if denormalised numbers
  are used)
: :prop = "tiniest" then if denorm = %t, `pr` is the min positive
  denormalised number else `pr` = tiny
: :prop = "eps" then `pr` is the epsilon machine ( generally (
  `b^(1-p))/2` ) which is the relative max error between a real `x`
  (such than `|x|` in `[tiny, huge]`) and `fl(x)`, its floating point
  approximation in `F`
: :prop = "minexp" then `pr` is `emin`
: :prop = "maxexp" then `pr` is `emax`
:



Remarks
~~~~~~~

This function uses the lapack routine dlamch to get the machine
parameters (the names (radix, digit, huge, etc...) are those
recommended by the LIA 1 standard and are different from the
corresponding lapack's ones) ; CAUTION: sometimes you can see the
following definition for the epsilon machine : `eps = b^(1-p)` but in
this function we use the traditionnal one (see prop = "eps" before)
and so `eps = (b^(1-p))/2` if normal rounding occurs and `eps =
b^(1-p)` if not.



Examples
~~~~~~~~


::

    b = number_properties("radix")
    eps = number_properties("eps")




See Also
~~~~~~~~


+ `nearfloat`_ get previous or next floating-point number
+ `frexp`_ dissect floating-point numbers into base 2 exponent and
  mantissa


.. _frexp: frexp.html
.. _nearfloat: nearfloat.html


