


squarewave
==========

generates a square wave with period 2*%pi



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x=squarewave(t [,percent])




Arguments
~~~~~~~~~

:t real vector, time discretization
: :x real vector, the wave value at each time point in set (-1,+1)
: :percent real positive scalar, the percent of the period in which
  the signal is positive. Defaut value is 50.
:



Description
~~~~~~~~~~~

`squarewave(t)` generates the vector of the values of the square wave
with period 2*%pi at each date given in the `t` vector.

`squarewave(t,percent)` generates a square wave such that `percent` is
the percent of the period in which the signal is positive.



Examples
~~~~~~~~


::

    t=(0:0.1:5*%pi)';
    `plot2d1`_('onn',t,[2*`sin`_(t),1.5*squarewave(t),squarewave(t,10)])




See Also
~~~~~~~~


+ `sin`_ sine function
+ `cos`_ cosine function


.. _cos: cos.html
.. _sin: sin.html


