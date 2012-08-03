====
"frfit"
====

Scilab Function Last update : April 1993
**frfit** - frequency response fit



Calling Sequence
~~~~~~~~~~~~~~~~

sys=frfit(w,fresp,order)
[num,den]=frfit(w,fresp,order)
sys=frfit(w,fresp,order,weight)
[num,den]=frfit(w,fresp,order,weight)




Parameters
~~~~~~~~~~


+ **w** : positive real vector of frequencies (Hz)
+ **fresp** : complex vector of frequency responses (same size as
  **w** )
+ **order** : integer (required order, degree of **den** )
+ **weight** : positive real vector (default value **ones(w)** ).
+ **num,den** : stable polynomials




Description
~~~~~~~~~~~

**sys=frfit(w,fresp,order,weight)** returns a bi-stable transfer
function **G(s)=sys=num/den** , of of given **order** such that its
frequency response **G(w(i))** matches **fresp(i)** , i.e.
**freq(num,den,%i*w)** should be close to **fresp** . **weight(i)** is
the weight given to **w(i)** .



Examples
~~~~~~~~


::

    
    
    w=0.01:0.01:2;s=poly(0,'s');
    G=syslin('c',2*(s^2+0.1*s+2), (s^2+s+1)*(s^2+0.3*s+1));
    fresp=repfreq(G,w);
    Gid=frfit(w,fresp,4);
    frespfit=repfreq(Gid,w);
    bode(w,[fresp;frespfit])
     
      




See Also
~~~~~~~~

` **frep2tf** `_,` **factors** `_,` **cepstrum** `_,` **mrfit** `_,`
**freq** `_,` **calfrq** `_,

.. _
      : ://./signal/cepstrum.htm
.. _
      : ://./signal/mrfit.htm
.. _
      : ://./signal/../control/frep2tf.htm
.. _
      : ://./signal/../polynomials/factors.htm
.. _
      : ://./signal/../control/freq.htm
.. _
      : ://./signal/../control/calfrq.htm


