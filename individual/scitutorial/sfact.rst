


sfact
=====

discrete time spectral factorization



Calling Sequence
~~~~~~~~~~~~~~~~


::

    F=sfact(P)




Arguments
~~~~~~~~~

:P real polynomial matrix
:



Description
~~~~~~~~~~~

Finds `F`, a spectral factor of `P`. `P` is a polynomial matrix such
that each root of `P` has a mirror image w.r.t the unit circle.
Problem is singular if a root is on the unit circle.

`sfact(P)` returns a polynomial matrix `F(z)` which is antistable and
such that

`P = F(z)* F(1/z) *z^n`

For scalar polynomials a specific algorithm is implemented. Algorithms
are adapted from Kucera's book.



Examples
~~~~~~~~


::

    //Simple polynomial example
    z=`poly`_(0,'z');
    p=(z-1/2)*(2-z)
    w=sfact(p);
    w*`numer`_(`horner`_(w,1/z))
    
    //matrix example
    F1=[z-1/2,z+1/2,z^2+2;1,z,-z;z^3+2*z,z,1/2-z];
    P=F1*`gtild`_(F1,'d');  //P is symmetric
    F=sfact(P)
    `roots`_(`det`_(P))
    `roots`_(`det`_(`gtild`_(F,'d')))  //The stable roots
    `roots`_(`det`_(F))             //The antistable roots
    `clean`_(P-F*`gtild`_(F,'d'))
    
    //Example of continuous time use
    s=`poly`_(0,'s');
    p=-3*(s+(1+%i))*(s+(1-%i))*(s+0.5)*(s-0.5)*(s-(1+%i))*(s-(1-%i));p=`real`_(p);
    //p(s) = polynomial in s^2 , looks for stable f such that p=f(s)*f(-s)
    w=`horner`_(p,(1-s)/(1+s));  // bilinear transform w=p((1-s)/(1+s))
    wn=`numer`_(w);              //take the numerator
    fn=sfact(wn);f=`numer`_(`horner`_(fn,(1-s)/(s+1))); //Factor and back transform
    f=f/`sqrt`_(`horner`_(f*`gtild`_(f,'c'),0));f=f*`sqrt`_(`horner`_(p,0));      //normalization
    `roots`_(f)    //f is stable
    `clean`_(f*`gtild`_(f,'c')-p)    //f(s)*f(-s) is p(s)




See Also
~~~~~~~~


+ `gtild`_ tilde operation
+ `fspecg`_ stable factorization of continuous time dynamical systems


.. _gtild: gtild.html
.. _fspecg: fspecg.html


