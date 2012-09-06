


mapsound
========

Plots a sound map



Calling Sequence
~~~~~~~~~~~~~~~~


::

    mapsound (w,dt,fmin,fmax,simpl,rate)




Arguments
~~~~~~~~~

:dt,fmin,fmax,simpl,rate scalars. default values
  dt=0.1,fmin=100,fmax=1500,simpl=1,rate=22050;
:



Description
~~~~~~~~~~~

Plots a sound map for a sound. It does FFT at time increments dt.
`rate` is the sampling rate. `simpl` points are collected for speed
reasons. `fmin` and `fmax` are used for graphic boundaries.



Examples
~~~~~~~~


::

    // At first we create 0.5 seconds of sound parameters.
    t=`soundsec`_(0.5);
    
    // Then we generate the sound.
    s=`sin`_(440*t)+`sin`_(220*t)/2+`sin`_(880*t)/2;
    [nr,nc]=`size`_(t);
    s(nc/2:nc)=`sin`_(330*t(nc/2:nc));
    mapsound(s);




