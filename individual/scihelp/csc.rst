


csc
===

Computes the element-wise cosecant of the argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = csc(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array with same dimensions as `x`.
:



Description
~~~~~~~~~~~

Computes the element-wise cosecant of the argument. The cosecant is a
periodic function defined as 1/sin. For real data the results are real
and in `]-%inf -1] U [1 %inf[`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`linspace`_(0.01,%pi-0.01,200)
    `clf`_();
    `plot`_(-x,csc(-x),x,csc(x))




See Also
~~~~~~~~


+ `sec`_ Compute the element-wise secant of the argument.
+ `cscd`_ Computes the element-wise cosecant of the argument given in
  degree.


.. _cscd: cscd.html
.. _sec: sec.html


