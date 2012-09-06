


How to design an elliptic filter
================================

How to design an elliptic filter (analog and digital)



Description
~~~~~~~~~~~

The goal is to design a simple analog and digital elliptic filter.



Designing an analog elliptic filter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are several possibilities to design an elliptic lowpass filter.
We can use `analpf`_ or `zpell`_. We will use zpell to produce the
poles and zeros of the filter. Once we have got these poles and zeros,
we will have to translate this representation into a `syslin`_ one.

And then, the filter can be represented in bode plot.


::

    // analog elliptic (Bessel), order 2, cutoff 1 Hz
    Epsilon = 3;  // ripple of filter in pass band (0<epsilon<1)
    A       = 60; // attenuation of filter in stop band (A<1)
    OmegaC  = 10; // pass band cut-off frequency in Hertz
    OmegaR  = 50; // stop band cut-off frequency in Hertz
    
    // Generate the filter
    [_zeros,pols,gain] = `zpell`_(3,60,10,50);
    
    // Generate the equivalent linear system of the filter
    num   = gain * `real`_(`poly`_(_zeros,'s'));;
    den   = `real`_(`poly`_(pols,'s'));
    elatf = `syslin`_('c',num,den);
    
    // Plot the resulting filter
    `bode`_(elatf,0.01,100);
    `title`_('Analog Elliptic filter');


Bode plot is only suited for analog filters.

If you want to design a highpass, bandpass or bandstop filter, you can
first design a lowpass and then transfrom this lowpass filter using
the `trans`_ function.



Designing a digital elliptic filter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now, let's focus on how to produce a digital lowpass elliptic filter.

We can produce two kinds of digital filters:


+ an IIR (Infinite Impulse Response). To compute such a filter, we can
  use the following functions:

    + `iir`_
    + `eqiir`_

+ a FIR (Finite Impulse Response). To compute such a filter, we can
  use the following functions:

    + `eqfir`_
    + `ffilt`_
    + `wfir`_
    + `fsfirlin`_



For our demonstration, we will use the `iir`_ function.


::

    Order   = 2; // The order of the filter
    Fs      = 1000; // The sampling frequency
    Fcutoff = 40;   // The cutoff frequency
    
    // We design a low pass elliptic filter
    hz = `iir`_(Order,'lp','ellip',[Fcutoff/Fs/2 0],[0.1 0.1]);
    
    // We compute the frequency response of the filter
    [frq,repf]=`repfreq`_(hz,0:0.001:0.5);
    [db_repf, phi_repf] = `dbphi`_(repf);
    
    // And plot the bode like representation of the digital filter
    `subplot`_(2,1,1);
    `plot2d`_(Fs*frq,db_repf);
    `xtitle`_('Obtained Frequency Response (Magnitude)');
    `subplot`_(2,1,2);
    `plot2d`_(Fs*frq,phi_repf);
    `xtitle`_('Obtained Frequency Response (Phase in degree)');


Here is the representation of the digital elliptic filter.

To represent the filter in phase and magnitude, we need first to
convert the discrete impulse response into magnitude and phase using
the `dbphi`_ function. This convertion is done using a set of
normalized frequencies.



Filtering a signal using the digital filter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Designing a filter is a first step. Once done, this filter will be
used to transform a signal. To get rid of some noise for example.

In the following examples, we will filter a gaussian noise.


::

    `rand`_('normal');
    Input = `rand`_(1,1000); // Produce a random gaussian noise
    t     = 1:1000;
    
    sl= `tf2ss`_(hz); // From transfert function to syslin representation
    y = `flts`_(Input,sl); // Filter the signal
    
    `subplot`_(2,1,1);
    `plot`_(t,Input);
    `xtitle`_('The gaussian noise','t','y');
    `subplot`_(2,1,2);
    `plot`_(t,y);
    `xtitle`_('The filtered gaussian noise','t','y');


Here is the representation of the signal before and after filtering.

As we can see in the result, the high frequencies of the noise have
been removed and it remains only the low frequencies. The signal is
still noisy, but it contains mainly low frequencies.



Filtering a signal using the analog filter
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To filter a signal using an analog filter, we have two strategies:


+ transform the analog filter into a discrete one using the `dscr`_
  function
+ apply the `csim`_ function to filter the signal


First, we try using the `dscr`_ + `flts`_ functions.


::

    `rand`_('normal');
    Input = `rand`_(1,1000); // Produce a random gaussian noise
    n     = 1:1000; // The sample index
    
    eldtf = `dscr`_(elatf,1/100); // Discretization of the linear filter
    y = `flts`_(Input,eldtf); // Filter the signal
    
    `subplot`_(2,1,1);
    `plot`_(n,Input);
    `xtitle`_('The gaussian noise','n','y');
    `subplot`_(2,1,2);
    `plot`_(n,y);
    `xtitle`_('The filtered gaussian noise','n','y');


Here is the representation of the signal before and after filtering
using the `dscr`_ + `flts`_ approach.

Next, we use the `csim`_ function.


::

    `rand`_('normal');
    Input = `rand`_(1,1000); // Produce a random gaussian noise
    t     = 1:1000;
    t     = t*0.01; // Convert sample index into time steps
    
    y = `csim`_(Input,t,elatf); // Filter the signal
    
    `subplot`_(2,1,1);
    `plot`_(t,Input);
    `xtitle`_('The gaussian noise','t','y');
    `subplot`_(2,1,2);
    `plot`_(t,y);
    `xtitle`_('The filtered gaussian noise','t','y');


Here is the representation of the signal before and after filtering
using the `csim`_ approach.

The main difference between the `dscr`_ + `flts`_ approach and the
`csim`_ approach: the `dscr`_ + `flts`_ uses samples whereas the
`csim`_ functions uses time steps.



See Also
~~~~~~~~


+ `bode`_ Bode plot
+ `iir`_ iir digital filter
+ `poly`_ polynomial definition
+ `syslin`_ linear system definition
+ `zpell`_ lowpass elliptic filter
+ `flts`_ time response (discrete time, sampled system)
+ `tf2ss`_ transfer to state-space
+ `dscr`_ discretization of linear system
+ `csim`_ simulation (time response) of linear system
+ `trans`_ low-pass to other filter transform
+ `analpf`_ create analog low-pass filter


.. _dscr: dscr.html
.. _wfir: wfir.html
.. _tf2ss: tf2ss.html
.. _bode: bode.html
.. _ffilt: ffilt.html
.. _eqiir: eqiir.html
.. _eqfir: eqfir.html
.. _syslin: syslin.html
.. _fsfirlin: fsfirlin.html
.. _iir: iir.html
.. _poly: poly.html
.. _zpell: zpell.html
.. _analpf: analpf.html
.. _flts: flts.html
.. _csim: csim.html
.. _dbphi: dbphi.html
.. _trans: trans.html


