


bilt
====

bilinear or biquadratic transform SISO system given by a zero/poles
representation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [npl,nzr,ngn] = bilt(pl,zr,gn,num,den)




Arguments
~~~~~~~~~

:pl a vector, the poles of the given system.
: :zr a vector, the zeros of the given system.
: :num a polynomial with degree equal to the degree of `den`, the
  numerator of the transform.
: :den a polynomial with degree 1 or 2, the denominator of the
  transform.
: :npl a vector, the poles of the transformed system.
: :nzr a vector, the zeros of the transformed system.
: :ngn a scalar, the gain of the transformed system.
:



Description
~~~~~~~~~~~

function for calculating the gain poles and zeros which result from a
bilinear transform or from a biquadratic transform. Used by the
functions `iir`_ and `trans`_.



Examples
~~~~~~~~


::

    Hlp=`iir`_(3,'lp','ellip',[0.1 0],[.08 .03]);
    pl=`roots`_(Hlp.den);
    zr=`roots`_(Hlp.num);
    gn=`coeff`_(Hlp.num,`degree`_(Hlp.num))/`coeff`_(Hlp.den,`degree`_(Hlp.den));
    z=`poly`_(0,'z');
    a=0.3;
    num=z-a;
    den=1-a*z;
    [npl,nzr,ngn] = bilt(pl,zr,gn,num,den)
    
    Hlpt=ngn*`poly`_(nzr,'z','r')/`poly`_(npl,'z','r')
    
    //comparison with horner
    `horner`_(Hlp,num/den)




See Also
~~~~~~~~


+ `iir`_ iir digital filter
+ `trans`_ low-pass to other filter transform
+ `horner`_ polynomial/rational evaluation


.. _iir: iir.html
.. _horner: horner.html
.. _trans: trans.html


