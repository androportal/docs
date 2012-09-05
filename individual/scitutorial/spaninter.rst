


spaninter
=========

subspace intersection



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [X,dim]=spaninter(A,B [,tol])




Arguments
~~~~~~~~~

:A, B two real or complex matrices with equal number of rows
: :X orthogonal or unitary square matrix
: :dim integer, dimension of subspace range( `A`) inter range( `B`)
:



Description
~~~~~~~~~~~

computes the intersection of range( `A`) and range( `B`).

The first `dim` columns of `X` span this intersection i.e.
`X(:,1:dim)` is an orthogonal basis for

range( `A`) inter range( `B`)

In the `X` basis `A` and `B` are respectively represented by:

`X'*A` and `X'*B`.

`tol` is a threshold ( `sqrt(%eps)` is the default value).



Examples
~~~~~~~~


::

    A=`rand`_(5,3)*`rand`_(3,4);     // A is 5 x 4, rank=3
    B=[A(:,2),`rand`_(5,1)]*`rand`_(2,2);
    [X,dim]=spaninter(A,B);
    X1=X(:,1:dim);    //The intersection
    `svd`_(A),`svd`_([X1,A])   // X1 in span(A)
    `svd`_(B),`svd`_([B,X1])   // X1 in span(B)




See Also
~~~~~~~~


+ `spanplus`_ sum of subspaces
+ `spantwo`_ sum and intersection of subspaces


.. _spantwo: spantwo.html
.. _spanplus: spanplus.html


