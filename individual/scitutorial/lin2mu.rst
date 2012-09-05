


lin2mu
======

linear signal to mu-law encoding



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mu=lin2mu(y)




Arguments
~~~~~~~~~

:y real vector
: :mu real vector
:



Description
~~~~~~~~~~~

Utility fct: converts linear signal to mu-law encoding. `mu =
lin2mu(y)` converts linear audio signal amplitudes in the range -1 <=
y <= 1 to mu-law in the range 0 <= mu <= 255.



See Also
~~~~~~~~


+ `mu2lin`_ mu-law encoding to linear signal


.. _mu2lin: mu2lin.html


