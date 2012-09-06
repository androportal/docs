


analpf
======

create analog low-pass filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [hs,pols,zers,gain]=analpf(n,fdesign,rp,omega)
    hs=analpf(n,fdesign,rp,omega)




Arguments
~~~~~~~~~

:n positive integer : filter order
: :fdesign a string : that indicated the filter design method:

    + "butt" is for Butterworth filter.
    + "cheb1" is for Chebyshev type I filter.
    + "cheb2" is for Chebyshev type II filter (also called inverse
      Chebyshev filter).
    + "ellip" is for elliptic filter.

: :rp a 2-vector of ripples values for "cheb1", "cheb2" and "ellip"
filters. It's elements value must respect `0<rp(1),rp(2)<1`.

    + For "cheb1" filters only `rp(1)` is used. The passband ripple is
      between `1-rp(1)` and `1`.
    + For "cheb2" filters only `rp(2)` is used. The stopband ripple is
      between `0` and `rp(2)`.
    + For "ellip" filters `rp(1)` and `rp(2)` are both used. The passband
      ripple is between `1-rp(1)` and `1` while the stopband ripple is
      between `0` and `rp(2)`.

: :omega cut-off frequency of low-pass filter in rd/s
: :hs the rational polynomial transfer function (see `syslin`_). Is is
  `hs=gain*syslin("c",real(poly(zers,"s")), real(poly(pols,"s")))`
: :pols a row vector: the poles of transfer function
: :zers a row vector: zeros of transfer function
: :gain a scalar: the gain of transfer function
:



Description
~~~~~~~~~~~

This Creates analog low-pass filter with cut-off pulsation at omega.
It is a driver over the `zpbutt`_, `zpch1`_, `zpch2`_ and `zpell`_
functions.

The Butterworth filter has no ripples in the passband and slowly rolls
off towards zero in the stopband. Butterworth filters have a
monotonically changing magnitude function with omega, unlike other
filter types that have non-monotonic ripple in the passband and/or the
stopband. Butterworth filters have a more linear phase response in the
pass-band than the others.

Chebyshev filters have a steeper roll-off and more passband ripple
(type I) or stopband ripple (type II) than Butterworth filters.
Chebyshev filters have the property that they minimize the error
between the idealized and the actual filter characteristic over the
range of the filter, but with ripples in the passband.

Elliptic filter have equalized ripple behavior in both the passband
and the stopband. The amount of ripple in each band is independently
adjustable, and no other filter of equal order can have a faster
transition in gain between the passband and the stopband, for the
given values of ripple.



Examples
~~~~~~~~


::

    //Evaluate magnitude response of the filter
    fcut=5; //hz
    n=7;//filter order
    hc1=analpf(n,'cheb1',[0.1 0],fcut*2*%pi);
    hc2=analpf(n,'cheb2',[0 0.1],fcut*2*%pi);
    he=analpf(n,'ellip',[0.1 0.1],fcut*2*%pi);
    hb=analpf(n,'butt',[0 0],fcut*2*%pi);
    hc1.dt='c';hc2.dt='c';he.dt='c';hb.dt='c';
    `clf`_();
    [fr, hf]=`repfreq`_(hc1,0,15);
    `plot`_(fr,`abs`_(hf),'b')
    [fr, hf]=`repfreq`_(hc2,0,15);
    `plot`_(fr,`abs`_(hf),'y')
    [fr, hf]=`repfreq`_(he,0,15);
    `plot`_(fr,`abs`_(hf),'r')
    [fr, hf]=`repfreq`_(hb,0,15);
    `plot`_(fr,`abs`_(hf),'c')
    
    `legend`_(["Chebyshev I","Chebyshev II","Elliptic","Butterworth"]);
    `xgrid`_()
    `xlabel`_("Frequency (Hz)")
    `ylabel`_("Gain")
    `title`_("Analog filters of order 7")






See Also
~~~~~~~~


+ `repfreq`_ frequency response
+ `bode`_ Bode plot
+ `csim`_ simulation (time response) of linear system
+ `syslin`_ linear system definition


.. _repfreq: repfreq.html
.. _zpch1: zpch1.html
.. _zpbutt: zpbutt.html
.. _zpch2: zpch2.html
.. _zpell: zpell.html
.. _syslin: syslin.html
.. _bode: bode.html
.. _csim: csim.html


