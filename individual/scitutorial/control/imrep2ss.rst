====
"imrep2ss"
====

Scilab Function Last update : April 1993
**imrep2ss** - state-space realization of an impulse response



Calling Sequence
~~~~~~~~~~~~~~~~

[sl]=imrep2ss(v [,deg])




Parameters
~~~~~~~~~~


+ **v** : vector coefficients of impulse response, **v(:,k)** is the
  kth sample
+ **deg** : integer (order required)
+ **sl** : **syslin** list




Description
~~~~~~~~~~~

Impulse response to linear system conversion (one input). **v** must
have an even number of columns.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    H=[1/(s+0.5);2/(s-0.4)]   //strictly proper
    np=20;w=ldiv(H('num'),H('den'),np);
    rep=[w(1:np)';w(np+1:2*np)'];   //The impulse response
    H1=ss2tf(imrep2ss(rep))
    z=poly(0,'z');
    H=(2*z^2-3.4*z+1.5)/(z^2-1.6*z+0.8)     //Proper transfer function
    u=zeros(1,20);u(1)=1;
    rep=rtitr(H('num'),H('den'),u);   //Impulse rep. 
    //   <=> rep=ldiv(H('num'),H('den'),20)
    w=z*imrep2ss(rep)   //Realization with shifted impulse response 
    // i.e strictly proper to proper
    H2=ss2tf(w);
     
      




See Also
~~~~~~~~

` **frep2tf** `_,` **arl2** `_,` **time_id** `_,` **armax** `_,`
**markp2ss** `_,` **ldiv** `_,

.. _
      : ://./control/../polynomials/ldiv.htm
.. _
      : ://./control/time_id.htm
.. _
      : ://./control/../arma/armax.htm
.. _
      : ://./control/frep2tf.htm
.. _
      : ://./control/arl2.htm
.. _
      : ://./control/markp2ss.htm


