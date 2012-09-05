


cscd
====

Computes the element-wise cosecant of the argument given in degree.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x = cscd(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :x Real or complex array.
:



Description
~~~~~~~~~~~

The entries of `y` are the cosecant `1/sin` of the entries of `x`
given in degree. The results are real and in `]-%inf -1] U [1 %inf[`.
For entries equal to `n*180` with `n` integer, the result is infinite
(or an error depending on `ieee`_ mode). For entries equal to
`n*90`with `n` integer and odd the result is exactly 1 or -1.



Examples
~~~~~~~~


::

    `csc`_(%pi/4)
    cscd(90)




See Also
~~~~~~~~


+ `secd`_ Compute the element-wise secant of the argument given in
  degree.
+ `csc`_ Computes the element-wise cosecant of the argument.
+ `sind`_ sine function, argument in degree.


.. _ieee: ieee.html
.. _csc: csc.html
.. _secd: secd.html
.. _sind: sind.html


