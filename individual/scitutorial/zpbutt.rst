


zpbutt
======

Butterworth analog filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [pols,gain]=zpbutt(n,omegac)




Arguments
~~~~~~~~~

:n integer (filter order)
: :omegac real (cut-off frequency in Hertz)
: :pols resulting poles of filter
: :gain resulting gain of filter
:



Description
~~~~~~~~~~~

computes the poles of a Butterworth analog filter of order `n` and
cutoff frequency omegac transfer function H(s) is calculated by
`H(s)=gain/real(poly(pols,'s'))`



