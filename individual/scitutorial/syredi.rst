


syredi
======

Design of iir filters, syredi code interface



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [fact,b2,b1,b0,c1,c0,zzeros,zpoles]=syredi(ityp,iapro,om,deltap,deltas)




Arguments
~~~~~~~~~

:itype integer, the filter type: 1 stands for low-pass, 2 for high-
  pass, 3 for band-pass, 4 for stop-band.
: :iappro integer, the design approximation type: 1 stands for
  butterworth, 2 for elliptic, 3 for Chebytchev1, 4 for Chebytchev2.
: :om 4-vector of cutoff frequencies (in radians)
  `om=[om1,om2,om3,om4]`, `` `0<= om1 <= om2 <= om3 <= om4 <= pi` . When
  `ftype`='lp' or `'hp'`, `om3` and `om4` are not used and may be set to
  0.
: :deltap a real scalar, the ripple in the passband. `0< deltap <1`
: :deltas a real scalar, the ripple in the stopband. `0< deltas <1`
: :gain scalar, the filter gain
: :b2 real row vector, degree 2 coefficients of numerators.
: :b1 real row vector, degree 1 coefficients of numerators.
: :b0 real row vector, degree 0 coefficients of numerators.
: :c1 real row vector, degree 1 coefficients of denominators.
: :c0 real row vector, degree 0 coefficients of denominators.
: :zzeros complex row vector, filter zeros in the z-domain
: :zpoles complex row vector, filter poles in the z-domain
:



Description
~~~~~~~~~~~

Computes iir filter approximation. The result is given as a set of
second order transfer functions
`Hi=(b0(i)+b1(i)*z+b2(i)*z^2)/(c0(i)+c1(i)*z+z^2)` and also as a
poles, zeros, gain representation.

The filter obtained is `h=fact*H1*...*Hn`.



Remark
~~~~~~

This built-in function is mainly intended to be used by the `eqiir`_
function.



References
~~~~~~~~~~

The syredi code is derived from doredi package written by Guenter F.
Dehner, Institut fuer Nachrichtentechnik Universitaet Erlangen-
Nuernberg, Germany.

Dehner,G.F. 1979, DOREDI: Program for Design and Optimization of
REcursive DIgital filters-Programs for Digital Signal Processing,
ed:Digital Signal Processing committee of IEEE Acoustics, Speech and
Signal Processing Society.

For DOREDI.f source code see
http://michaelgellis.tripod.com/dsp/pgm25.html



Examples
~~~~~~~~


::

    [fact,b2,b1,b0,c1,c0,zzeros,zpoles]=syredi(1,4,[2*%pi/10,4*%pi/10,0,0],0.02,0.001);
    h=fact*(b0+b1*%z+b2*%z^2)./(c0+c1*%z+%z^2)




See Also
~~~~~~~~


+ `eqiir`_ Design of iir filters


.. _eqiir: eqiir.html


