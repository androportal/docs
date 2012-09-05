


p_margin
========

phase margin and associated crossover frequency



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [phm,fr] = p_margin(h)
    phm=p_margin(h)




Arguments
~~~~~~~~~

:h a SISO linear system (see :`syslin`_).
: :phm a number, the phase margin in degree if it exists or an empty
  matrix.
: :fr a number, the corresponding frequency ( in hz) or an empty
  matrix.
:



Description
~~~~~~~~~~~

Given a SISO linear system in continuous or discrete time, `p_margin`
returns `phm`, the phase margin in degree of `h` and `fr`, the
achieved corresponding frequency in hz.

The phase margin is the values of the phase at frequency points where
the nyquist plot of `h` crosses the unit circle. In other words the
phase margin is the difference between the phase of the frequency
response of `h` and -180° when the gain of `h` is 1.

The algorithm uses polynomial root finder to solve the equations:

:h(s)*h(-s)=1 for the continuous time case.
: :h(z)*h(1/z)=1 for the discrete time case.
:



Examples
~~~~~~~~


::

    //continuous case
    h=`syslin`_('c',-1+%s,3+2*%s+%s^2)
    [p,fr]=p_margin(h)  
    [p,fr]=p_margin(h+0.7)  
    `show_margins`_(h+0.7,'nyquist')
    
    //discrete case
    h = `syslin`_(0.1,0.04798*%z+0.0464,%z^2-1.81*%z+0.9048);//ok
    [p ,f]=p_margin(h)
    `show_margins`_(h,'nyquist')




See Also
~~~~~~~~


+ `p_margin`_ gain margin and associated crossover frequency
+ `show_margins`_ display gain and phase margin and associated
  crossover frequencies
+ `repfreq`_ frequency response
+ `black`_ Black-Nichols diagram of a linear dynamical system
+ `bode`_ Bode plot
+ `chart`_ Nichols chart
+ `nyquist`_ nyquist plot


.. _p_margin: g_margin.html
.. _repfreq: repfreq.html
.. _show_margins: show_margins.html
.. _nyquist: nyquist.html
.. _black: black.html
.. _syslin: syslin.html
.. _bode: bode.html
.. _chart: chart.html


