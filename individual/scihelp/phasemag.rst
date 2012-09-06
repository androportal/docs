


phasemag
========

phase and magnitude computation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [phi,db]=phasemag(z [,mod])




Arguments
~~~~~~~~~

:z matrix or row vector of complex numbers.
: :mod character string
    :mod='c' "continuous" representation between -infinity and +360
      degrees (default)
    : :mod='m' representation between -360 and 0 degrees
    :

: :phi phases (in degree) of `z`.
: :db magnitude (in Db)
:



Description
~~~~~~~~~~~

`phasemag` computes the phases and magnitudes of the entries of a
complex matrix. For `mod='c'` `phasemag` computes `phi(:,i+1)` to
minimize the distance with `phi(:,i)`, i.e. it tries to obtain a
"continuous representation" of the phase.

To obtain the phase between -%pi and %pi use
`phi=atan(imag(z),real(z))`



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    h=`syslin`_('c',1/((s+5)*(s+10)*(100+6*s+s*s)*(s+.3)));
    [frq,rf]=`repfreq`_(h,0.1,20,0.005);
    `scf`_();
    `plot2d`_(frq',phasemag(rf,'c')');
    `scf`_();
    `plot2d`_(frq',phasemag(rf,'m')');




See Also
~~~~~~~~


+ `repfreq`_ frequency response
+ `gainplot`_ magnitude plot
+ `atan`_ 2-quadrant and 4-quadrant inverse tangent
+ `bode`_ Bode plot


.. _gainplot: gainplot.html
.. _bode: bode.html
.. _repfreq: repfreq.html
.. _atan: atan.html


