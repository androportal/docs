


companion
=========

companion matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    A=companion(p)




Arguments
~~~~~~~~~

:p polynomial or vector of polynomials
: :A square matrix
:



Description
~~~~~~~~~~~

Returns a matrix `A` with characteristic polynomial equal to `p` if
`p` is monic. If `p` is not monic the characteristic polynomial of `A`
is equal to `p/c` where `c` is the coefficient of largest degree in
`p`.

If `p` is a vector of monic polynomials, `A` is block diagonal, and
the characteristic polynomial of the ith block is `p(i)`.



Examples
~~~~~~~~


::

    s=`poly`_(0,'s');
    p=`poly`_([1,2,3,4,1],'s','c')
    `det`_(s*`eye`_()-companion(p))
    `roots`_(p)
    `spec`_(companion(p))




See Also
~~~~~~~~


+ `spec`_ eigenvalues of matrices and pencils
+ `poly`_ polynomial definition
+ `randpencil`_ random pencil


.. _randpencil: randpencil.html
.. _poly: poly.html
.. _spec: spec.html


