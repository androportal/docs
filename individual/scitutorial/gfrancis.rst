


gfrancis
========

Francis equations for tracking



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [L,M,T]=gfrancis(Plant,Model)




Arguments
~~~~~~~~~

:Plant a continuous time dynamical system in state-space
  representation.
: :Model a continuous time dynamical system in state-space
  representation.
: :L,M,T real matrices
:



Description
~~~~~~~~~~~

Given the linear plant:


::

    x'= F*x + G*u 
    y = H*x + J*u


and the linear model


::

    xm'= A*xm + B*um
    ym = C*xm + D*um


the goal is for the plant to track the model i.e. `e = y - ym ---> 0`
while keeping stable the state x(t) of the plant. `u` is given by
feedforward and feedback


::

    u = L*xm + M*um + K*(x-T*xm) = [K , L-K*T] *(x,xm) + M*um


The matrices T,L,M satisfy generalized Francis equations


::

    F*T + G*L = T*A
    H*T + J*L = C
          G*M = T*B
          J*M = D


The matrix `K` must be chosen as stabilizing the pair `(F,G)` See
example of use in directory `demos/tracking`.



Examples
~~~~~~~~


::

    Plant=`ssrand`_(1,3,5);
    [F,G,H,J]=`abcd`_(Plant);
    nw=4;nuu=2;A=`rand`_(nw,nw);
    st=`max`_(`real`_(`spec`_(A)));A=A-st*`eye`_(A);
    B=`rand`_(nw,nuu);C=2*`rand`_(1,nw);D=0*`rand`_(C*B);
    Model=`syslin`_('c',A,B,C,D);
    [L,M,T]=gfrancis(Plant,Model);
    `norm`_(F*T+G*L-T*A,1)
    `norm`_(H*T+J*L-C,1)
    `norm`_(G*M-T*B,1)
    `norm`_(J*M-D,1)




See Also
~~~~~~~~


+ `lqg`_ LQG compensator
+ `ppol`_ pole placement




History
~~~~~~~
Version Description 5.4.0 `Sl` is now checked for continuous time
linear dynamical system. This modification has been introduced by this
`commit`_
.. _ppol: ppol.html
.. _lqg: lqg.html
.. _commit: http://gitweb.scilab.org/?p=scilab.git;a=commit;h=3d7083daae3339813ba747c8adcda1f9599bb80d


