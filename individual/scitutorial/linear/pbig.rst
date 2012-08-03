====
"pbig"
====

Scilab Function Last update : April 1993
**pbig** - eigen-projection



Calling Sequence
~~~~~~~~~~~~~~~~

[Q,M]=pbig(A,thres,flag)




Parameters
~~~~~~~~~~


+ **A** : real square matrix
+ **thres** : real number
+ **flag** : character string ( **'c'** or **'d'** )
+ **Q,M** : real matrices




Description
~~~~~~~~~~~

Projection on eigen-subspace associated with eigenvalues with real
part >= **thres** ( **flag='c'** ) or with magnitude >= **thres** (
**flag='d'** ).

The projection is defined by **Q*M** , **Q** is full column rank,
**M** is full row rank and **M*Q=eye** .

If **flag='c'** , the eigenvalues of **M*A*Q** = eigenvalues of **A**
with real part >= **thres** .

If **flag='d'** , the eigenvalues of **M*A*Q** = eigenvalues of **A**
with magnitude >= **thres** .

If **flag='c'** and if **[Q1,M1]** = full rank factorization (
**fullrf** ) of **eye()-Q*M** then eigenvalues of **M1*A*Q1** =
eigenvalues of **A** with real part < **thres** .

If **flag='d'** and if **[Q1,M1]** = full rank factorization (
**fullrf** ) of **eye()-Q*M** then eigenvalues of **M1*A*Q1** =
eigenvalues of **A** with magnitude < **thres** .



Examples
~~~~~~~~


::

    
    
    A=diag([1,2,3]);X=rand(A);A=inv(X)*A*X;
    [Q,M]=pbig(A,1.5,'d');
    spec(M*A*Q)
    [Q1,M1]=fullrf(eye()-Q*M);
    spec(M1*A*Q1)
     
      




See Also
~~~~~~~~

` **psmall** `_,` **projspec** `_,` **fullrf** `_,` **schur** `_,



Author
~~~~~~

F. D. (1988); ;



Used Function
~~~~~~~~~~~~~

**pbig** is based on the ordered schur form (scilab function **schur**
).

.. _
      : ://./linear/schur.htm
.. _
      : ://./linear/psmall.htm
.. _
      : ://./linear/projspec.htm
.. _
      : ://./linear/fullrf.htm


