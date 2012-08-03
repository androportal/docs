====
"orth"
====

Scilab Function Last update : April 1993
**orth** - orthogonal basis



Calling Sequence
~~~~~~~~~~~~~~~~

Q=orth(A)




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix
+ **Q** : real or complex matrix




Description
~~~~~~~~~~~

**Q=orth(A)** returns **Q** , an orthogonal basis for the span of
**A** . Range( **Q** ) = Range( **A** ) and **Q'*Q=eye** .

The number of columns of **Q** is the rank of **A** as determined by
the QR algorithm.



Examples
~~~~~~~~


::

    
    
    A=rand(5,3)*rand(3,4);
    [X,dim]=rowcomp(A);X=X';
    svd([orth(A),X(:,1:dim)])
     
      




See Also
~~~~~~~~

` **qr** `_,` **rowcomp** `_,` **colcomp** `_,` **range** `_,

.. _
      : ://./linear/colcomp.htm
.. _
      : ://./linear/qr.htm
.. _
      : ://./linear/rowcomp.htm
.. _
      : ://./linear/range.htm


