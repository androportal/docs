====
"bdiag"
====

Scilab Function Last update : 16/12/2004
**bdiag** - block diagonalization, generalized eigenvectors



Calling Sequence
~~~~~~~~~~~~~~~~

[Ab [,X [,bs]]]=bdiag(A [,rmax])




Parameters
~~~~~~~~~~


+ **A** : real or complex square matrix
+ **rmax** : real number
+ **Ab** : real or complex square matrix
+ **X** : real or complex non-singular matrix
+ **bs** : vector of integers




Description
~~~~~~~~~~~


::

    
    
    [Ab [,X [,bs]]]=bdiag(A [,rmax]) 
       
        


performs the block-diagonalization of matrix **A** . bs gives the
structure of the blocks (respective sizes of the blocks). **X** is the
change of basis i.e **Ab = inv(X)*A*X** is block diagonal.

**rmax** controls the conditioning of **X** ; the default value is the
l1 norm of **A** .

To get a diagonal form (if it exists) choose a large value for
**rmax** ( **rmax=1/%eps** for example). Generically (for real random
A) the blocks are (1x1) and (2x2) and **X** is the matrix of
eigenvectors.



Examples
~~~~~~~~


::

    
    
    //Real case: 1x1 and 2x2 blocks
    a=rand(5,5);[ab,x,bs]=bdiag(a);ab
    //Complex case: complex 1x1 blocks
    [ab,x,bs]=bdiag(a+%i*0);ab
     
      




See Also
~~~~~~~~

` **schur** `_,` **sylv** `_,` **spec** `_,

.. _
      : ://./linear/sylv.htm
.. _
      : ://./linear/spec.htm
.. _
      : ://./linear/schur.htm


