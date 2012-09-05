


unobs
=====

unobservable subspace



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [n,[U]]=unobs(A,C,[tol])




Arguments
~~~~~~~~~

:A, C real matrices
: :tol tolerance used when evaluating ranks (QR factorizations).
: :n dimension of unobservable subspace.
: :U orthogonal change of basis which puts `(A,B)` in canonical form.
:



Description
~~~~~~~~~~~

`[n,[U]]=unobs(A,C,[tol])` gives the unobservable form of an `(A,C)`
pair. The `n` first columns of `U` make a basis for the unobservable
subspace.

The `(2,1)` block (made of last `nx-n` rows and `n` first columns) of
`U'*A*U` is zero and and the `n` first columns of `C*U` are zero.



Examples
~~~~~~~~


::

    A=`diag`_([1,2,3]);C=[1,0,0];
    unobs(A,C)




See Also
~~~~~~~~


+ `contr`_ controllability, controllable subspace, staircase
+ `contrss`_ controllable part
+ `canon`_ canonical controllable form
+ `cont_mat`_ controllability matrix
+ `spantwo`_ sum and intersection of subspaces
+ `dt_ility`_ detectability test


.. _cont_mat: cont_mat.html
.. _canon: canon.html
.. _contr: contr.html
.. _dt_ility: dt_ility.html
.. _spantwo: spantwo.html
.. _contrss: contrss.html


