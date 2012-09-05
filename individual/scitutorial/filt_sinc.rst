


filt_sinc
=========

samples of sinc function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x]=filt_sinc(n,fl)




Arguments
~~~~~~~~~

:n number of samples
: :fl cut-off frequency of the associated low-pass filter in Hertz.
: :x samples of the sinc function
:



Description
~~~~~~~~~~~

Calculate n samples of the function `sin(2*pi*fl*t)/(pi*t)` for
`t=-(n-1)/2:(n-1)/2` (i.e. centred around the origin).



Examples
~~~~~~~~


::

    `plot`_(filt_sinc(100,0.1))




See Also
~~~~~~~~


+ `sincd`_ digital sinc function or Direchlet kernel


.. _sincd: sincd.html


