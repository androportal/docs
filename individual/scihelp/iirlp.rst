


iirlp
=====

Lp IIR filter optimization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [cost,grad,ind]=iirlp(x,ind,p,[flag],lambda,omega,ad,wa,td,wt)




Arguments
~~~~~~~~~

:x 1X2 vector of the module and argument of the poles and the zeros of
  the filters
: :flag string : `'a'` for amplitude, 'gd' for group delay; default
  case for amplitude and group delay.
: :omega frequencies where the filter specifications are given
: :wa,wt weighting functions for the amplitude and the group delay
: :lambda weighting (with `1-lambda`) of the costs ( `'a'` and `'gd'`
  for getting the global cost.
: :ad, td desired amplitude and group delay
: :cost, grad criterium and gradient values
:



Description
~~~~~~~~~~~

optimization of IIR filters for the Lp criterium for the amplitude
and/or the group delay. (Rabiner & Gold pp270-273).



