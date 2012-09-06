


freson
======

peak frequencies



Calling Sequence
~~~~~~~~~~~~~~~~


::

    fr=freson(h)




Arguments
~~~~~~~~~

:h `syslin` list
: :fr vector of peak frequencies in Hz
:



Description
~~~~~~~~~~~

returns the vector of peak frequencies in Hz for the SISO plant `h`



Examples
~~~~~~~~


::

    h=`syslin`_('c',-1+%s,(3+2*%s+%s^2)*(50+0.1*%s+%s^2))
    fr=freson(h)
    `bode`_(h)
    g=20*`log`_(`abs`_(`repfreq`_(h,fr)))/`log`_(10)




See Also
~~~~~~~~


+ `frep2tf`_ transfer function realization from frequency response
+ `zgrid`_ zgrid plot
+ `h_norm`_ H-infinity norm


.. _h_norm: h_norm.html
.. _zgrid: zgrid.html
.. _frep2tf: frep2tf.html


