


loadwave
========

load a sound wav file into scilab



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x=loadwave(filename);
    [x,y]=loadwave(filename);




Arguments
~~~~~~~~~

:filename a string. The path of the wav file to be loaded
: :x a matrix one line for each channel
: :y vector as [data format, number of channels, samples per second
  per channel, estimate of bytes per second needed, byte alignment of a
  basic sample block, bits per sample, length of sound data in bytes,
  bytes per sample (per channel)].
:



Description
~~~~~~~~~~~

Reads a `.wav` sound file into Scilab as a matrix. If y is given, it
is filled with information about the samples (See the message sent by
`loadwave`).



Examples
~~~~~~~~


::

    // At first we create 0.5 seconds of sound parameters.
    t=`soundsec`_(0.5);
    
    // Then we generate the sound: a two channels sound.
    s=[`sin`_(2*%pi*440*t);`sin`_(2*%pi*350*t)];
    `savewave`_(TMPDIR+'/foo.wav',s);
    s1=loadwave(TMPDIR+'/foo.wav');
    `max`_(`abs`_(s1-s))




See Also
~~~~~~~~


+ `savewave`_ save data into a sound wav file.
+ `analyze`_ frequency plot of a sound signal
+ `mapsound`_ Plots a sound map


.. _savewave: savewave.html
.. _analyze: analyze.html
.. _mapsound: mapsound.html


