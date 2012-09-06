


auwrite
=======

writes .au sound file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    auwrite(y,aufile)
    auwrite(y,Fs,aufile)
    auwrite(y,Fs,bits,aufile)
    auwrite(y,Fs,bits,method,aufile)




Arguments
~~~~~~~~~

:y real vector or matrix with entries in [-1,1].
: :aufile string (The .au extension is appended if no extension is
  given)
: :Fs integer, frequency sampling in Hz.
: :bits integer, number of bits in the encoding.
: :method string , `'mu'` (default) or `'linear'`, encoding method.
:



Description
~~~~~~~~~~~

Utility function to save `.au` sound file. `auwrite(y,aufile)` writes
a sound file specified by the string aufile. The data should be
arranged with one channel per column. Amplitude values outside the
range [-1,+1] are ignored. Supports multi-channel data for 8-bit mu-
law, and 8, 16, 32, 64 bits linear formats.

`auwrite(y,Fs,aufile)` specifies in `Fs` the sample rate of the data
in Hertz.

`auwrite(y,Fs,bits,aufile)` selects the number of bits in the encoder.
Allowable settings are bits in [8,16,32,64].
`auwrite(y,Fs,bits,method,aufile)` allows selection of the encoding
method, which can be either 'mu' or 'linear'. Note that bits must be 8
for 'mu' choice. The default method is 8-bits mu-law enconding.



Examples
~~~~~~~~


::

    A=`matrix`_(1:6,2,3);
    auwrite(A/6,22050,64,'linear',TMPDIR+'/foo.au');
    B=`auread`_(TMPDIR+'/foo.au');
    `max`_(`abs`_(A- `round`_(B*6)))




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


