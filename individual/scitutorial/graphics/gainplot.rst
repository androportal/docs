====
"gainplot"
====

Scilab Function Last update : 28/06/2004
**gainplot** - magnitude plot



Calling Sequence
~~~~~~~~~~~~~~~~

gainplot(sl,fmin,fmax [,step] [,comments] )
gainplot(frq,db,phi [,comments])
gainplot(frq, repf [,comments])




Parameters
~~~~~~~~~~


+ **sl** : list ( **syslin** SIMO linear system).
+ **fmin,fmax** : real scalars (frequency interval).
+ **step** : real (discretization step (logarithmic scale))
+ **comments** : string
+ **frq** : matrix (row by row frequencies)
+ **db,phi** : matrices (magnitudes and phases corresponding to
  **frq** )
+ **repf** : complex matrix. One row for each frequency response.




Description
~~~~~~~~~~~

Same as Bode but plots only the magnitude.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s')
    h=syslin('c',(s^2+2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01))
    gainplot(h,0.01,100,'(s^2+2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01)')
    clf()
    h1=h*syslin('c',(s^2+2*0.1*15.1*s+228.01)/(s^2+2*0.9*15*s+225))
    gainplot([h1;h],0.01,100,['h1';'h'])
     
      




See Also
~~~~~~~~

` **bode** `_,` **black** `_,` **nyquist** `_,` **freq** `_,`
**repfreq** `_,` **g_margin** `_,` **p_margin** `_,

.. _
      : ://./graphics/../control/repfreq.htm
.. _
      : ://./graphics/nyquist.htm
.. _
      : ://./graphics/../control/g_margin.htm
.. _
      : ://./graphics/black.htm
.. _
      : ://./graphics/bode.htm
.. _
      : ://./graphics/../control/p_margin.htm
.. _
      : ://./graphics/../control/freq.htm


