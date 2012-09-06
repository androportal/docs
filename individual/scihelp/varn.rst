


varn
====

symbolic variable of a polynomial



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [symb]=varn(p)
    [pm]=varn(x,var)




Arguments
~~~~~~~~~

:p polynomial (or polynomial matrix)
: :symb character string
: :x polynomial or polynomial matrix
: :var symbolic variable (character string)
: :pm polynomial (or polynomial matrix)
:



Description
~~~~~~~~~~~

`symb=varn(p)` returns in `symb` the symbolic variable of the
polynomial `p` (i.e. `varn(poly(0,'x'))` is `'x'`).

`varn(x,'s')` returns a polynomial matrix with same coefficients as
`x` but with `'s'` as symbolic variable (change of variable name).



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');p=[s^2+1,s];
    varn(p)
    varn(p,'x')




See Also
~~~~~~~~


+ `horner`_ polynomial/rational evaluation
+ `poly`_ polynomial definition


.. _horner: horner.html
.. _poly: poly.html


