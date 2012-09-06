


coeff
=====

coefficients of matrix polynomial



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [C]=coeff(Mp [,v])




Arguments
~~~~~~~~~

:Mp polynomial matrix
: :v integer (row or column) vector of selected degrees
: :C big matrix of the coefficients
:



Description
~~~~~~~~~~~

`C=coeff(Mp)` returns in a big matrix `C` the coefficients of the
polynomial matrix `Mp` . `C` is partitioned as `C=[C0,C1,...,Ck]`
where the `Ci` are arranged in increasing order `k = max(degree(Mp))`

`C=coeff(Mp,v)` returns the matrix of coefficients with degree in `v`
. ( `v` is a row or column vector).



See Also
~~~~~~~~


+ `poly`_ polynomial definition
+ `degree`_ degree of polynomial matrix
+ `inv_coeff`_ build a polynomial matrix from its coefficients


.. _degree: degree.html
.. _inv_coeff: inv_coeff.html
.. _poly: poly.html


