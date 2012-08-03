====
"cepstrum"
====

Scilab Function Last update : April 1993
**cepstrum** - cepstrum calculation



Calling Sequence
~~~~~~~~~~~~~~~~

fresp = cepstrum(w,mag)




Parameters
~~~~~~~~~~


+ **w** : positive real vector of frequencies (rad/sec)
+ **mag** : real vector of magnitudes (same size as **w** )
+ **fresp** : complex vector




Description
~~~~~~~~~~~

**fresp = cepstrum(w,mag)** returns a frequency response **fresp(i)**
whose magnitude at frequency **w(i)** equals **mag(i)** and such that
the phase of **freq** corresponds to a stable and minimum phase
system. **w** needs not to be sorted, but minimal entry should not be
close to zero and all the entries of **w** should be different.



Examples
~~~~~~~~


::

    
    
    w=0.1:0.1:5;mag=1+abs(sin(w));
    fresp=cepstrum(w,mag);
    plot2d([w',w'],[mag(:),abs(fresp)])
     
      




See Also
~~~~~~~~

` **frfit** `_,

.. _
      : ://./signal/frfit.htm


