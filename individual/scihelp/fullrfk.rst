


fullrfk
=======

full rank factorization of A^k



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Bk,Ck]=fullrfk(A,k)




Arguments
~~~~~~~~~

:A real or complex matrix
: :k integer
: :Bk,Ck real or complex matrices
:



Description
~~~~~~~~~~~

This function computes the full rank factorization of `A^k` i.e.
`Bk*Ck=A^k` where `Bk` is full column rank and `Ck` full row rank. One
has range( `Bk`)=range( `A^k`) and ker( `Ck`)=ker( `A^k`).

For `k=1`, `fullrfk` is equivalent to `fullrf`.



Examples
~~~~~~~~


::

    A=`rand`_(5,2)*`rand`_(2,5);[Bk,Ck]=fullrfk(A,3);
    `norm`_(Bk*Ck-A^3,1)




See Also
~~~~~~~~


+ `fullrf`_ full rank factorization
+ `range`_ range (span) of A^k


.. _range: range.html
.. _fullrf: fullrf.html


