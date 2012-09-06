


krac2
=====

continuous SISO system limit feedback gain



Calling Sequence
~~~~~~~~~~~~~~~~


::

    g=krac2(sys)




Arguments
~~~~~~~~~

:sys SISO linear system (syslin)
: :g constant
:



Description
~~~~~~~~~~~

`krac2(sys)` computes the gains `g` such that the system `sys` fedback
by g ( `sys/.g`) has 2 real equal poles.



Examples
~~~~~~~~


::

    h=`syslin`_('c',352*`poly`_(-5,'s')/`poly`_([0,0,2000,200,25,1],'s','c'));
    `clf`_();`evans`_(h,100)
    g=krac2(h)
    hf1=h/.g(1);`roots`_(`denom`_(hf1))
    hf2=h/.g(2);`roots`_(`denom`_(hf2))




See Also
~~~~~~~~


+ `evans`_ Evans root locus
+ `kpure`_ continuous SISO system limit feedback gain


.. _kpure: kpure.html
.. _evans: evans.html


