


savewave
========

save data into a sound wav file.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    savewave(filename,x [, rate , nbits]);




Arguments
~~~~~~~~~

:filename a string. The path of the output wav file
: :x a mxn matrix where m is the number of channels and n the number
  of samples for each channel
: :rate a scalar giving the sampling rate (number of sample per
  second) 22050 is the default value.
:



Description
~~~~~~~~~~~

save x into a wav sound file. you can transform other sound files into
wav file with the `sox` program.



Examples
~~~~~~~~


::

    // At first we create 0.5 seconds of sound parameters.
    t=`soundsec`_(0.5);
    
    // Then we generate the sound.
    s=`sin`_(2*%pi*440*t)+`sin`_(2*%pi*220*t)/2+`sin`_(2*%pi*880*t)/2;
    [nr,nc]=`size`_(t);
    s(nc/2:nc)=`sin`_(2*%pi*330*t(nc/2:nc));
    savewave(TMPDIR+'/foo.wav',s);




See Also
~~~~~~~~


+ `loadwave`_ load a sound wav file into scilab
+ `analyze`_ frequency plot of a sound signal
+ `mapsound`_ Plots a sound map


.. _loadwave: loadwave.html
.. _analyze: analyze.html
.. _mapsound: mapsound.html


