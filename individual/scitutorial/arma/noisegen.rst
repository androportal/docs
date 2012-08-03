====
"noisegen"
====

Scilab Function Last update : 13/12/2005
**noisegen** - noise generation



Calling Sequence
~~~~~~~~~~~~~~~~

b=noisegen(pas,Tmax,sig)




Description
~~~~~~~~~~~

generates a Scilab function **[b]=Noise(t)** where **Noise(t)** is a
piecewise constant function ( constant on **[k*pas,(k+1)*pas]** ). The
value on each constant interval are random values from i.i.d Gaussian
variables of standard deviation sig. The function is constant for
**t<=0** and **t>=Tmax** .



Examples
~~~~~~~~


::

    
    
    noisegen(0.5,30,1.0);
    x=-5:0.01:35;
    y=feval(x,Noise);
    plot(x,y);
     
      




