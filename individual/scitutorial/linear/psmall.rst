====
"psmall"
====

Scilab Function Last update : April 1993
**psmall** - spectral projection



Calling Sequence
~~~~~~~~~~~~~~~~

[Q,M]=psmall(A,thres,flag)




Parameters
~~~~~~~~~~


+ **A** : real square matrix
+ **thres** : real number
+ **flag** : character string ( **'c'** or **'d'** )
+ **Q,M** : real matrices




Description
~~~~~~~~~~~

Projection on eigen-subspace associated with eigenvalues with real
part < **thres** ( **flag='c'** ) or with modulus < **thres** (
**flag='d'** ).

The projection is defined by **Q*M** , **Q** is full column rank,
**M** is full row rank and **M*Q=eye** .

If **flag='c'** , the eigenvalues of **M*A*Q** = eigenvalues of **A**
with real part < **thres** .

If **flag='d'** , the eigenvalues of **M*A*Q** = eigenvalues of **A**
with magnitude < **thres** .

If **flag='c'** and if **[Q1,M1]** = full rank factorization (
**fullrf** ) of **eye()-Q*M** then eigenvalues of **M1*A*Q1** =
eigenvalues of **A** with real part >= **thres** .

If **flag='d'** and if **[Q1,M1]** = full rank factorization (
**fullrf** ) of **eye()-Q*M** then eigenvalues of **M1*A*Q1** =
eigenvalues of **A** with magnitude >= **thres** .



Examples
~~~~~~~~


::

    
    
    A=diag([1,2,3]);X=rand(A);A=inv(X)*A*X;
    [Q,M]=psmall(A,2.5,'d');
    spec(M*A*Q)
    [Q1,M1]=fullrf(eye()-Q*M);
    spec(M1*A*Q1)
     
      




See Also
~~~~~~~~

` **pbig** `_,` **proj** `_,` **projspec** `_,



Author
~~~~~~

F. Delebecque INRIA. (1988);



Used Function
~~~~~~~~~~~~~

This function is based on the ordered schur form (scilab function
**schur** ).

.. _
      : ://./linear/pbig.htm
.. _
      : ://./linear/projspec.htm
.. _
      : ://./linear/proj.htm


