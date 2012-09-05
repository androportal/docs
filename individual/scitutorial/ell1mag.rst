


ell1mag
=======

magnitude of elliptic filter



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [v]=ell1mag(eps,m1,z)




Arguments
~~~~~~~~~

:eps passband ripple= `1/(1+eps^2)`
: :m1 stopband ripple= `1/(1+(eps^2)/m1)`
: :z sample vector of values in the complex plane
: :v elliptic filter values at sample points
:



Description
~~~~~~~~~~~

Function used for squared magnitude of an elliptic filter. Usually
`m1=eps*eps/(a*a-1)`. Returns
`v=real(ones(z)./(ones(z)+eps*eps*s.*s))` for `s=%sn(z,m1)`.



Examples
~~~~~~~~


::

    `deff`_('[alpha,BeTa]=alpha_beta(n,m,m1)',...
    'if 2*int(n/2)==n then, BeTa=K1; else, BeTa=0;end;...
    alpha=%k(1-m1)/%k(1-m);')
    epsilon=0.1;A=10;  //ripple parameters
    m1=(epsilon*epsilon)/(A*A-1);n=5;omegac=6;
    m=`find_freq`_(epsilon,A,n);omegar = omegac/`sqrt`_(m)
    `%k`_(1-m1)*`%k`_(m)/(`%k`_(m1)*`%k`_(1-m))-n   //Check...
    [alpha,Beta]=alpha_beta(n,m,m1)
    alpha*`%asn`_(1,m)-n*`%k`_(m1)      //Check
    `sample`_=0:0.01:20;
    //Now we map the positive real axis into the contour...
    z=alpha*`%asn`_(`sample`_/omegac,m)+Beta*`ones`_(`sample`_);
    `plot`_(`sample`_,ell1mag(epsilon,m1,z))




See Also
~~~~~~~~


+ `buttmag`_ Power transmission of a Butterworth filter


.. _buttmag: buttmag.html


