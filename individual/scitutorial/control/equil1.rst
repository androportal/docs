====
"equil1"
====

Scilab Function Last update : April 1993
**equil1** - balancing (nonnegative) pair of matrices



Calling Sequence
~~~~~~~~~~~~~~~~

[T [,siz]]=equil1(P,Q [,tol])




Parameters
~~~~~~~~~~


+ **P, Q** : two non-negative symmetric matrices
+ **T** : nonsingular matrix
+ **siz** : vector of three integers
+ **tol** : threshold




Description
~~~~~~~~~~~

**equil1** computes **t** such that:

**P1=T*P*T'** and **Q1=inv(T)'*Q*inv(T)** are as follows:

**P1 = diag(S1,S2,0,0)** and **Q1 = diag(S1,0,S3,0)** with
**S1,S2,S3** positive and diagonal matrices with respective dimensions
**siz=[n1,n2,n3]**

**tol** is a threshold for rank determination in SVD



Examples
~~~~~~~~


::

    
    
    S1=rand(2,2);S1=S1*S1';
    S2=rand(2,2);S2=S2*S2';
    S3=rand(2,2);S3=S3*S3';
    P=sysdiag(S1,S2,zeros(4,4));
    Q=sysdiag(S1,zeros(2,2),S3,zeros(2,2));
    X=rand(8,8);
    P=X*P*X';Q=inv(X)'*Q*inv(X);
    [T,siz]=equil1(P,Q);
    P1=clean(T*P*T')
    Q1=clean(inv(T)'*Q*inv(T))
     
      




See Also
~~~~~~~~

` **balreal** `_,` **minreal** `_,` **equil** `_,` **hankelsv** `_,



Author
~~~~~~

S. Steer 1987

.. _
      : ://./control/equil.htm
.. _
      : ://./control/minreal.htm
.. _
      : ://./control/balreal.htm
.. _
      : ://./control/../robust/hankelsv.htm


