====
"mrfit"
====

Scilab Function Last update : April 1993
**mrfit** - frequency response fit



Calling Sequence
~~~~~~~~~~~~~~~~

sys=mrfit(w,mag,order)
[num,den]=mrfit(w,mag,order)
sys=mrfit(w,mag,order,weight)
[num,den]=mrfit(w,mag,order,weight)




Parameters
~~~~~~~~~~


+ **w** : positive real vector of frequencies (Hz)
+ **mag** : real vector of frequency responses magnitude (same size as
  **w** )
+ **order** : integer (required order, degree of **den** )
+ **weight** : positive real vector (default value **ones(w)** ).
+ **num,den** : stable polynomials




Description
~~~~~~~~~~~

**sys=mrfit(w,mag,order,weight)** returns a bi-stable transfer
function **G(s)=sys=num/den** , of of given **order** such that its
frequency response magnitude **abs(G(w(i)))** matches **mag(i)** i.e.
**abs(freq(num,den,%i*w))** should be close to **mag** . **weight(i)**
is the weigth given to **w(i)** .



Examples
~~~~~~~~


::

    
    
    w=0.01:0.01:2;s=poly(0,'s');
    G=syslin('c',2*(s^2+0.1*s+2),(s^2+s+1)*(s^2+0.3*s+1)); // syslin('c',Num,Den);
    fresp=repfreq(G,w);
    mag=abs(fresp);
    Gid=mrfit(w,mag,4);
    frespfit=repfreq(Gid,w);
    plot2d([w',w'],[mag(:),abs(frespfit(:))])
     
      




See Also
~~~~~~~~

` **cepstrum** `_,` **frfit** `_,` **freq** `_,` **calfrq** `_,

.. _
      : ://./signal/../control/calfrq.htm
.. _
      : ://./signal/frfit.htm
.. _
      : ://./signal/cepstrum.htm
.. _
      : ://./signal/../control/freq.htm


