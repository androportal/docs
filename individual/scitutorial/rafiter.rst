


rafiter
=======

(obsolete) iterative refinement for a s.p.d. linear system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [xn, rn] = rafiter(A, C_ptr, b, x0, [, nb_iter, verb])




Arguments
~~~~~~~~~

:A a real symmetric positive definite sparse matrix
: :C_ptr a pointer to a Cholesky factorization (got with taucs_chfact)
: :b column vector (r.h.s of the linear system) but "matrix" (multiple
  r.h.s.) are allowed.
: :x0 first solution obtained with taucs_chsolve(C_ptr, b)
: :nb_iter (optional) number of raffinement iterations (default 2)
: :verb (optional) boolean, must be %t for displaying the intermediary
  results, and %f (default) if you do not want.
: :xn new refined solution
: :rn residual ( `A*xn - b`)
:



Description
~~~~~~~~~~~

This function is somewhat obsolete, use `x = taucs_chsolve(C_ptr,b,A)`
(see `taucs_chsolve`_) which do one iterative refinement step.

To use if you want to improve a little the solution got with
taucs_chsolve. Note that with verb=%t the displayed internal steps are
essentially meaningful in the case where b is a column vector.



Caution
~~~~~~~

Currently there is no verification for the input parameters !



Examples
~~~~~~~~


::

    [A] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa");
    C_ptr = `taucs_chfact`_(A);
    b = `rand`_(`size`_(A,1),1);
    x0 = `taucs_chsolve`_(C_ptr, b);
    `norm`_(A*x0 - b)
    [xn, rn] = rafiter(A, C_ptr, b, x0, verb=%t);
    `norm`_(A*xn - b)
    `taucs_chdel`_(C_ptr)




See Also
~~~~~~~~


+ `taucs_chsolve`_ solve a linear sparse (s.p.d.) system given the
  Cholesky factors
+ `taucs_chfact`_ cholesky factorisation of a sparse s.p.d. matrix


.. _taucs_chfact: taucs_chfact.html
.. _taucs_chsolve: taucs_chsolve.html


