


wavwrite
========

writes .wav sound file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    wavwrite(y, wavfile)
    wavwrite(y, Fs, wavfile)
    wavwrite(y, Fs, nbits, wavfile)




Arguments
~~~~~~~~~

:y real vector or matrix with entries in [-1,1].
: :wavfile string (The .wav extension is appended if no extension is
  given)
: :Fs integer, frequency sampling in Hz. 22500 is the default value.
: :nbits bit-depth 8, 16, 24, 32 bits. it describes the number of bits
  of information recorded for each sample. 16 is the default value.
:



Description
~~~~~~~~~~~

Utility function to save `.wav` sound file. `wavwrite(y,wavfile)`
writes a sound file specified by the string wavfile. The data should
be arranged with one channel per column. Amplitude values outside the
range [-1,+1] are ignored.

`wavwrite(y,Fs,wavfile)` specifies in `Fs` the sample rate of the data
in Hertz.



Examples
~~~~~~~~


::

    A=`matrix`_(1:6,2,3);
    wavwrite(A/6,TMPDIR+'/foo.wav');
    B=`wavread`_(TMPDIR+'/foo.wav');




See Also
~~~~~~~~


+ `auread`_ load .au sound file
+ `wavread`_ load .wav sound file
+ `savewave`_ save data into a sound wav file.
+ `analyze`_ frequency plot of a sound signal
+ `mapsound`_ Plots a sound map


.. _auread: auread.html
.. _analyze: analyze.html
.. _savewave: savewave.html
.. _wavread: wavread.html
.. _mapsound: mapsound.html


