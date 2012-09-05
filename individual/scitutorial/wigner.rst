


wigner
======

'time-frequency' wigner spectrum



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [tab]=wigner(x,h,deltat,zp)




Arguments
~~~~~~~~~

:tab wigner spectrum (lines correspond to the time variable)
: :x analyzed signal
: :h data window
: :deltat analysis time increment (in samples)
: :zp length of FFT's. `%pi/zp` gives the frequency increment.
:



Description
~~~~~~~~~~~

function which computes the 'time-frequency' wigner spectrum of a
signal.



