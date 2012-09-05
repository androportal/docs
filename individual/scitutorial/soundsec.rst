


soundsec
========

generates n sampled seconds of time parameter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    t=soundsec(n [,rate])




Arguments
~~~~~~~~~

:n an integer, the number of seconds to generate.
: :rate an integer, the number of samples per second.
:



Description
~~~~~~~~~~~

generates a vector coding time from 0 to `n`seconds at sampled rate
`rate`.



Examples
~~~~~~~~


::

    // At first we create 0.5 seconds of sound parameters.
    t=soundsec(0.5);
    
    // Then we generate the sound.
    s=`sin`_(2*%pi*440*t);
    `analyze`_(s,200,600,22050);




See Also
~~~~~~~~


+ `playsnd`_ sound player facility
+ `analyze`_ frequency plot of a sound signal


.. _playsnd: playsnd.html
.. _analyze: analyze.html


