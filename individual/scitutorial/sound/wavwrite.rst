====
"wavwrite"
====

Scilab Function Last update : 19/10/2005
**wavwrite** - writes .wav sound file



Calling Sequence
~~~~~~~~~~~~~~~~

wavwrite(y,wavfile)
wavwrite(y,Fs,wavfile)




Parameters
~~~~~~~~~~


+ **y** : real vector or matrix with entries in [-1,1].
+ **wavfile** : string (The .wav extension is appended if no extension
  is given)
+ **Fs** : integer, frequency sampling in Hz.




Description
~~~~~~~~~~~

Utility function to save **.wav** sound file. **wavwrite(y,wavfile)**
writes a sound file specified by the string wavfile. The data should
be arranged with one channel per column. Amplitude values outside the
range [-1,+1] are ignored.

**wavwrite(y,Fs,wavfile)** specifies in **Fs** the sample rate of the
data in Hertz.



Examples
~~~~~~~~


::

    
    
      A=matrix(1:6,2,3);
      wavwrite(A/6,TMPDIR+'/foo.wav');
      B=wavread(TMPDIR+'/foo.wav');
      maxi(abs(A- round(B*6)))
     
      




See Also
~~~~~~~~

` **auread** `_,` **wavread** `_,` **savewave** `_,` **analyze** `_,`
**mapsound** `_,

.. _
      : ://./sound/savewave.htm
.. _
      : ://./sound/analyze.htm
.. _
      : ://./sound/wavread.htm
.. _
      : ://./sound/auread.htm
.. _
      : ://./sound/mapsound.htm


