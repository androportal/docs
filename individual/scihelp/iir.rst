


iir
===

iir digital filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    hz=iir(n,ftype,fdesign,frq,delta)
    [p,z,g]=iir(n,ftype,fdesign,frq,delta)




Arguments
~~~~~~~~~

:n positive number witn inteher value, the filter order.
: :ftype string specifying the filter type, the possible values are:
  `'lp'` for low-pass, `'hp'` for high pass, `'bp'` for band pass and
  `'sb'` for stop band.
: :fdesign string specifying the analog filter design, the possible
  values are: `'butt'`, `'cheb1'`, `'cheb2'` and `'ellip'`
: :frq 2-vector of discrete cut-off frequencies (i.e., `0<frq<.5`).
  For `'lp'` and `'hp'` filters only `frq(1)` is used. For `'bp'` and
  `'sb'` filters `frq(1)` is the lower cut-off frequency and `frq(2)` is
  the upper cut-off frequency
: :delta 2-vector of error values for `cheb1`, `cheb2`, and `ellip`
filters where only `delta(1)` is used for `cheb1` case, only
`delta(2)` is used for `cheb2` case, and `delta(1)` and `delta(2)` are
both used for `ellip` case. `0<delta(1),delta(2)<1`

    + for `cheb1` filters `1-delta(1)<ripple<1` in passband
    + for `cheb2` filters `0<ripple<delta(2)` in stopband
    + for `ellip` filters `1-delta(1)<ripple<1` in passband and
      `0<ripple<delta(2)` in stopband

: :hz a single input single output discrete transfer function, the low
  pass filter
: :p vector of transformed filter zeros.
: :z vector of transformed filter poles.
: :g a scalar: transformed filter gain.
:



Description
~~~~~~~~~~~

function which designs an iir digital filter using `analog filter`_
designs and `bilinear transformation`_ .



Examples
~~~~~~~~


::

    hz=iir(3,'bp','ellip',[.15 .25],[.08 .03]);
    [hzm,fr]=`frmag`_(hz,256);
    `plot2d`_(fr',hzm')
    `xtitle`_('Discrete IIR filter band pass  0.15 < fr < 0.25 ',' ',' ');
    q=`poly`_(0,'q');     //to express the result in terms of the delay operator q=z^-1
    hzd=`horner`_(hz,1/q) 
    
    //Poles Zeros Gain filter representation
    [p,z,g]=iir(3,'bp','ellip',[.15 .25],[.08 .03]);
    g*`poly`_(z,'z')/`poly`_(p,'z')




See Also
~~~~~~~~


+ `eqfir`_ minimax approximation of FIR filter
+ `eqiir`_ Design of iir filters
+ `analpf`_ create analog low-pass filter
+ `bilt`_ bilinear or biquadratic transform SISO system given by a
  zero/poles representation


.. _bilt: bilt.html
.. _eqfir: eqfir.html
.. _analpf: analpf.html
.. _eqiir: eqiir.html


