====
"dsimul"
====

Scilab Function Last update : April 1993
**dsimul** - state space discrete time simulation



Calling Sequence
~~~~~~~~~~~~~~~~

y=dsimul(sl,u)




Parameters
~~~~~~~~~~


+ **sl** : **syslin** list describing a discrete time linear system
+ **u** : real matrix of appropriate dimension
+ **y** : output of **sl**




Description
~~~~~~~~~~~

Utility function. If **[A,B,C,D]=abcd(sl)** and **x0=sl('X0')** ,
**dsimul** returns **y=C*ltitr(A,B,u,x0)+D*u** i.e. the time response
of **sl** to the input **u** . **sl** is assumed to be in state space
form ( **syslin** list).



Examples
~~~~~~~~


::

    
    
    z=poly(0,'z');
    h=(1-2*z)/(z^2-0.2*z+1);
    sl=tf2ss(h);
    u=zeros(1,20);u(1)=1;
    x1=dsimul(sl,u)   //Impulse response
    u=ones(1,20);
    x2=dsimul(sl,u);  //Step response
     
      




See Also
~~~~~~~~

` **syslin** `_,` **flts** `_,` **ltitr** `_,

.. _
      : ://./control/../elementary/syslin.htm
.. _
      : ://./control/ltitr.htm
.. _
      : ://./control/flts.htm


