


rowcompr
========

row compression of polynomial matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X,rk,Ac]=rowcompr(A)




Arguments
~~~~~~~~~

:A polynomial matrix
: :Y square polynomial matrix (left unimodular basis)
: :rk normal rank of `A`
: :Ac `Ac=X*A`, polynomial matrix
:



Description
~~~~~~~~~~~

row compression of polynomial matrix `A`.

`X` is a left polynomial unimodular basis which row compressed thee
rows of `A`. `rk` is the normal rank of A.

Warning: elimination of "small" terms (use with care!).



See Also
~~~~~~~~


+ `colcompr`_ column compression of polynomial matrix


.. _colcompr: colcompr.html


