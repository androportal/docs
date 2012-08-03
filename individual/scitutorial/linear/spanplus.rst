====
"spanplus"
====

Scilab Function Last update : April 1993
**spanplus** - sum of subspaces



Calling Sequence
~~~~~~~~~~~~~~~~

[X,dim,dima]=spanplus(A,B[,tol])




Parameters
~~~~~~~~~~


+ **A, B** : two real or complex matrices with equal number of rows
+ **X** : orthogonal or unitary square matrix
+ **dim, dima** : integers, dimension of subspaces
+ **tol** : nonnegative real number




Description
~~~~~~~~~~~

computes a basis X such that:

the first **dima** columns of **X** span Range( **A** ) and the
following ( **dim-dima** ) columns make a basis of **A+B** relative to
**A** .

The **dim** first columns of **X** make a basis for **A+B** .

One has the following canonical form for **[A,B]** :


::

    
    
             [*,*]    (dima rows)
    X'*[A,B]=[0,*]    (dim-dima rows)
             [0,0]    
       
        


**tol** is an optional argument (see function code).



Examples
~~~~~~~~


::

    
    
    A=rand(6,2)*rand(2,5);      // rank(A)=2
    B=[A(:,1),rand(6,2)]*rand(3,3);   //two additional independent vectors
    [X,dim,dimA]=spanplus(A,B);
    dimA
    dim
     
      




See Also
~~~~~~~~

` **spaninter** `_,` **im_inv** `_,` **spantwo** `_,



Author
~~~~~~

F. D.; ;

.. _
      : ://./linear/im_inv.htm
.. _
      : ://./linear/spaninter.htm
.. _
      : ://./linear/spantwo.htm


