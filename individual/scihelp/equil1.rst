


equil1
======

balancing (nonnegative) pair of matrices



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [T [,siz]]=equil1(P,Q [,tol])




Arguments
~~~~~~~~~

:P, Q two non-negative symmetric matrices
: :T nonsingular matrix
: :siz vector of three integers
: :tol threshold
:



Description
~~~~~~~~~~~

`equil1` computes `t` such that:

`P1=T*P*T'` and `Q1=inv(T)'*Q*inv(T)` are as follows:

`P1 = diag(S1,S2,0,0)` and `Q1 = diag(S1,0,S3,0)` with `S1,S2,S3`
positive and diagonal matrices with respective dimensions
`siz=[n1,n2,n3]`

`tol` is a threshold for rank determination in SVD



Examples
~~~~~~~~


::

    S1=`rand`_(2,2);S1=S1*S1';
    S2=`rand`_(2,2);S2=S2*S2';
    S3=`rand`_(2,2);S3=S3*S3';
    P=`sysdiag`_(S1,S2,`zeros`_(4,4));
    Q=`sysdiag`_(S1,`zeros`_(2,2),S3,`zeros`_(2,2));
    X=`rand`_(8,8);
    P=X*P*X';Q=`inv`_(X)'*Q*`inv`_(X);
    [T,siz]=equil1(P,Q);
    P1=`clean`_(T*P*T')
    Q1=`clean`_(`inv`_(T)'*Q*`inv`_(T))




See Also
~~~~~~~~


+ `balreal`_ balanced realization
+ `minreal`_ minimal balanced realization
+ `equil`_ balancing of pair of symmetric matrices
+ `hankelsv`_ Hankel singular values


.. _hankelsv: hankelsv.html
.. _minreal: minreal.html
.. _balreal: balreal.html
.. _equil: equil.html


