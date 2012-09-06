


taucs_chget
===========

retrieve the Cholesky factorization at the scilab level



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [Ct,p] = taucs_chget(C_ptr)




Arguments
~~~~~~~~~

:C_ptr a pointer to the Cholesky factorization (C,p : A(p,p)=CC')
: :Ct a scilab sparse matrix (you get the upper triangle i.e. Ct is
  equal to C')
: :p column vector storing the permutation
:



Description
~~~~~~~~~~~

This function may be used if you want to plot the sparse pattern of
the Cholesky factorization (or if you code something which use the
factors). Traditionnaly, the factorization is written :


::

    P A P' = C C'


with P' the permutation matrix associated to the permutation p. As we
get the upper triangle Ct (= C'), in scilab syntax we can write :


::

    A(p,p) = Ct' * Ct




Examples
~~~~~~~~


::

    // Example #1 : a small linear test system 
    A = `sparse`_( [ 2 -1  0  0  0;
                 -1  2 -1  0  0; 
                  0 -1  2 -1  0; 
                  0  0 -1  2 -1; 
                  0  0  0 -1  2] );
    Cp = `taucs_chfact`_(A);
    [Ct, p] = taucs_chget(Cp);
    `full`_(A(p,p) - Ct'*Ct)  // this must be near the null matrix
    `taucs_chdel`_(Cp)
    
    // Example #2 a real example
    `stacksize`_(3000000)  // the last PlotSparse need memory
    // first load a sparse matrix
    [A] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa");
    // compute the factorisation
    Cptr = `taucs_chfact`_(A); 
    // retrieve the factor at scilab level
    [Ct, p] = taucs_chget(Cptr);
    // plot the initial matrix
    `xset`_("window",0) ; `clf`_()
    `PlotSparse`_(A) ; `xtitle`_("Initial matrix A (bcsstk24.rsa)")
    // plot the permuted matrix
    B = A(p,p);
    `xset`_("window",1) ; `clf`_()
    `PlotSparse`_(B) ; `xtitle`_("Permuted matrix B = A(p,p)")
    // plot the upper triangle Ct
    `xset`_("window",2) ; `clf`_()
    `PlotSparse`_(Ct) ; `xtitle`_("The pattern of Ct (A(p,p) = C*Ct)")
    // retrieve cnz
    [OK, n, cnz] = `taucs_chinfo`_(Cptr)
    // cnz is superior to the realnumber of non zeros elements of C :
    cnz_exact = `nnz`_(Ct)
    // do not forget to clear memory
    `taucs_chdel`_(Cptr)




See Also
~~~~~~~~


+ `taucs_chfact`_ cholesky factorisation of a sparse s.p.d. matrix
+ `taucs_chsolve`_ solve a linear sparse (s.p.d.) system given the
  Cholesky factors
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
.. _taucs_chsolve: taucs_chsolve.html
.. _taucs_chinfo: taucs_chinfo.html


