


mu2lin
======

mu-law encoding to linear signal



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

Utility fct: `y=mu2lin(mu)` converts mu-law encoded 8-bit audio
signals, stored in the range 0 <= mu <= 255, to linear signal
amplitude in the range -s < y < s where s = 32124/32768 ~= .9803. The
input mu is often obtained using mget(...,'uc') to read byte-encoded
audio files. Translation of C program by Craig Reese:
IDA/Supercomputing Research Center Joe Campbell: Department of Defense



See Also
~~~~~~~~


+ `mu2lin`_ mu-law encoding to linear signal


.. _mu2lin: mu2lin.html


