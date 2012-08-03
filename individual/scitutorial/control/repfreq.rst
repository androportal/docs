====
"repfreq"
====

Scilab Function Last update : April 1993
**repfreq** - frequency response



Calling Sequence
~~~~~~~~~~~~~~~~

[ [frq,] repf]=repfreq(sys,fmin,fmax [,step])
[ [frq,] repf]=repfreq(sys [,frq])
[ frq,repf,splitf]=repfreq(sys,fmin,fmax [,step])
[ frq,repf,splitf]=repfreq(sys [,frq])




Parameters
~~~~~~~~~~


+ **sys** : **syslin** list : SIMO linear system
+ **fmin,fmax** : two real numbers (lower and upper frequency bounds)
+ **frq** : real vector of frequencies (Hz)
+ **step** : logarithmic discretization step
+ **splitf** : vector of indexes of critical frequencies.
+ **repf** : vector of the complex frequency response




Description
~~~~~~~~~~~

**repfreq** returns the frequency response calculation of a linear
system. If **sys(s)** is the transfer function of **Sys** ,
**repf(k)** equals **sys(s)** evaluated at **s= %i*frq(k)*2*%pi** for
continuous time systems and at **exp(2*%i*%pi*dt*frq(k))** for
discrete time systems ( **dt** is the sampling period).

**db(k)** is the magnitude of **repf(k)** expressed in dB i.e.
**db(k)=20*log10(abs(repf(k)))** and **phi(k)** is the phase of
**repf(k)** expressed in degrees.

If **fmin,fmax,step** are input parameters, the response is calculated
for the vector of frequencies **frq** given by:
**frq=[10.^((log10(fmin)):step:(log10(fmax))) fmax];**

If **step** is not given, the output parameter **frq** is calculated
by **frq=calfrq(sys,fmin,fmax)** .

Vector **frq** is splitted into regular parts with the **split**
vector. **frq(splitf(k):splitf(k+1)-1)** has no critical frequency.
**sys** has a pole in the range **[frq(splitf(k)),frq(splitf(k)+1)]**
and no poles outside.



Examples
~~~~~~~~


::

    
    
    A=diag([-1,-2]);B=[1;1];C=[1,1];
    Sys=syslin('c',A,B,C);
    frq=0:0.02:5;w=frq*2*%pi; //frq=frequencies in Hz ;w=frequencies in rad/sec;
    [frq1,rep] =repfreq(Sys,frq);
    [db,phi]=dbphi(rep);
    Systf=ss2tf(Sys)    //Transfer function of Sys
    x=horner(Systf,w(2)*sqrt(-1))    // x is Systf(s) evaluated at s = i w(2)
    rep=20*log(abs(x))/log(10)   //magnitude of x in dB
    db(2)    // same as rep
    ang=atan(imag(x),real(x));   //in rad.
    ang=ang*180/%pi              //in degrees
    phi(2)
    repf=repfreq(Sys,frq);
    repf(2)-x
     
      




See Also
~~~~~~~~

` **bode** `_,` **freq** `_,` **calfrq** `_,` **horner** `_,`
**nyquist** `_,` **dbphi** `_,



Author
~~~~~~

S. S.

.. _
      : ://./control/calfrq.htm
.. _
      : ://./control/freq.htm
.. _
      : ://./control/../graphics/nyquist.htm
.. _
      : ://./control/dbphi.htm
.. _
      : ://./control/../polynomials/horner.htm
.. _
      : ://./control/../graphics/bode.htm


