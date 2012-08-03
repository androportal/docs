====
"fullrf"
====

Scilab Function Last update : 16/12/2004
**fullrf** - full rank factorization



Calling Sequence
~~~~~~~~~~~~~~~~

[Q,M,rk]=fullrf(A,[tol])




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix
+ **tol** : real number (threshold for rank determination)
+ **Q,M** : real or complex matrix
+ **rk** : integer (rank of **A** )




Description
~~~~~~~~~~~

Full rank factorization : **fullrf** returns **Q** and **M** such that
**A = Q*M** with range( **Q** )=range( **A** ) and ker( **M** )=ker(
**A** ), **Q** full column rank , **M** full row rank, **rk = rank(A)
= #columns(Q) = #rows(M)** .

**tol** is an optional real parameter (default value is **sqrt(%eps)**
). The rank **rk** of **A** is defined as the number of singular
values larger than **norm(A)*tol** .

If A is symmetric, **fullrf** returns **M=Q'** .



Examples
~~~~~~~~


::

    
    
    A=rand(5,2)*rand(2,5);
    [Q,M]=fullrf(A);
    norm(Q*M-A,1)
    [X,d]=rowcomp(A);Y=X';
    svd([A,Y(:,1:d),Q])        //span(Q) = span(A) = span(Y(:,1:2))
     
      




See Also
~~~~~~~~

` **svd** `_,` **qr** `_,` **fullrfk** `_,` **rowcomp** `_,`
**colcomp** `_,



Author
~~~~~~

F.D.;

.. _
      : ://./linear/qr.htm
.. _
      : ://./linear/rowcomp.htm
.. _
      : ://./linear/svd.htm
.. _
      : ://./linear/colcomp.htm
.. _
      : ://./linear/fullrfk.htm


