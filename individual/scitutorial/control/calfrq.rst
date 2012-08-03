====
"calfrq"
====

Scilab Function Last update : April 1993
**calfrq** - frequency response discretization



Calling Sequence
~~~~~~~~~~~~~~~~

[frq,split]=calfrq(h,[fmin,fmax])




Parameters
~~~~~~~~~~


+ **h** : SISO linear system ( **syslin** list)
+ **fmin,fmax** : real scalars (min and max frequencies)
+ **frq** : row vector (discretization of interval)
+ **split** : vector of frq splitting points indexes




Description
~~~~~~~~~~~

frequency response discretization ; **frq** is the discretization of
**[fmin,fmax]** such that the peaks in the frequency response are well
represented.

Default values for **fmin** and **fmax** are **1.d-3** , **1.d+3** if
**h** is continuous-time or **1.d-3** , **1/(2*h('dt'))** if **h** is
discrete-time.

Singularities are located between **frq(split(k))** and
**frq(split(k)+1)** for **k>1** .



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s')
    h=syslin('c',(s^2+2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01))
    h1=h*syslin('c',(s^2+2*0.1*15.1*s+228.01)/(s^2+2*0.9*15*s+225)) 
    [f1,spl]=calfrq(h1,0.01,1000);
    rf=repfreq(h1,f1);
    plot2d(real(rf)',imag(rf)')
     
      




See Also
~~~~~~~~

` **bode** `_,` **black** `_,` **nyquist** `_,` **freq** `_,`
**repfreq** `_,` **logspace** `_,

.. _
      : ://./control/freq.htm
.. _
      : ://./control/../graphics/nyquist.htm
.. _
      : ://./control/../graphics/black.htm
.. _
      : ://./control/../elementary/logspace.htm
.. _
      : ://./control/repfreq.htm
.. _
      : ://./control/../graphics/bode.htm


