====
"csim"
====

Scilab Function Last update : April 1993
**csim** - simulation (time response) of linear system



Calling Sequence
~~~~~~~~~~~~~~~~

[y [,x]]=csim(u,t,sl,[x0 [,tol]])




Parameters
~~~~~~~~~~


+ **u** : function, list or string (control)
+ **t** : real vector specifying times with, **t(1)** is the initial
  time ( **x0=x(t(1))** ).
+ **sl** : list ( **syslin** )
+ **y** : a matrix such that **y=[y(t(i)]** , i=1,..,n
+ **x** : a matrix such that **x=[x(t(i)]** , i=1,..,n
+ **tol** : a 2 vector [atol rtol] defining absolute and relative
  tolerances for ode solver (see ode)




Description
~~~~~~~~~~~

simulation of the controlled linear system **sl** . **sl** is assumed
to be a continuous-time system represented by a **syslin** list.

**u** is the control and **x0** the initial state.

**y** is the output and **x** the state.

The control can be:

1. a function : **[inputs]=u(t)**

2. a list : **list(ut,parameter1,....,parametern)** such that:
**inputs=ut(t,parameter1,....,parametern)** ( **ut** is a function)

3. the string **"impuls"** for impulse response calculation (here
**sl** is assumed SISO without direct feed through and **x0=0** )

4. the string **"step"** for step response calculation (here **sl** is
assumed SISO without direct feed-through and **x0=0** )

5. a vector giving the values of u correponding to each t value.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');rand('seed',0);w=ssrand(1,1,3);w('A')=w('A')-2*eye();
    t=0:0.05:5;
    //impulse(w) = step (s * w)
    xbasc(0);xset("window",0);xselect();
    plot2d([t',t'],[(csim('step',t,tf2ss(s)*w))',0*t'])
    xbasc(1);xset("window",1);xselect();
    plot2d([t',t'],[(csim('impulse',t,w))',0*t'])
    //step(w) = impulse (s^-1 * w)
    xbasc(3);xset("window",3);xselect();
    plot2d([t',t'],[(csim('step',t,w))',0*t'])
    xbasc(4);xset("window",4);xselect();
    plot2d([t',t'],[(csim('impulse',t,tf2ss(1/s)*w))',0*t'])
    
    //input defined by a time function
    deff('u=input(t)','u=abs(sin(t))')
    xbasc();plot2d([t',t'],[(csim(input,t,w))',0*t'])
    
     
      




See Also
~~~~~~~~

` **syslin** `_,` **dsimul** `_,` **flts** `_,` **ltitr** `_,`
**rtitr** `_,` **ode** `_,` **impl** `_,

.. _
      : ://./control/flts.htm
.. _
      : ://./control/../elementary/syslin.htm
.. _
      : ://./control/../nonlinear/impl.htm
.. _
      : ://./control/../nonlinear/ode.htm
.. _
      : ://./control/ltitr.htm
.. _
      : ://./control/rtitr.htm
.. _
      : ://./control/dsimul.htm


