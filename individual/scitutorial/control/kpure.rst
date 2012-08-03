====
"kpure"
====

Scilab Function Last update : April 1993
**kpure** - continuous SISO system limit feedback gain



Calling Sequence
~~~~~~~~~~~~~~~~

g=kpure(sys)




Parameters
~~~~~~~~~~


+ **sys** : SISO linear system (syslin)
+ **g** : constant




Description
~~~~~~~~~~~

**kpure(sys)** computes the gains **g** such that the system **sys**
feedback by g ( **sys/.g** ) has poles on imaginary axis.



Examples
~~~~~~~~


::

    
    
    s=poly(0,'s');
    h=syslin('c',(s-1)/(1+5*s+s^2+s^3))
    xbasc();evans(h)
    g=kpure(h)
    hf=h/.g(1)
    roots(denom(hf))
     
      




See Also
~~~~~~~~

` **evans** `_,` **krac2** `_,

.. _
      : ://./control/krac2.htm
.. _
      : ://./control/../graphics/evans.htm


