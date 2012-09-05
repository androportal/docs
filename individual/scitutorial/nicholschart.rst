


nicholschart
============

Nichols chart



Calling Sequence
~~~~~~~~~~~~~~~~


::

    nicholschart([ modules [,args [,colors]]])



::






Arguments
~~~~~~~~~

:modules real vector ( modules (in dB))
: :args real vector (phases (in degree))
: :colorss a scalar or a vector, the color indices for isogain and iso
  phase curves
:



Description
~~~~~~~~~~~

plot the Nichols'chart: iso-module and iso-argument contours of
`y/(1+y)` in `y` phase/gain plane

`nicholschart` may be used in cunjunction with `black`_.

The default values for `modules` and `args` are respectively :

`[-12 -8 -6 -5 -4 -3 -2 -1.4 -1 -.5 0.25 0.5 0.7 1 1.4 2 2.3 3 4 5 6 8
12]`

`[-(1:10) , -(20:10:160)]`



Examples
~~~~~~~~


::

    //Nichols chart
    `clf`_()
    nicholschart(modules=[-6 -3 -1 1 3 6], args=[-1 -20 20 40 80 160 180]);





::

    //Black diagram with Nichols chart as a grid
    s=`poly`_(0,'s');
    Plant=`syslin`_('c',16000/((s+1)*(s+10)*(s+100)));
    //two degree of freedom PID
    tau=0.2;xsi=1.2;
    PID=`syslin`_('c',(1/(2*xsi*tau*s))*(1+2*xsi*tau*s+tau^2*s^2));
    `clf`_();
    `black`_([Plant;Plant*PID ],0.01,100,["Plant";"Plant and PID corrector"]);
    //move the caption in the lower rigth corner
    ax=`gca`_();Leg=ax.children(1);
    Leg.legend_location="in_lower_right";
    nicholschart(colors=`color`_('light gray')*[1 1])






See Also
~~~~~~~~


+ `black`_ Black-Nichols diagram of a linear dynamical system
+ `nyquist`_ nyquist plot
+ `hallchart`_ Draws the Hall chart


.. _nyquist: nyquist.html
.. _black: black.html
.. _hallchart: hallchart.html


