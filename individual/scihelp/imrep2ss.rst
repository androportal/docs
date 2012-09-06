


imrep2ss
========

state-space realization of an impulse response



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [sl]=imrep2ss(v [,deg])




Arguments
~~~~~~~~~

:v vector coefficients of impulse response, `v(:,k)` is the kth sample
: :deg integer (order required)
: :sl `syslin` list
:



Description
~~~~~~~~~~~

Impulse response to linear system conversion (one input). `v` must
have an even number of columns.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    H=[1/(s+0.5);2/(s-0.4)]   //strictly proper
    np=20;w=`ldiv`_(H('num'),H('den'),np);
    rep=[w(1:np)';w(np+1:2*np)'];   //The impulse response
    H1=`ss2tf`_(imrep2ss(rep))
    z=`poly`_(0,'z');
    H=(2*z^2-3.4*z+1.5)/(z^2-1.6*z+0.8)     //Proper transfer function
    u=`zeros`_(1,20);u(1)=1;
    rep=`rtitr`_(H('num'),H('den'),u);   //Impulse rep. 
    //   <=> rep=ldiv(H('num'),H('den'),20)
    w=z*imrep2ss(rep)   //Realization with shifted impulse response 
    // i.e strictly proper to proper
    H2=`ss2tf`_(w);




See Also
~~~~~~~~


+ `frep2tf`_ transfer function realization from frequency response
+ `arl2`_ SISO model realization by L2 transfer approximation
+ `time_id`_ SISO least square identification
+ `armax`_ armax identification
+ `markp2ss`_ Markov parameters to state-space
+ `ldiv`_ polynomial matrix long division


.. _ldiv: ldiv.html
.. _markp2ss: markp2ss.html
.. _arl2: arl2.html
.. _frep2tf: frep2tf.html
.. _time_id: time_id.html
.. _armax: armax.html


