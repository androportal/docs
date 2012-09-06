


taucs_chsolve
=============

solve a linear sparse (s.p.d.) system given the Cholesky factors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x] = taucs_chsolve(C_ptr, b [, A])




Arguments
~~~~~~~~~

:C_ptr a pointer to a handle of the Cholesky factors (C,p with
  A(p,p)=CC')
: :b a real column vector or a matrix (multiple rhs)
: :x a real column vector or a matrix in case of multiple rhs ( x(:,i)
  is solution of A x(:,i) = b(:,i))
: :A (optional) the real s.p.d. matrix A (to use for iterative
  refinement step)
:



Description
~~~~~~~~~~~

This function must be used in conjonction with `taucs_chfact`_ which
computes the Cholesky factorization of a sparse real s.p.d. matrix.
When the matrix `A` is provided, one iterative refinement step is done
(the refined solution is accepted if it improves the 2-norm of the
residual `Ax-b`).

Like in `taucs_chfact`_ the matrix A may be provided either in its
complete form (that is with the lower triangle also) or only with its
upper triangle.



Examples
~~~~~~~~

see the example section of `taucs_chfact`_



See Also
~~~~~~~~


+ `taucs_chfact`_ cholesky factorisation of a sparse s.p.d. matrix
+ `taucs_chdel`_ utility function used with taucs_chfact
+ `taucs_chinfo`_ get information on Cholesky factors
+ `taucs_chget`_ retrieve the Cholesky factorization at the scilab
  level
+ `cond2sp`_ computes an approximation of the 2-norm condition number
  of a s.p.d. sparse matrix


.. _taucs_chdel: taucs_chdel.html
.. _taucs_chget: taucs_chget.html
.. _cond2sp: cond2sp.html
.. _taucs_chfact: taucs_chfact.html
.. _taucs_chinfo: taucs_chinfo.html


