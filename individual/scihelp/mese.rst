


mese
====

maximum entropy spectral estimation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [sm,fr]=mese(x [,npts]);




Arguments
~~~~~~~~~

:x Input sampled data sequence
: :npts Optional parameter giving number of points of `fr` and `sm`
  (default is 256)
: :sm Samples of spectral estimate on the frequency grid `fr`
: :fr npts equally spaced frequency samples in `[0,.5)`
:



Description
~~~~~~~~~~~

Calculate the maximum entropy spectral estimate of `x`



