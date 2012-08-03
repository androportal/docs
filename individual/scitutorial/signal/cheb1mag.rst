====
"cheb1mag"
====

Scilab Function Last update : 13/12/2005
**cheb1mag** - response of Chebyshev type 1 filter



Calling Sequence
~~~~~~~~~~~~~~~~

[h2]=cheb1mag(n,omegac,epsilon,sample)




Parameters
~~~~~~~~~~


+ **n** : integer : filter order
+ **omegac** : real : cut-off frequency
+ **epsilon** : real : ripple in pass band
+ **sample** : vector of frequencies where **cheb1mag** is evaluated
+ **h2** : Chebyshev I filter values at sample points




Description
~~~~~~~~~~~

Square magnitude response of a type 1 Chebyshev filter.

**omegac** =passband edge.

**epsilon** : such that **1/(1+epsilon^2)** =passband ripple.

**sample** : vector of frequencies where the square magnitude is
desired.



Examples
~~~~~~~~


::

    
    
    //Chebyshev; ripple in the passband
    n=13;epsilon=0.2;omegac=3;sample=0:0.05:10;
    h=cheb1mag(n,omegac,epsilon,sample);
    plot2d(sample,h)
    xtitle('','frequencies','magnitude')
     
      




See Also
~~~~~~~~

` **buttmag** `_,

.. _
      : ://./signal/buttmag.htm


