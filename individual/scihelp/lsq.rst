


lsq
===

linear least square problems.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    X=lsq(A,B [,tol])




Arguments
~~~~~~~~~

:A Real or complex (m x n) matrix
: :B real or complex (m x p) matrix
: :tol positive scalar, used to determine the effective rank of A
  (defined as the order of the largest leading triangular submatrix R11
  in the QR factorization with pivoting of A, whose estimated condition
  number <= 1/tol. The tol default value is set to `sqrt(%eps)`.
: :X real or complex (n x p) matrix
:



Description
~~~~~~~~~~~

`X=lsq(A,B)` computes the minimum norm least square solution of the
equation `A*X=B`, while `X=A \ B` compute a least square solution with
at at most `rank(A)` nonzero components per column.



References
~~~~~~~~~~

`lsq` function is based on the LApack functions DGELSY for real
matrices and ZGELSY for complex matrices.



Examples
~~~~~~~~


::

    //Build the data
    x=(1:10)';
    
    y1=3*x+4.5+3*`rand`_(x,'normal');
    y2=1.8*x+0.5+2*`rand`_(x,'normal');
    `plot2d`_(x,[y1,y2],[-2,-3])
    //Find the linear regression 
    A=[x,`ones`_(x)];B=[y1,y2];
    X=lsq(A,B);
    
    y1e=X(1,1)*x+X(2,1);
    y2e=X(1,2)*x+X(2,2);
    `plot2d`_(x,[y1e,y2e],[2,3])
    
    //Difference between lsq(A,b) and A\b
    A=`rand`_(4,2)*`rand`_(2,3);//a rank 2 matrix
    b=`rand`_(4,1);
    X1=lsq(A,b)
    X2=A\b
    [A*X1-b, A*X2-b] //the residuals are the same




See Also
~~~~~~~~


+ `backslash`_ (\) left matrix division.
+ `inv`_ matrix inverse
+ `pinv`_ pseudoinverse
+ `rank`_ rank


.. _pinv: pinv.html
.. _rank: rank.html
.. _inv: inv.html
.. _backslash: backslash.html


