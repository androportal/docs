====
"unobs"
====

Scilab Function Last update : April 1993
**unobs** - unobservable subspace



Calling Sequence
~~~~~~~~~~~~~~~~

[n,[U]]=unobs(A,C,[tol])




Parameters
~~~~~~~~~~


+ **A, C** : real matrices
+ **tol** : tolerance used when evaluating ranks (QR factorizations).
+ **n** : dimension of unobservable subspace.
+ **U** : orthogonal change of basis which puts **(A,B)** in canonical
  form.




Description
~~~~~~~~~~~

**[n,[U]]=unobs(A,C,[tol])** gives the unobservable form of an
**(A,C)** pair. The **n** first columns of **U** make a basis for the
unobservable subspace.

The **(2,1)** block (made of last **nx-n** rows and **n** first
columns) of **U'*A*U** is zero and and the **n** first columns of
**C*U** are zero.



Examples
~~~~~~~~


::

    
    
    A=diag([1,2,3]);C=[1,0,0];
    unobs(A,C)
     
      




See Also
~~~~~~~~

` **contr** `_,` **contrss** `_,` **canon** `_,` **cont_mat** `_,`
**spantwo** `_,` **dt_ility** `_,

.. _
      : ://./control/canon.htm
.. _
      : ://./control/contrss.htm
.. _
      : ://./control/../linear/spantwo.htm
.. _
      : ://./control/cont_mat.htm
.. _
      : ://./control/contr.htm
.. _
      : ://./control/dt_ility.htm


