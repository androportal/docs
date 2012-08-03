====
"dscr"
====

Scilab Function Last update : April 1993
**dscr** - discretization of linear system



Calling Sequence
~~~~~~~~~~~~~~~~

[sld [,r]]=dscr(sl,dt [,m])




Parameters
~~~~~~~~~~


+ **sl** : **syslin** list containing **[A,B,C,D]** .
+ **dt** : real number, sampling period
+ **m** : covariance of the input noise (continuous time)(default
  value=0)
+ **r** : covariance of the output noise (discrete time) given if
  **m** is given as input
+ **sld** : sampled (discrete-time) linear system, **syslin** list




Description
~~~~~~~~~~~

Discretization of linear system. **sl** is a continuous-time system:

**dx/dt=A*x+B*u (+ noise)** .

**sld** is the discrete-time system obtained by sampling **sl** with
the sampling period **dt** .



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    Sys=syslin('c',[1,1/(s+1);2*s/(s^2+2),1/s])
    ss2tf(dscr(tf2ss(Sys),0.1))
     
      




See Also
~~~~~~~~

` **syslin** `_,` **flts** `_,` **dsimul** `_,

.. _
      : ://./control/../elementary/syslin.htm
.. _
      : ://./control/flts.htm
.. _
      : ://./control/dsimul.htm


