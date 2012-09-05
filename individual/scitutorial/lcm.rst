


lcm
===

least common multiple



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [pp,fact]=lcm(p)




Arguments
~~~~~~~~~

:p
: :fact polynomial vector or integer vector (type equal to 8)
: :pp polynomial or integer
:



Description
~~~~~~~~~~~

`pp=lcm(p)` computes the lcm `pp` of polynomial vector `p`.

`[pp,fact]=lcm(p)` computes in addition the vector `fact` such that:

`p.*fact=pp*ones(p)`



Examples
~~~~~~~~


::

    //polynomial case
    s=`poly`_(0,'s');
    p=[s,s*(s+1)^2,s^2*(s+2)];
    [pp,fact]=lcm(p);
    p.*fact, pp
    
    //integer case
    V=`int32`_([2^2*3^5, 2^3*3^2,2^2*3^4*5]);
    lcm(V)




See Also
~~~~~~~~


+ `gcd`_ gcd calculation
+ `bezout`_ Bezout equation for polynomials or integers


.. _bezout: bezout.html
.. _gcd: gcd.html


