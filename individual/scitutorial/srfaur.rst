


srfaur
======

square-root algorithm



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [p,s,t,l,rt,tt]=srfaur(h,f,g,r0,n,p,s,t,l)




Arguments
~~~~~~~~~

:h, f, g convenient matrices of the state-space model.
: :r0 E(yk*yk').
: :n number of iterations.
: :p estimate of the solution after n iterations.
: :s, t, l intermediate matrices for successive iterations;
: :rt, tt gain matrices of the filter model after `n` iterations.
: :p, s, t, l may be given as input if more than one recursion is
  desired (evaluation of intermediate values of `p`).
:



Description
~~~~~~~~~~~

square-root algorithm for the algebraic Riccati equation.



Examples
~~~~~~~~


::

    //GENERATE SIGNAL
    x=%pi/10:%pi/10:102.4*%pi;
    `rand`_('seed',0);`rand`_('normal');
    y=[1;1]*`sin`_(x)+[`sin`_(2*x);`sin`_(1.9*x)]+`rand`_(2,1024);
    
    //COMPUTE CORRELATIONS
    c=[];for j=1:2,for k=1:2,c=[c;`corr`_(y(k,:),y(j,:),64)];end;end
    c=`matrix`_(c,2,128);
    
    //FINDING H,F,G with 6 states
    hk=`hank`_(20,20,c);
    [H,F,G]=`phc`_(hk,2,6);
    
    //SOLVING RICCATI EQN
    r0=c(1:2,1:2);
    [P,s,t,l,Rt,Tt]=srfaur(H,F,G,r0,200);
    
    //Make covariance matrix exactly symmetric
    Rt=(Rt+Rt')/2




See Also
~~~~~~~~


+ `phc`_ Markovian representation
+ `faurre`_ filter computation by simple Faurre algorithm
+ `lindquist`_ Lindquist's algorithm


.. _phc: phc.html
.. _lindquist: lindquist.html
.. _faurre: faurre.html


