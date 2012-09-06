


dbphi
=====

frequency response to phase and magnitude representation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [db,phi] =dbphi(repf)




Arguments
~~~~~~~~~

:db,phi vector of gains (db) and phases (degrees)
: :repf vector of complex frequency response
:



Description
~~~~~~~~~~~

`db(k)` is the magnitude of `repf(k)` expressed in dB i.e.
`db(k)=20*log(abs(repf(k)))/log(10)` and `phi(k)` is the phase of
`repf(k)` expressed in degrees.



See Also
~~~~~~~~


+ `repfreq`_ frequency response
+ `bode`_ Bode plot


.. _bode: bode.html
.. _repfreq: repfreq.html


