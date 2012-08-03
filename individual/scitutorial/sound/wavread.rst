====
"wavread"
====

Scilab Function Last update : 13/07/2005
**wavread** - load .wav sound file



Calling Sequence
~~~~~~~~~~~~~~~~

y=wavread(wavfile)
y=wavread(wavfile,ext)
[y,Fs,bits]=wavread(wavfile)
[y,Fs,bits]=wavread(wavfile,ext)




Parameters
~~~~~~~~~~


+ **wavfile** : string (The .wav extension is appended if no extension
  is given)
+ **Fs** : integer, frequency sampling in Hz (number of samples per
  second).
+ **ext** : string ( **'size'** ) or integer (to read n samples) or 1
  x 2 integer vector [n1,n2] (to read from n1 to n2).




Description
~~~~~~~~~~~

Utility function to read **.wav** sound file. **wavread(wavfile)**
loads a sound file specified by the string wavfile, returning the
sampled data in y. Amplitude values are in the range [-1,+1]. Supports
multi-channel data in the following formats: 8-bit mu-law, 8-, 16-,
and 32-bit linear, and floating point.

**[y,Fs,bits]=wavread(wavfile)** returns the sample rate (Fs) in Hertz
and the number of bits per sample used to encode the data in the file.

**wavread(wavfile,n)** returns the first n samples from each channel.

**wavread(wavfile,[n1,n2])** returns samples n1 to n2.

**read(wavfile,'size')** returns the size of the audio data contained
in the file in place of the actual audio data, returning the vector as
[samples channels].



Examples
~~~~~~~~


::

    
    
      wavread('SCI/demos/signal/sound/chimes.wav','size')
      [y,Fs,bits]=wavread('SCI/demos/signal/sound/chimes.wav');Fs,bits
      subplot(2,1,1)
      plot2d(y(1,:)) // first channel 
      subplot(2,1,2)
      plot2d(y(2,:)) // second channel
      y=wavread('SCI/demos/signal/sound/chimes.wav',[1 5]) //the first five samples
     
      




See Also
~~~~~~~~

` **auread** `_,` **savewave** `_,` **analyze** `_,` **mapsound** `_,

.. _
      : ://./sound/savewave.htm
.. _
      : ://./sound/analyze.htm
.. _
      : ://./sound/auread.htm
.. _
      : ://./sound/mapsound.htm


