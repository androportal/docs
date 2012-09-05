


cls2dls
=======

bilinear transform



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [sl1]=cls2dls(sl,T [,fp])




Arguments
~~~~~~~~~

:sl,sl1 linear systems ( `syslin` lists)
: :T real number, the sampling period
: :fp prevarping frequency in hertz
:



Description
~~~~~~~~~~~

given `sl=[A,B,C,D]` ( `syslin` list),a continuous time system
`cls2dls` returns the sampled system obtained by the bilinear
transform `s=(2/T)*(z-1)/(z+1)`.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');z=`poly`_(0,'z');
    sl=`syslin`_('c',(s+1)/(s^2-5*s+2));  //Continuous-time system in transfer form
    slss=`tf2ss`_(sl);  //Now in state-space form
    sl1=cls2dls(slss,0.2);  //sl1= output of cls2dls
    sl1t=`ss2tf`_(sl1) // Converts in transfer form
    sl2=`horner`_(sl,(2/0.2)*(z-1)/(z+1))   //Compare sl2 and sl1




See Also
~~~~~~~~


+ `horner`_ polynomial/rational evaluation


.. _horner: horner.html


