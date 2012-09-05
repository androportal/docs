


frmag
=====

magnitude of FIR and IIR filters



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xm,fr]=frmag(sys,npts)
    [xm,fr]=frmag(num,den,npts)




Arguments
~~~~~~~~~

:sys a single input, single output discrete transfer function, or a
  polynomial or the vector of polynomial coefficients, the filter.
: :num a polynomial or the vector of polynomial coefficients, the
  numerator of the filter
: :den a polynomial or the vector of polynomial coefficients, the
  denominator of the filter (the default value is 1).
: :npts integer, the number of points in frequency response.
: :xm vector of magnitude of frequency response at the points `fr`.
: :fr points in the normalized frequency domain where magnitude is
  evaluated.
:



Description
~~~~~~~~~~~

calculates the magnitude of the frequency responses of FIR and IIR
filters. The filter description can be one or two vectors of
coefficients, one or two polynomials, or a single output discrete
transfer function.

the frequency discretisation is given by `fr=linspace(0,1/2,npts)`.



Examples
~~~~~~~~


::

    hz=`iir`_(3,'bp','cheb1',[.15 .25],[.08 .03]);
    [hzm,fr]=frmag(hz,256);
    `plot`_(fr,hzm)
    hz=`iir`_(3,'bp','ellip',[.15 .25],[.08 .03]);
    [hzm,fr]=frmag(hz,256);
    `plot`_(fr,hzm,'r')




See Also
~~~~~~~~


+ `iir`_ iir digital filter
+ `eqfir`_ minimax approximation of FIR filter
+ `repfreq`_ frequency response
+ `calfrq`_ frequency response discretization
+ `phasemag`_ phase and magnitude computation


.. _repfreq: repfreq.html
.. _eqfir: eqfir.html
.. _iir: iir.html
.. _calfrq: calfrq.html
.. _phasemag: phasemag.html


