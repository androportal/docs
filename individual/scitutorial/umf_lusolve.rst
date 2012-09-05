


umf_lusolve
===========

solve a linear sparse system given the LU factors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x] = umf_lusolve(LU_ptr, b [, st, A])




Arguments
~~~~~~~~~

:LU_ptr a pointer to umf lu factors (L,U,p,q,R)
: :b a real or complex column vector or a matrix (multiple rhs)
: :st (optional) a string "Ax=b" (default) or "Ax'=b" (to be written
  "Ax''=b" in scilab langage: a quote in a string must be doubled !)
: :A (optional) the sparse square matrix corresponding to the LU
  factors (LU_ptr must be got with LU_ptr = umf_lufact(A))
: :x a column vector or a matrix in case of multiple rhs ( x(:,i) is
  solution of A x(:,i) = b(:,i) or A'x(:,i) = b(:,i) )
:



Description
~~~~~~~~~~~

This function must be used in conjonction with `umf_lufact`_ which
computes the LU factors of a sparse matrix. The optional `st` argument
lets us choose between the solving of Ax=b (general case) or of A'x=b
(sometimes useful). If you give the 4th argument then iterative
refinement will be also proceceed (as in umfpack) to give a better
numerical solution.



Examples
~~~~~~~~

see the example section of `umf_lufact`_



See Also
~~~~~~~~


+ `umfpack`_ solve sparse linear system
+ `umf_lufact`_ lu factorisation of a sparse matrix
+ `umf_luget`_ retrieve lu factors at the scilab level
+ `umf_ludel`_ utility function used with umf_lufact
+ `umf_luinfo`_ get information on LU factors


.. _umf_luget: umf_luget.html
.. _umf_luinfo: umf_luinfo.html
.. _umf_ludel: umf_ludel.html
.. _umfpack: umfpack.html
.. _umf_lufact: umf_lufact.html


