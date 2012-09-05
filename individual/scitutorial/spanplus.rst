


spanplus
========

sum of subspaces



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X,dim,dima]=spanplus(A,B[,tol])




Arguments
~~~~~~~~~

:A, B two real or complex matrices with equal number of rows
: :X orthogonal or unitary square matrix
: :dim, dima integers, dimension of subspaces
: :tol nonnegative real number
:



Description
~~~~~~~~~~~

computes a basis X such that:

the first `dima` columns of `X` span Range( `A`) and the following (
`dim-dima`) columns make a basis of `A+B` relative to `A`.

The `dim` first columns of `X` make a basis for `A+B`.

One has the following canonical form for `[A,B]`:


::

    [*,*]    (dima rows)
    X'*[A,B]=[0,*]    (dim-dima rows)
    [0,0]


`tol` is an optional argument (see function code).



Examples
~~~~~~~~


::

    A=`rand`_(6,2)*`rand`_(2,5);      // rank(A)=2
    B=[A(:,1),`rand`_(6,2)]*`rand`_(3,3);   //two additional independent vectors
    [X,dim,dimA]=spanplus(A,B);
    dimA
    dim




See Also
~~~~~~~~


+ `spaninter`_ subspace intersection
+ `im_inv`_ inverse image
+ `spantwo`_ sum and intersection of subspaces


.. _spaninter: spaninter.html
.. _spantwo: spantwo.html
.. _im_inv: im_inv.html


