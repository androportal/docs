


%asn
====

elliptic integral



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [y]=%asn(x,m)




Arguments
~~~~~~~~~

:x upper limit of integral ( `x>0`) (can be a vector)
: :m parameter of integral ( `0<m<1`)
: :y value of the integral
:



Description
~~~~~~~~~~~

Calculates the elliptic integral

If `x` is a vector, `y` is a vector of same dimension as `x`.



Examples
~~~~~~~~


::

    m=0.8;z=%asn(1/`sqrt`_(m),m);K=`real`_(z);Ktilde=`imag`_(z);
    x2max=1/`sqrt`_(m);
    x1=0:0.05:1;x2=1:((x2max-1)/20):x2max;x3=x2max:0.05:10;
    x=[x1,x2,x3];
    y=%asn(x,m);
    rect=[0,-Ktilde,1.1*K,2*Ktilde];
    `plot2d`_(`real`_(y)',`imag`_(y)',1,'011',' ',rect)
    
    `deff`_('y=f(t)','y=1/sqrt((1-t^2)*(1-m*t^2))');
    `intg`_(0,0.9,f)-%asn(0.9,m)  //Works for real case only!




