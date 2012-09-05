


im_inv
======

inverse image



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X,dim]=im_inv(A,B [,tol])
    [X,dim,Y]=im_inv(A,B, [,tol])




Arguments
~~~~~~~~~

:A,B two real or complex matrices with equal number of columns
: :X orthogonal or unitary square matrix of order equal to the number
  of columns of `A`
: :dim integer (dimension of subspace)
: :Y orthogonal matrix of order equal to the number of rows of `A` and
  `B`.
:



Description
~~~~~~~~~~~

`[X,dim]=im_inv(A,B)` computes `(A^-1)(B)` i.e vectors whose image
through `A` are in range( `B`)

The `dim` first columns of `X` span `(A^-1)(B)`

`tol` is a threshold used to test if subspace inclusion; default value
is `tol = 100*%eps`. If `Y` is returned, then `[Y*A*X,Y*B]` is
partitioned as follows: `[A11,A12;0,A22]`, `[B1;0]`

where `B1` has full row rank (equals `rank(B)`) and `A22` has full
column rank and has `dim` columns.



Examples
~~~~~~~~


::

    A=[`rand`_(2,5);[`zeros`_(3,4),`rand`_(3,1)]];B=[[1,1;1,1];`zeros`_(3,2)];
    W=`rand`_(5,5);A=W*A;B=W*B;
    [X,dim]=im_inv(A,B)
    `svd`_([A*X(:,1:dim),B])   //vectors A*X(:,1:dim) belong to range(B)
    [X,dim,Y]=im_inv(A,B);[Y*A*X,Y*B]




See Also
~~~~~~~~


+ `rowcomp`_ row compression, range
+ `spaninter`_ subspace intersection
+ `spanplus`_ sum of subspaces
+ `linsolve`_ linear equation solver


.. _spaninter: spaninter.html
.. _linsolve: linsolve.html
.. _spanplus: spanplus.html
.. _rowcomp: rowcomp.html


