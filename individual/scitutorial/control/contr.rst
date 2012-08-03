====
"contr"
====

Scilab Function Last update : April 1993
**contr** - controllability, controllable subspace, staircase



Calling Sequence
~~~~~~~~~~~~~~~~

n=contr(A,B [,tol])
[n,U]=contr(A,B [,tol])
[n,U,ind,V,Ac,Bc]=contr(A,B,[,tol])




Parameters
~~~~~~~~~~


+ **A, B** : real matrices
+ **tol** : tolerance parameter
+ **n** : dimension of controllable subspace.
+ **U** : orthogonal change of basis which puts **(A,B)** in canonical
  form.
+ **V** : orthogonal matrix, change of basis in the control space.
+ **Ac** : block Hessenberg matrix **Ac=U'*A*V**
+ **Bc** : is **U'*B*V** .
+ **ind** : p integer vector associated with controllability indices
  (dimensions of subspaces **B, B+A*B,...=ind(1),ind(1)+ind(2),...** )




Description
~~~~~~~~~~~

**[n,[U]]=contr(A,B,[tol])** gives the controllable form of an
**(A,B)** pair.( **dx/dt = A x + B u** or **x(n+1) = A x(n) +b u(n)**
). The **n** first columns of **U** make a basis for the controllable
subspace.

If **V=U(:,1:n)** , then **V'*A*V** and **V'*B** give the controllable
part of the **(A,B)** pair.

The pair **(Bc, Ac)** is in staircase controllable form.


::

    
    
                            |B |sI-A      *  . . .  *      *       |
                            | 1|    11       .      .      .       |
                            |  |  A    sI-A    .    .      .       |
                            |  |   21      22    .  .      .       |
                            |  |        .     .     *      *       |
         [U'BV|sI - U'AU] = |0 |     0    .     .                  |
                            |  |            A     sI-A     *       |
                            |  |             p,p-1    pp           |
                            |  |                                   |
                            |0 |         0          0   sI-A       |
                            |  |                            p+1,p+1|
       
        




Reference
~~~~~~~~~

Slicot library (see ab01od in SCIDIR/routines/slicot).



Examples
~~~~~~~~


::

    
    
    W=ssrand(2,3,5,list('co',3));  //cont. subspace has dim 3.
    A=W("A");B=W("B");
    [n,U]=contr(A,B);n
    A1=U'*A*U;
    spec(A1(n+1:$,n+1:$))  //uncontrollable modes
    spec(A+B*rand(3,5))    
     
      




See Also
~~~~~~~~

` **canon** `_,` **cont_mat** `_,` **unobs** `_,` **stabil** `_,`
**st_ility** `_,

.. _
      : ://./control/canon.htm
.. _
      : ://./control/cont_mat.htm
.. _
      : ://./control/st_ility.htm
.. _
      : ://./control/stabil.htm
.. _
      : ://./control/unobs.htm


