


chsolve
=======

sparse Cholesky solver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    sol=chsolve(spcho,rhs)




Arguments
~~~~~~~~~

:spcho list containing the Cholesky factors in coded form returned by
  chfact
: :rhs, sol full column vectors
:



Description
~~~~~~~~~~~

`sol=chsolve(spcho,rhs)` computes the solution of `rhs=A*sol`, with
`A` a symmetric sparse positive definite matrix. This function is
based on the Ng-Peyton programs (ORNL). See the Fortran programs for a
complete description of the variables in `spcho`.



Examples
~~~~~~~~


::

    A=`sprand`_(20,20,0.1);
    A=A*A'+`eye`_();  
    spcho=`chfact`_(A);
    sol=(1:20)';rhs=A*sol;
    spcho=`chfact`_(A);
    chsolve(spcho,rhs)




See Also
~~~~~~~~


+ `chfact`_ sparse Cholesky factorization
+ `sparse`_ sparse matrix definition
+ `lufact`_ sparse lu factorization
+ `luget`_ extraction of sparse LU factors
+ `spchol`_ sparse cholesky factorization


.. _chfact: chfact.html
.. _spchol: spchol.html
.. _sparse: sparse.html
.. _luget: luget.html
.. _lufact: lufact.html


