


cond2sp
=======

computes an approximation of the 2-norm condition number of a s.p.d.
sparse matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [K2, lm, vm, lM, vM] = cond2sp(A, C_ptr [, rtol, itermax, verb])




Arguments
~~~~~~~~~

:A a real symmetric positive definite sparse matrix
: :C_ptr a pointer to a Cholesky factorization (got with taucs_chfact)
: :rtol (optional) relative tolerance (default 1.e-3) (see details in
  DESCRIPTION)
: :itermax (optional) maximum number of iterations in the underlying
  algorithms (default 30)
: :verb (optional) boolean, must be %t for displaying the intermediary
  results, and %f (default) if you do not want.
: :K2 estimated 2-norm condition number `K2 = ||A||_2 ||A^(-1)||_2 =
  lM/lm`
: :lm (real positive scalar) minimum eigenvalue
: :vm associated eigenvector
: :lM (real positive scalar) maximum eigenvalue
: :vM associated eigenvector
:



Description
~~~~~~~~~~~

This quick and dirty function computes `(lM,vM)` using the iterative
power method and `(lm,vm)` with the inverse iterative power method,
then `K2 = lM/lm`. For each method the iterations are stopped until
the following condition is met :


::

    | (l_new - l_old)/l_new | < rtol


but 4 iterations are nevertheless required and also the iterations are
stopped if itermax is reached (and a warning message is issued). As
the matrix is symmetric this is the rayleigh quotient which gives the
estimated eigenvalue at each step ( `lambda = v'*A*v`). You may called
this function with named parameter, for instance if you want to see
the intermediary result without setting yourself the rtol and itermax
parameters you may called this function with the syntax :


::

    [K2, lm, vm, lM, vM] = cond2sp(A , C_ptr, verb=%t )




Caution
~~~~~~~

Currently there is no verification for the input parameters !



Remark
~~~~~~

This function is intended to get an approximation of the 2-norm
condition number (K2) and with the methods used, the precision on the
obtained eigenvectors (vM and vm) are generally not very good. If you
look for a smaller residual `||Av - l*v||`, you may apply some inverse
power iterations from v0 with the matrix :


::

    B = A - l0*`speye`_(A)


For instance, applied 5 such iterations for `(lm,vm)` is done with :


::

    [A] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa");
    C_ptr = `taucs_chfact`_(A);
    [K2, lm, vm, lM, vM] = cond2sp(A , C_ptr, 1.e-5, 50, %t );
    `taucs_chdel`_(C_ptr)
    l0 = lm ; v0 = vm;  // or l0 = lM ; v0 = vM;  // to polish (lM,vM)
    B = A - l0*`speye`_(A);
    LUp = `umf_lufact`_(B);
    vr = v0; nstep = 5;
    for i=1:nstep, vr = `umf_lusolve`_(LUp, vr, "Ax=b", B); vr = vr/`norm`_(vr) ; end
    `umf_ludel`_(LUp); // if you do not use anymore this factorization
    lr = vr'*A*vr;
    norm_r0 = `norm`_(A*v0 - l0*v0);
    norm_rr = `norm`_(A*vr - lr*vr);
    // Bauer-Fike error bound...
    `mprintf`_(" first estimated eigenvalue : l0 = %e \n\t", l0) 
    `mprintf`_(" |l-l0| <= ||Av0-l0v0|| = %e , |l-l0|/l0 <= %e \n\r", norm_r0, norm_r0/l0)
    `mprintf`_(" raffined estimated eigenvalue : lr = %e \n\t", lr) 
    `mprintf`_(" |l-lr| <= ||Avr-lrvr|| = %e , |l-lr|/lr <= %e \n\r", norm_rr, norm_rr/lr)




Examples
~~~~~~~~


::

    [A] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa");
    C_ptr = `taucs_chfact`_(A);
    [K2, lm, vm, lM, vM] = cond2sp(A , C_ptr, 1.e-5, 50, %t );
    `taucs_chdel`_(C_ptr)




See Also
~~~~~~~~


+ `condestsp`_ estimate the condition number of a sparse matrix
+ `taucs_chfact`_ cholesky factorisation of a sparse s.p.d. matrix
+ `rcond`_ inverse condition number


.. _condestsp: condestsp.html
.. _taucs_chfact: taucs_chfact.html
.. _rcond: rcond.html


