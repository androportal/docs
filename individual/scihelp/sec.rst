


sec
===

Compute the element-wise secant of the argument.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y = sec(x)




Arguments
~~~~~~~~~

:x Real or complex array.
: :y Real or complex array.
:



Description
~~~~~~~~~~~

Compute the element-wise secant of the argument. The secant is a
periodic function defined as 1/cos. For real data the results are real
and in `]-%inf -1] U [1 %inf[`.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[0 %pi/3 2*%pi/3 %pi/4 3*%pi/4 %pi/6 5*%pi/6 %pi];
    sec(x)
    x=`linspace`_(-%pi,%pi,100)
    `plot`_(x,sec(x))




See Also
~~~~~~~~


+ `cos`_ cosine function
+ `secd`_ Compute the element-wise secant of the argument given in
  degree.




Used Functions
~~~~~~~~~~~~~~

This function uses the `cos` function.

.. _secd: secd.html
.. _cos: cos.html


