


chart
=====

Nichols chart



Calling Sequence
~~~~~~~~~~~~~~~~


::

    chart([flags])
    chart(gain [,flags])
    chart(gain,phase [,flags])




Arguments
~~~~~~~~~

:gain real vector ( gains (in DB))
: :phase real vector (phases (in degree))
: :flags a list of at most 4 flags list(sup [,leg [,cm [,cphi]]])
    :sup 1 indicates superposition on the previous plot 0 no superposition
      is done
    : :leg 1 indicates that legends are drawn, o: no legends
    : :cm color index for gain curves
    : :cphi color index for phase curves
    :

:



Description
~~~~~~~~~~~

plot the Nichols'chart: iso-gain and iso-phase contour of y/(1+y) in
phase/gain plane

`chart` may be used in cunjunction with `black`_.

The default values for `gain` and `phase` are respectively :

`[-12 -8 -6 -5 -4 -3 -2 -1.4 -1 -.5 0.25 0.5 0.7 1 1.4 2 2.3 3 4 5 6 8
12]`

`[-(1:10) , -(20:10:160)]`



Examples
~~~~~~~~


::

    s=`poly`_(0,'s')
    h=`syslin`_('c',(s^2+2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01))
    `black`_(h,0.01,100)
    chart(`list`_(1,0,2,3));
    
    `clf`_()
    h1=h*`syslin`_('c',(s^2+2*0.1*15.1*s+228.01)/(s^2+2*0.9*15*s+225))
    `black`_([h1;h],0.01,100,['h1';'h'])
    `set`_(`gca`_(),'data_bounds',[-180 -30;180 30]) //enlarge the frame
    chart(`list`_(1,0));




See Also
~~~~~~~~


+ `nyquist`_ nyquist plot
+ `black`_ Black-Nichols diagram of a linear dynamical system


.. _nyquist: nyquist.html
.. _black: black.html


