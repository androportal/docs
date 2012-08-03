====
"ode_discrete"
====

Scilab Function Last update : February 1998
**ode_discrete** - ordinary differential equation solver, discrete
time simulation



Calling Sequence
~~~~~~~~~~~~~~~~

y=ode("discrete",y0,k0,kvect,f)




Parameters
~~~~~~~~~~


+ **y0** : real vector or matrix (initial conditions).
+ **t0** : real scalar (initial time).
+ **f** : external i.e. function or character string or list.
+ **k0** : integer (initial time).
+ **kvect** : integer vector.




Description
~~~~~~~~~~~

With this syntax (first argument equal to **"discrete"** ) **ode**
computes recursively **y(k+1)=f(k,y(k))** from an initial state
**y(k0)** and returns **y(k)** for **k** in **kvect** . **kvect(1)**
must be greater than or equal to **k0** .

Other arguments and other options are the same as for **ode** , see
the ode help.



Examples
~~~~~~~~


::

    
    
    y1=[1;2;3]; deff("yp=a_function(k,y)","yp=A*y+B*u(k)")
    A=diag([0.2,0.5,0.9]); B=[1;1;1];u=1:10;n=5;
    y=ode("discrete",y1,1,1:n,a_function);
    y(:,2)-(A*y1+B*u(1))
    // Now y evaluates  at [y3,y5,y7,y9]
    y=ode("discrete",y1,1,3:2:9,a_function)
     
      




See Also
~~~~~~~~

` **ode** `_,

.. _
      : ://./nonlinear/ode.htm


