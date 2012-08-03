====
"p_margin"
====

Scilab Function Last update : April 1993
**p_margin** - phase margin



Calling Sequence
~~~~~~~~~~~~~~~~

[phm,fr]=p_margin(h)
phm=p_margin(h)




Parameters
~~~~~~~~~~


+ **h** : SISO linear system ( **syslin** list).
+ **phm** : phase margin (in degree)
+ **fr** : corresponding frequency (hz)




Description
~~~~~~~~~~~

The phase margin is the values of the phase at points where the
nyquist plot of **h** crosses the unit circle.



Examples
~~~~~~~~


::

    
    
    h=syslin('c',-1+%s,3+2*%s+%s^2)
    [p,fr]=p_margin(h)  
    [p,fr]=p_margin(h+0.7)  
    nyquist(h+0.7)
    t=(0:0.1:2*%pi)';plot2d(sin(t),cos(t),-3,'000')
     
      




See Also
~~~~~~~~

` **chart** `_,` **black** `_,` **g_margin** `_,` **nyquist** `_,



Author
~~~~~~

S. S.

.. _
      : ://./control/../graphics/chart.htm
.. _
      : ://./control/../graphics/nyquist.htm
.. _
      : ://./control/../graphics/black.htm
.. _
      : ://./control/g_margin.htm


