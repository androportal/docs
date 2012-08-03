====
"remez"
====

Scilab Function Last update : 13/07/2005
**remez** - Remez's algorithm



Calling Sequence
~~~~~~~~~~~~~~~~

[an]=remez(nc,fg,ds,wt)




Parameters
~~~~~~~~~~


+ **nc** : integer, number of cosine functions
+ **fg,ds,wt** : real vectors
+ **fg** : grid of frequency points in [0,.5)
+ **ds** : desired magnitude on grid **fg**
+ **wt** : weighting function on error on grid **fg**




Description
~~~~~~~~~~~

minimax approximation of a frequency domain magnitude response. The
approximation takes the form


::

    
    
     h = sum[a(n)*cos(wn)]
       
        


An FIR, linear-phase filter can be obtained from the the output of
**remez** by using the following commands:


::

    
    
                     hn(1:nc-1)=an(nc:-1:2)/2;
                     hn(nc)=an(1);
                     hn(nc+1:2*nc-1)=an(2:nc)/2;
       
        


where **an** = cosine filter coefficients



See Also
~~~~~~~~

` **remezb** `_,

.. _
      : ://./signal/remezb.htm


