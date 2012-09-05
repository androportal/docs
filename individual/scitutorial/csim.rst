


csim
====

simulation (time response) of linear system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [y [,x]]=csim(u,t,sl,[x0 [,tol]])




Arguments
~~~~~~~~~

:u function, list or string (control)
: :t real vector specifying times with, `t(1)` is the initial time (
  `x0=x(t(1))`).
: :sl list ( `syslin`)
: :y a matrix such that `y=[y(t(i)]`, i=1,..,n
: :x a matrix such that `x=[x(t(i)]`, i=1,..,n
: :tol a 2 vector [atol rtol] defining absolute and relative
  tolerances for ode solver (see ode)
:



Description
~~~~~~~~~~~

simulation of the controlled linear system `sl`. `sl` is assumed to be
a continuous-time system represented by a `syslin` list.

`u` is the control and `x0` the initial state.

`y` is the output and `x` the state.

The control can be:

1. a function : `[inputs]=u(t)`

2. a list : `list(ut,parameter1,....,parametern)` such that:
`inputs=ut(t,parameter1,....,parametern)` ( `ut` is a function)

3. the string `"impuls"` for impulse response calculation (here `sl`
is assumed SISO without direct feed through and `x0=0`)

4. the string `"step"` for step response calculation (here `sl` is
assumed SISO without direct feed-through and `x0=0`)

5. a vector giving the values of u corresponding to each t value.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');`rand`_('seed',0);w=`ssrand`_(1,1,3);w('A')=w('A')-2*`eye`_();
    t=0:0.05:5;
    //impulse(w) = step (s * w)
    `clf`_(0);`xset`_("window",0);`show_window`_();
    `plot2d`_([t',t'],[(csim('step',t,`tf2ss`_(s)*w))',0*t'])
    `clf`_(1);`xset`_("window",1);`show_window`_();
    `plot2d`_([t',t'],[(csim('impulse',t,w))',0*t'])
    //step(w) = impulse (s^-1 * w)
    `clf`_(3);`xset`_("window",3);`show_window`_();
    `plot2d`_([t',t'],[(csim('step',t,w))',0*t'])
    `clf`_(4);`xset`_("window",4);`show_window`_();
    `plot2d`_([t',t'],[(csim('impulse',t,`tf2ss`_(1/s)*w))',0*t'])
    
    //input defined by a time function
    `deff`_('u=input(t)','u=abs(sin(t))')
    `clf`_();`plot2d`_([t',t'],[(csim(`input`_,t,w))',0*t'])




See Also
~~~~~~~~


+ `syslin`_ linear system definition
+ `dsimul`_ state space discrete time simulation
+ `flts`_ time response (discrete time, sampled system)
+ `ltitr`_ discrete time response (state space)
+ `rtitr`_ discrete time response (transfer matrix)
+ `ode`_ ordinary differential equation solver
+ `impl`_ differential algebraic equation


.. _rtitr: rtitr.html
.. _ode: ode.html
.. _syslin: syslin.html
.. _impl: impl.html
.. _dsimul: dsimul.html
.. _ltitr: ltitr.html
.. _flts: flts.html


