


lqg_ltr
=======

LQG with loop transform recovery



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [kf,kc]=lqg_ltr(sl,mu,ro)




Arguments
~~~~~~~~~

:sl linear system in state-space form ( `syslin` list)
: :mu,ro real positive numbers chosen ``small enough''
: :kf,kc controller and observer Kalman gains.
:



Description
~~~~~~~~~~~

returns the Kalman gains for:


::

    x = a*x + b*u + l*w1   
    (sl)
    y = c*x + mu*I*w2
    
    z = h*x


Cost function:


::

    /+oo
    |
    J    = E(| [z(t)'*z(t) + ro^2*u(t)'*u(t)]dt)
    `lqg`_     |
    / 0


The lqg/ltr approach looks for `L,mu,H,ro` such that: J(lqg) = J(freq)
where


::

    /+oo        *  *           *
    J    =  | tr[S  W  W  S ] + tr[T  T]dw
    `freq`_   |
    /0


and


::

    S = (I + G*K)^(-1)  
    T = G*K*(I+G*K)^(-1)




See Also
~~~~~~~~


+ `syslin`_ linear system definition


.. _syslin: syslin.html


