


%sn
===

Jacobi 's elliptic function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [y]=%sn(x,m)




Arguments
~~~~~~~~~

:x a point inside the fundamental rectangle defined by the elliptic
  integral; `x` is a vector of complex numbers
: :m parameter of the elliptic integral ( `0<m<1`)
: :y result
:



Description
~~~~~~~~~~~

Jacobi 's sn elliptic function with parameter `m`: the inverse of the
elliptic integral for the parameter `m`.

The amplitude am is computed in fortran and the addition formulas for
elliptic functions are applied



Examples
~~~~~~~~


::

    m=0.36;
    K=`%k`_(m);
    P=4*K; //Real period
    real_val=0:(P/50):P;
    `plot`_(real_val,`real`_(%sn(real_val,m)))
    `clf`_();
    KK=`%k`_(1-m);
    Ip=2*KK;
    ima_val1=0:(Ip/50):KK-0.001;
    ima_val2=(KK+0.05):(Ip/25):(Ip+KK);
    z1=%sn(%i*ima_val1,m);z2=%sn(%i*ima_val2,m);
    `plot2d`_([ima_val1',ima_val2'],[`imag`_(z1)',`imag`_(z2)']);
    `xgrid`_(3)




See Also
~~~~~~~~


+ `%asn`_ elliptic integral
+ `%k`_ Jacobi's complete elliptic integral


.. _%k: percentk.html
.. _%asn: percentasn.html


