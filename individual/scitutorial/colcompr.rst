


colcompr
========

column compression of polynomial matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Y,rk,ac]=colcompr(A);




Arguments
~~~~~~~~~

:A polynomial matrix
: :Y square polynomial matrix (right unimodular basis)
: :rk normal rank of `A`
: :Ac `Ac=A*Y`, polynomial matrix
:



Description
~~~~~~~~~~~

column compression of polynomial matrix `A` (compression to the left)



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    p=[s;s*(s+1)^2;2*s^2+s^3];
    [Y,rk,ac]=colcompr(p*p');
    p*p'*Y




See Also
~~~~~~~~


+ `rowcompr`_ row compression of polynomial matrix


.. _rowcompr: rowcompr.html


