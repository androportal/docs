====
"g_margin"
====

Scilab Function Last update : April 1993
**g_margin** - gain margin



Calling Sequence
~~~~~~~~~~~~~~~~

[gm [,fr]]=g_margin(h)




Parameters
~~~~~~~~~~


+ **h** : **syslin** list representing a linear system in state-space
  or transfer form




Description
~~~~~~~~~~~

returns **gm** , the gain margin in dB of **h** (SISO plant) and
**fr** , the achieved corresponding frequency in hz. The gain margin
is values of the system gain at points where the nyquist plot crosses
the negative real axis.



Examples
~~~~~~~~


::

    
    
    h=syslin('c',-1+%s,3+2*%s+%s^2)
    [g,fr]=g_margin(h)
    [g,fr]=g_margin(h-10)
    nyquist(h-10)
     
      




See Also
~~~~~~~~

` **p_margin** `_,` **black** `_,` **chart** `_,` **nyquist** `_,

.. _
      : ://./control/../graphics/black.htm
.. _
      : ://./control/p_margin.htm
.. _
      : ://./control/../graphics/nyquist.htm
.. _
      : ://./control/../graphics/chart.htm


