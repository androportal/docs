


gainplot
========

magnitude plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    gainplot(sl,fmin,fmax [,step] [,comments] )
    gainplot(frq,db,phi [,comments])
    gainplot(frq, repf [,comments])




Arguments
~~~~~~~~~

:sl list ( `syslin` SIMO linear system).
: :fmin,fmax real scalars (frequency interval).
: :step real (discretization step (logarithmic scale))
: :comments string
: :frq matrix (row by row frequencies)
: :db,phi matrices (magnitudes and phases corresponding to `frq`)
: :repf complex matrix. One row for each frequency response.
:



Description
~~~~~~~~~~~

Same as `bode`_ but plots only the magnitude.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s')
    h1=`syslin`_('c',(s^2+2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01))
    h2=`syslin`_('c',(s^2+2*0.1*15.1*s+228.01)/(s^2+2*0.9*15*s+225))
    `clf`_();gainplot([h1;h2],0.01,100,..
                       ["$\frac{s^2+18 s+100}{s^2+6.06 s+102.1}$";
                        "$\frac{s^2+3.02 s+228.01}{s^2+27 s+225}$"])
    `title`_('Gainplot')






See Also
~~~~~~~~


+ `bode`_ Bode plot
+ `black`_ Black-Nichols diagram of a linear dynamical system
+ `nyquist`_ nyquist plot
+ `repfreq`_ frequency response
+ `g_margin`_ gain margin and associated crossover frequency
+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.


.. _g_margin: g_margin.html
.. _bode: bode.html
.. _nyquist: nyquist.html
.. _black: black.html
.. _datatips: datatips.html
.. _repfreq: repfreq.html


