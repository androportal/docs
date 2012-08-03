====
"mapsound"
====

Scilab Function Last update : April 1993
**mapsound** - Plots a sound map



Calling Sequence
~~~~~~~~~~~~~~~~

mapsound (w,dt,fmin,fmax,simpl,rate)




Parameters
~~~~~~~~~~


+ **dt,fmin,fmax,simpl,rate** : scalars. default values
  dt=0.1,fmin=100,fmax=1500,simpl=1,rate=22050;




Description
~~~~~~~~~~~

Plots a sound map for a sound. It does FFT at time increments dt.
**rate** is the sampling rate. **simpl** points are collected for
speed reasons. **fmin** and **fmax** are used for graphic boundaries.



Examples
~~~~~~~~


::

    
    
    // At first we create 0.5 seconds of sound parameters.
    t=soundsec(0.5);
    // Then we generate the sound.
    s=sin(440*t)+sin(220*t)/2+sin(880*t)/2;
    [nr,nc]=size(t);
    s(nc/2:nc)=sin(330*t(nc/2:nc));
    mapsound(s);
     
      




