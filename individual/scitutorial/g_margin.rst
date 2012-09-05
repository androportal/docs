


g_margin
========

gain margin and associated crossover frequency



Calling Sequence
~~~~~~~~~~~~~~~~


::

    gm=g_margin(h)
    [gm,fr]=g_margin(h)




Arguments
~~~~~~~~~

:h a SISO linear system (see :`syslin`_).
: :gm a number, the gain margin (in dB) if any of `Inf`
: :fr a number, the associated frequency in hertz, or an empty matrix
  if the gain margin does not exist.
:



Description
~~~~~~~~~~~

Given a SISO linear system in continuous or discrete time, `g_margin`
returns `gm`, the gain margin in dB of `h` and `fr`, the achieved
corresponding frequency in hz.

The gain margin, if it exists, is the minimal value of the system gain
at points where the nyquist plot crosses the negative real axis. In
other words the gain margin is `20*log10(1/g)` where `g` is the open
loop gain of `h` when the frequency response phase of `h` equals -180°

The algorithm uses polynomial root finder to solve the equations:

:h(s)=h(-s) for the continuous time case.
: :h(z)=h(1/z) for the discrete time case.
:



Examples
~~~~~~~~


::

    h=`syslin`_('c',-1+%s,3+2*%s+%s^2) //continuous time case
    [g,fr]=g_margin(h)
    [g,fr]=g_margin(h-10)
    `nyquist`_(h-10)
    
    h = `syslin`_(0.1,0.04798*%z+0.0464,%z^2-1.81*%z+0.9048);//discrete time case
    [g ,fr]=g_margin(h);
    `show_margins`_(h)




See Also
~~~~~~~~


+ `p_margin`_ phase margin and associated crossover frequency
+ `show_margins`_ display gain and phase margin and associated
  crossover frequencies
+ `repfreq`_ frequency response
+ `black`_ Black-Nichols diagram of a linear dynamical system
+ `bode`_ Bode plot
+ `chart`_ Nichols chart
+ `nyquist`_ nyquist plot


.. _p_margin: p_margin.html
.. _repfreq: repfreq.html
.. _show_margins: show_margins.html
.. _nyquist: nyquist.html
.. _black: black.html
.. _syslin: syslin.html
.. _bode: bode.html
.. _chart: chart.html


