====
"krac2"
====

Scilab Function Last update : April 1993
**krac2** - continuous SISO system limit feedback gain



Calling Sequence
~~~~~~~~~~~~~~~~

g=krac2(sys)




Parameters
~~~~~~~~~~


+ **sys** : SISO linear system (syslin)
+ **g** : constant




Description
~~~~~~~~~~~

**krac2(sys)** computes the gains **g** such that the system **sys**
fedback by g ( **sys/.g** ) has 2 real equal poles.



Examples
~~~~~~~~


::

    
    
    h=syslin('c',352*poly(-5,'s')/poly([0,0,2000,200,25,1],'s','c'));
    xbasc();evans(h,100)
    g=krac2(h)
    hf1=h/.g(1);roots(denom(hf1))
    hf2=h/.g(2);roots(denom(hf2))
     
      




See Also
~~~~~~~~

` **evans** `_,` **kpure** `_,

.. _
      : ://./control/kpure.htm
.. _
      : ://./control/../graphics/evans.htm


