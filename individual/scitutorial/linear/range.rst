====
"range"
====

Scilab Function Last update : 03/11/2006
**range** - range (span) of **A^k**



Calling Sequence
~~~~~~~~~~~~~~~~

[U,dim]=range(A,k)




Parameters
~~~~~~~~~~


+ **A** : real or complex matrix, assumed square if k>1
+ **k** : integer
+ **U** : orthonormal matrix
+ **dim** : integer (dimension of subspace)




Description
~~~~~~~~~~~

Computation of Range **A^k** : the first dim columns of **U'** span
the range of **A^k** . **U** performs a row compression of **A^k**
without calculating **A^k** .Vector **y** belongs to range **A^k** iff
the last components of **U*y** are zeros (i.e. numerically small).
**U*U'** is the Identity matrix



Examples
~~~~~~~~


::

    
        
        A=rand(4,2)*rand(2,4);   // 4 column vectors, 2 independent.
        [U,dim]=range(A,1);dim   // compute the range
    
        y1=A*rand(4,1);          //a vector which is in the range of A
        y2=rand(4,1);            //a vector which is not  in the range of A
        norm(U(dim+1:$,:)*y1)    //the last entries are zeros, y1 is in the range of A
        norm(U(dim+1:$,:)*y2)    //the last entries are not zeros
    
        I=U(1:dim,:)'            //I is a basis of the range
        coeffs=U(1:dim,:)*y1     // components of y1 relative to the I basis
    
        norm(I*coeffs-y1)        //check
    
        
      




See Also
~~~~~~~~

` **fullrfk** `_,` **rowcomp** `_,` **orth** `_,



Author
~~~~~~

F. D. INRIA ;



Used Function
~~~~~~~~~~~~~
The **range** function is based on the ` **rowcomp** `_ function which
uses the ` **svd** `_ decomposition.
.. _
    : ://./linear/svd.htm
.. _
      : ://./linear/fullrfk.htm
.. _
    : ://./linear/rowcomp.htm
.. _
      : ://./linear/orth.htm


