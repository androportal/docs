


analyze
=======

frequency plot of a sound signal



Arguments
~~~~~~~~~

:fmin,fmax,rate,points scalars. default values
  fmin=100,fmax=1500,rate=22050,points=8192;
:



Description
~~~~~~~~~~~

Make a frequency plot of the signal `w` with sampling rate `rate`. The
data must be at least `points` long. The maximal frequency plotted
will be `fmax`, the minimal `fmin`.



Examples
~~~~~~~~


::

    // At first we create 0.5 seconds of sound parameters.
    t=`soundsec`_(0.5);
    
    // Then we generate the sound.
    s=`sin`_(440*t)+`sin`_(220*t)/2+`sin`_(880*t)/2;
    [nr,nc]=`size`_(t);
    s(nc/2:nc)=`sin`_(330*t(nc/2:nc));
    analyze(s);




