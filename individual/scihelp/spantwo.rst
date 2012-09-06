


spantwo
=======

sum and intersection of subspaces



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Xp,dima,dimb,dim]=spantwo(A,B, [tol])




Arguments
~~~~~~~~~

:A, B two real or complex matrices with equal number of rows
: :Xp square non-singular matrix
: :dima, dimb, dim integers, dimension of subspaces
: :tol nonnegative real number
:



Description
~~~~~~~~~~~

Given two matrices `A` and `B` with same number of rows, returns a
square matrix `Xp` (non singular but not necessarily orthogonal) such
that :


::

    [A1, 0]    (dim-dimb rows)
    Xp*[A,B]=[A2,B2]    (dima+dimb-dim rows)
    [0, B3]    (dim-dima rows)
    [0 , 0]


The first `dima` columns of `inv(Xp)` span range( `A`).

Columns `dim-dimb+1` to `dima` of `inv(Xp)` span the intersection of
range(A) and range(B).

The `dim` first columns of `inv(Xp)` span range( `A`)+range( `B`).

Columns `dim-dimb+1` to `dim` of `inv(Xp)` span range( `B`).

Matrix `[A1;A2]` has full row rank (=rank(A)). Matrix `[B2;B3]` has
full row rank (=rank(B)). Matrix `[A2,B2]` has full row rank (=rank(A
inter B)). Matrix `[A1,0;A2,B2;0,B3]` has full row rank (=rank(A+B)).



Examples
~~~~~~~~


::

    A=[1,0,0,4;
       5,6,7,8;
       0,0,11,12;
       0,0,0,16];
    B=[1,2,0,0]';C=[4,0,0,1]; 
    Sl=`ss2ss`_(`syslin`_('c',A,B,C),`rand`_(A));
    [no,X]=`contr`_(Sl('A'),Sl('B'));CO=X(:,1:no);  //Controllable part
    [uo,Y]=`unobs`_(Sl('A'),Sl('C'));UO=Y(:,1:uo);  //Unobservable part
    [Xp,dimc,dimu,dim]=spantwo(CO,UO);    //Kalman decomposition
    Slcan=`ss2ss`_(Sl,`inv`_(Xp));




See Also
~~~~~~~~


+ `spanplus`_ sum of subspaces
+ `spaninter`_ subspace intersection


.. _spaninter: spaninter.html
.. _spanplus: spanplus.html


