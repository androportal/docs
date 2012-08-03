====
"sound"
====

Scilab Function Last update : 02/09/2005
**sound** - sound player facility



Calling Sequence
~~~~~~~~~~~~~~~~

sound(y [,fs,bits,command)




Parameters
~~~~~~~~~~


+ **y** : real vector
+ **fs** : real number, sampling frequency in sample per second
  (default value is 22050)
+ **bits** : real number, number of bits (unused)
+ **command** : Only used on Unix systems it gives the name of the
  command to use for playing sound (wav) files. The defaut value is
  **aplay** . If set **/dev/audio** then a 8 bits mu-law raw sound file
  is created and send to **/dev/audio**




Description
~~~~~~~~~~~

**sound(y,fs)** plays the sound signal given by matrix **y** (with
sample frequency fs). In fact this function is just a wrapper for
**playsnd** . Values in y are assumed to be in the range -1.0 <= y <=
1.0. Values outside that range are truncated. The number of rows of
**y** gives the number of channels. **sound(y)** plays the sound at
the default sample rate of 22050 sample per second.
**sound(y,fs,nbits)** plays the sound using **nbits** bits/sample if
possible (it is in fact unused). Most platforms support bits=8 or 16.



Examples
~~~~~~~~


::

    
    
      // a two channel signal 
      y=loadwave('SCI/demos/signal/sound/chimes.wav');
      sound(y)
     
      




See Also
~~~~~~~~

` **playsnd** `_,

.. _
      : ://./sound/playsnd.htm


