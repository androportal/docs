


dsimul
======

state space discrete time simulation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    y=dsimul(sl,u)




Arguments
~~~~~~~~~

:sl `syslin` list describing a discrete time linear system
: :u real matrix of appropriate dimension
: :y output of `sl`
:



Description
~~~~~~~~~~~

Utility function. If `[A,B,C,D]=abcd(sl)` and `x0=sl('X0')`, `dsimul`
returns `y=C*ltitr(A,B,u,x0)+D*u` i.e. the time response of `sl` to
the input `u`. `sl` is assumed to be in state space form ( `syslin`
list).



Examples
~~~~~~~~


::

    z=`poly`_(0,'z');
    h=(1-2*z)/(z^2-0.2*z+1);
    sl=`tf2ss`_(h);
    u=`zeros`_(1,20);u(1)=1;
    x1=dsimul(sl,u)   //Impulse response
    u=`ones`_(1,20);
    x2=dsimul(sl,u);  //Step response




See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `flts`_ time response (discrete time, sampled system)
+ `ltitr`_ discrete time response (state space)


.. _ltitr: ltitr.html
.. _syslin: syslin.html
.. _flts: flts.html


