


horner
======

polynomial/rational evaluation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    horner(P,x)




Arguments
~~~~~~~~~

:P polynomial or rational matrix
: :x array of numbers or polynomials or rationals
:



Description
~~~~~~~~~~~

evaluates the polynomial or rational matrix `P = P(s)` when the
variable `s` of the polynomial is replaced by `x`:

`horner(P,x)`= `P(x)`

Example (Bilinear transform): Assume `P = P(s)` is a rational matrix
then the rational matrix `P((1+s)/(1-s))` is obtained by
`horner(P,(1+s)/(1-s))`.

To evaluate a rational matrix at given frequencies use preferably the
`freq` primitive.



Examples
~~~~~~~~


::

    //evaluation of a polynomial for a vector of numbers
    P=`poly`_(1:3,'x')
    horner(P,[1 2 5])
    horner(P,[1 2 5]+%i)
    
    //evaluation of a rational
    s=`poly`_(0,'s');M=[s,1/s];
    horner(M,1)
    horner(M,%i)
    horner(M,1/s)
    
    //evaluation of a polynomial for a matrix of numbers
    X= [1 2;3 4]
    p=`poly`_(1:3,'x','c')
    m=horner(p, X)
    1*X.^0+2*X.^1+3*X.^2




See Also
~~~~~~~~


+ `freq`_ frequency response
+ `repfreq`_ frequency response
+ `evstr`_ evaluation of expressions


.. _evstr: evstr.html
.. _freq: freq.html
.. _repfreq: repfreq.html


