


res_with_prec
=============

computes the residual r = Ax-b with precision



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [r,norm2_r] = res_with_prec(A, x, b)




Arguments
~~~~~~~~~

:A real or complex sparse matrix (m x n)
: :x column vector (n x 1) or matrix (n x p)
: :b column vector (m x 1) or matrix (m x p)
: :r column vector (m x 1) or matrix (m x p)
: :norm2_r scalar or vector (1 x p) when b is a m x p matrix
:



Description
~~~~~~~~~~~

This function computes the residual of a linear system `r = Ax - b`
(together with its 2-norm) with the additionnal precision provided on
"Intel like" FPU (80 bits in place of 64) if the compiler translate
"long double" to use it. Else one must get the same than using `A*x -
b` at the scilab level. In both cases using `[r, nr] =
res_with_prec(A,x,b)` is faster than `r = A*x - b` (and faster than `r
= A*x - b; nr = norm(r)`).

When `p > 1`, `norm2_r(i)` is the 2-norm of the vector `r(:,i)`.



Examples
~~~~~~~~


::

    [A] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa");
    C_ptr = `taucs_chfact`_(A);
    b = `rand`_(`size`_(A,1),1);
    x0 = `taucs_chsolve`_(C_ptr, b);
    `norm`_(A*x0 - b)
    `norm`_(res_with_prec(A, x0, b))




See Also
~~~~~~~~


+ `rafiter`_ (obsolete) iterative refinement for a s.p.d. linear
  system


.. _rafiter: rafiter.html


