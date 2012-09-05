


playsnd
=======

sound player facility



Calling Sequence
~~~~~~~~~~~~~~~~


::

    []=playsnd(y)
    []=playsnd(y,rate,bits [,command])




Arguments
~~~~~~~~~

:y A matrix. Each line descibe a channel
: :fs real number, sampling frequency (default value is 22050).
: :bits real number, number of bits (usually 8 or 16). Unused yet.
: :command Only used on Unix systems it gives the name of the command
  to use for playing sound (wav) files. The defaut value is `play`. If
  set `/dev/audio` then a 8 bits mu-law raw sound file is created and
  send to `/dev/audio`
:



Description
~~~~~~~~~~~

Plays a multi channel signal given by a Scilab matrix were sound is
sampled at rate given by `rate`.



Examples
~~~~~~~~


::

    // a two channel signal 
    y=`loadwave`_("SCI/modules/sound/demos/chimes.wav");
    playsnd(y)




See Also
~~~~~~~~


+ `lin2mu`_ linear signal to mu-law encoding
+ `wavread`_ load .wav sound file


.. _lin2mu: lin2mu.html
.. _wavread: wavread.html


