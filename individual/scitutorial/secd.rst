


secd
====

Compute the element-wise secant of the argument given in degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = secd(x)




Arguments
~~~~~~~~~

:x Real array.
: :y Real array.
:



Description
~~~~~~~~~~~

The entries of `y` are the secant `1/cos` of the entries of `x` given
in degree. The results are real and in `]-%inf -1] U [1 %inf[`. For
entries equal to `n*180` with `n` integer, the result is exactly `-1`
or `+1`. For entries equal to `n*90`with `n` integer and odd the
result is infinite (or an error depending on `ieee`_ mode).



Examples
~~~~~~~~


::

    secd(90)
    `sec`_(%pi/2)




See Also
~~~~~~~~


+ `cosd`_ element-wise cosine function, argument in degree
+ `sec`_ Compute the element-wise secant of the argument.


.. _ieee: ieee.html
.. _sec: sec.html
.. _cosd: cosd.html


