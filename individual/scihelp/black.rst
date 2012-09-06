


black
=====

Black-Nichols diagram of a linear dynamical system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    black( sl,[fmin,fmax] [,step] [,comments] )
    black( sl,frq [,comments] )
    black(frq,db,phi [,comments])
    black(frq,repf [,comments])




Arguments
~~~~~~~~~

:sl a continuous or discrete time SIMO linear dynamical system ( see:
  `syslin`_).
: :fmin,fmax real scalars (frequency bounds)
: :frq row vector or matrix (frequencies)
: :db,phi row vectors or matrices (modulus, phase)
: :repf row vectors or matrices (complex frequency response)
: :step real
: :comments string
:



Description
~~~~~~~~~~~

Black's diagram (Nichols'chart) for a linear system ( see: `syslin`_).
`sl` can be a continuous-time or discrete-time SIMO system. In case of
multi-output the outputs are plotted with different colors.

The frequencies are given by the bounds `fmin`, `fmax` (in Hz) or by a
row-vector (or a matrix for multi-output) `frq`.

`step` is the ( logarithmic ) discretization step. (see `calfrq`_ for
the choice of default value).

`comments` is a vector of character strings (captions).

`db,phi` are the matrices of modulus (in Db) and phases (in degrees).
(One row for each response).

`repf` matrix of complex numbers. One row for each response.

To plot the grid of iso-gain and iso-phase of `y/(1+y)` use
`nicolschart()`_.

Default values for `fmin` and `fmax` are `1.d-3`, `1.d+3` if `sl` is
continuous-time or `1.d-3`, `0.5`/sl.dt (nyquist frequency) if `sl` is
discrete-time.



Examples
~~~~~~~~


::

    //Black diagram
    s=`poly`_(0,'s');
    sl=`syslin`_('c',5*(1+s)/(.1*s^4+s^3+15*s^2+3*s+1))
    `clf`_();black(sl,0.01,10);





::

    //Black diagram with Nichols chart as a grid
    s=`poly`_(0,'s');
    Plant=`syslin`_('c',16000/((s+1)*(s+10)*(s+100)));
    //two degree of freedom PID
    tau=0.2;xsi=1.2;
    PID=`syslin`_('c',(1/(2*xsi*tau*s))*(1+2*xsi*tau*s+tau^2*s^2));
    `clf`_();
    black([Plant;Plant*PID ],0.01,100,["Plant";"Plant and PID corrector"]);
    //move the caption in the lower rigth corner
    ax=`gca`_();Leg=ax.children(1);
    Leg.legend_location="in_lower_right";
    `nicholschart`_(colors=`color`_('light gray')*[1 1])






See Also
~~~~~~~~


+ `nicholschart`_ Nichols chart
+ `bode`_ Bode plot
+ `nyquist`_ nyquist plot
+ `syslin`_ linear system definition
+ `calfrq`_ frequency response discretization
+ `datatips`_ Tool for placing and editing tips along the plotted
  curves.


.. _bode: bode.html
.. _nicholschart: nicholschart.html
.. _nyquist: nyquist.html
.. _syslin: syslin.html
.. _datatips: datatips.html
.. _calfrq: calfrq.html


