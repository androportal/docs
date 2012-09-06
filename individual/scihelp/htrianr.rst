


htrianr
=======

triangularization of polynomial matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ar,U,rk]=htrianr(A)




Arguments
~~~~~~~~~

:A polynomial matrix
: :Ar polynomial matrix
: :U unimodular polynomial matrix
: :rk integer, normal rank of `A`
:



Description
~~~~~~~~~~~

triangularization of polynomial matrix `A`.

`A` is `[m,n]` , `m <= n`.

`Ar=A*U`

Warning: there is an elimination of "small" terms (see function code).



Examples
~~~~~~~~


::

    x=`poly`_(0,'x');
    M=[x;x^2;2+x^3]*[1,x-2,x^4];
    [Mu,U,rk]=htrianr(M)
    `det`_(U)
    M*U(:,1:2)




See Also
~~~~~~~~


+ `hrmt`_ gcd of polynomials
+ `colcompr`_ column compression of polynomial matrix


.. _hrmt: hrmt.html
.. _colcompr: colcompr.html


