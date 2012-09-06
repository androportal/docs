


dscr
====

discretization of linear system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [sld [,r]]=dscr(sl,dt [,m])




Arguments
~~~~~~~~~

:sl `syslin` list containing `[A,B,C,D]`.
: :dt real number, sampling period
: :m covariance of the input noise (continuous time)(default value=0)
: :r covariance of the output noise (discrete time) given if `m` is
  given as input
: :sld sampled (discrete-time) linear system, `syslin` list
:



Description
~~~~~~~~~~~

Discretization of linear system. `sl` is a continuous-time system:

`dx/dt=A*x+B*u (+ noise)`.

`sld` is the discrete-time system obtained by sampling `sl` with the
sampling period `dt`.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    Sys=`syslin`_('c',[1,1/(s+1);2*s/(s^2+2),1/s])
    `ss2tf`_(dscr(`tf2ss`_(Sys),0.1))




See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `flts`_ time response (discrete time, sampled system)
+ `dsimul`_ state space discrete time simulation


.. _dsimul: dsimul.html
.. _syslin: syslin.html
.. _flts: flts.html


