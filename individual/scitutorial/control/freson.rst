====
"freson"
====

Scilab Function Last update : April 1993
**freson** - peak frequencies



Calling Sequence
~~~~~~~~~~~~~~~~

fr=freson(h)




Parameters
~~~~~~~~~~


+ **h** : **syslin** list
+ **fr** : vector of peak frequencies in Hz




Description
~~~~~~~~~~~

returns the vector of peak frequencies in Hz for the SISO plant **h**



Examples
~~~~~~~~


::

    
    
    h=syslin('c',-1+%s,(3+2*%s+%s^2)*(50+0.1*%s+%s^2))
    fr=freson(h)
    bode(h)
    g=20*log(abs(repfreq(h,fr)))/log(10)
     
      




See Also
~~~~~~~~

` **frep2tf** `_,` **zgrid** `_,` **h_norm** `_,

.. _
      : ://./control/frep2tf.htm
.. _
      : ://./control/../robust/h_norm.htm
.. _
      : ://./control/../graphics/zgrid.htm


