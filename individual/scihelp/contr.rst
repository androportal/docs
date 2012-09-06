


contr
=====

controllability, controllable subspace, staircase



Calling Sequence
~~~~~~~~~~~~~~~~


::

    n=contr(A,B [,tol])
    [n,U]=contr(A,B [,tol])
    [n,U,ind,V,Ac,Bc]=contr(A,B,[,tol])




Arguments
~~~~~~~~~

:A, B real matrices
: :tol tolerance parameter
: :n dimension of controllable subspace.
: :U orthogonal change of basis which puts `(A,B)` in canonical form.
: :V orthogonal matrix, change of basis in the control space.
: :Ac block Hessenberg matrix `Ac=U'*A*U`
: :Bc is `U'*B*V`.
: :ind p integer vector associated with controllability indices
  (dimensions of subspaces `B, B+A*B,...=ind(1),ind(1)+ind(2),...`)
:



Description
~~~~~~~~~~~

`[n,[U]]=contr(A,B,[tol])` gives the controllable form of an `(A,B)`
pair.( `dx/dt = A x + B u` or `x(n+1) = A x(n) +b u(n)`). The `n`
first columns of `U` make a basis for the controllable subspace.

If `V=U(:,1:n)`, then `V'*A*V` and `V'*B` give the controllable part
of the `(A,B)` pair.

The pair `(Bc, Ac)` is in staircase controllable form.


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

Slicot library (see ab01od in SCI/modules/cacsd/src/slicot).



Examples
~~~~~~~~


::

    W=`ssrand`_(2,3,5,`list`_('co',3));  //cont. subspace has dim 3.
    A=W("A");B=W("B");
    [n,U]=contr(A,B);n
    A1=U'*A*U;
    `spec`_(A1(n+1:$,n+1:$))  //uncontrollable modes
    `spec`_(A+B*`rand`_(3,5))




See Also
~~~~~~~~


+ `canon`_ canonical controllable form
+ `cont_mat`_ controllability matrix
+ `unobs`_ unobservable subspace
+ `stabil`_ stabilization
+ `st_ility`_ stabilizability test


.. _cont_mat: cont_mat.html
.. _canon: canon.html
.. _unobs: unobs.html
.. _st_ility: st_ility.html
.. _stabil: stabil.html


