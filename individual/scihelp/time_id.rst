


time_id
=======

SISO least square identification



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [H [,err]]=time_id(n,u,y)




Arguments
~~~~~~~~~

:n order of transfer
: :u one of the following
    :u1 a vector of inputs to the system
    : :"impuls" if y is an impulse response
    : :"step" if y is a step response.
    :

: :y vector of response.
: :H rational function with degree n denominator and degree n-1
  numerator if y(1)==0 or rational function with degree n denominator
  and numerator if y(1)<>0.
: :err `||y - impuls(H,npt)||^2`, where `impuls(H,npt)` are the `npt`
  first coefficients of impulse response of `H`
:



Description
~~~~~~~~~~~

Identification of discrete time response. If `y` is strictly proper (
`y(1)=0`) then `time_id` computes the least square solution of the
linear equation: `Den*y-Num*u=0` with the constraint
`coeff(Den,n):=1`. if `y(1)~=0` then the algorithm first computes the
proper part solution and then add y(1) to the solution



Examples
~~~~~~~~


::

    z=`poly`_(0,'z');
    h=(1-2*z)/(z^2-0.5*z+5)
    rep=[0;`ldiv`_(h('num'),h('den'),20)]; //impulse response
    H=time_id(2,'impuls',rep)
    //  Same example with flts and u
    u=`zeros`_(1,20);u(1)=1;
    rep=`flts`_(u,`tf2ss`_(h));        //impulse response
    H=time_id(2,u,rep)
    //  step response
    u=`ones`_(1,20);
    rep=`flts`_(u,`tf2ss`_(h));     //step response.
    H=time_id(2,'step',rep)
    H=time_id(3,u,rep)    //with u as input and too high order required




See Also
~~~~~~~~


+ `imrep2ss`_ state-space realization of an impulse response
+ `arl2`_ SISO model realization by L2 transfer approximation
+ `armax`_ armax identification
+ `frep2tf`_ transfer function realization from frequency response


.. _arl2: arl2.html
.. _armax: armax.html
.. _frep2tf: frep2tf.html
.. _imrep2ss: imrep2ss.html


