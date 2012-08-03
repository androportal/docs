====
"savewave"
====

Scilab Function Last update : 02/09/2005
**savewave** - save data into a sound wav file.



Calling Sequence
~~~~~~~~~~~~~~~~

savewave(filename,x [, rate ]);




Parameters
~~~~~~~~~~


+ **filename** : a string. The path of the output wav file
+ **x** : a mxn matrix where m is the number of channels and n the
  number of samples for each channel
+ **rate** : a scalar giving the sampling rate (number of sample per
  second) 22050 is the default value.




Description
~~~~~~~~~~~

save x into a wav sound file. you can transform other sound files into
wav file with the **sox** program.



Examples
~~~~~~~~


::

    
    // At first we create 0.5 seconds of sound parameters.
    t=soundsec(0.5);
    // Then we generate the sound.
    s=sin(2*%pi*440*t)+sin(2*%pi*220*t)/2+sin(2*%pi*880*t)/2;
    [nr,nc]=size(t);
    s(nc/2:nc)=sin(2*%pi*330*t(nc/2:nc));
    savewave(TMPDIR+'/foo.wav',s);
      




See Also
~~~~~~~~

` **loadwave** `_,` **analyze** `_,` **mapsound** `_,

.. _
      : ://./sound/analyze.htm
.. _
      : ://./sound/mapsound.htm
.. _
      : ://./sound/loadwave.htm


