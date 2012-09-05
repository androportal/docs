


taucs_chfact
============

cholesky factorisation of a sparse s.p.d. matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    C_ptr = taucs_chfact(A)




Arguments
~~~~~~~~~

:A a sparse real symmetric positive definite (s.p.d.) matrix
: :C_ptr a pointer to the Cholesky factors (C,p : A(p,p)=CC')
:



Description
~~~~~~~~~~~

This function computes a Cholesky factorization of the sparse
symmetric positive definite (s.p.d.) matrix A and retrieves at the
scilab level, a pointer (C_ptr) to a handle of the Cholesky factors
(C,p) (the memory used for them is "outside" scilab space).

If your matrix is s.p.d. this function must be used in place of
`umf_lufact`_ or in place of the scilab function `chfact`_ for a gain
in speed (also as chfact uses the scilab memory for the factors the
user must set the stacksize with a large value because of the fill-in
occuring in computing the factor C which then may take more memory
than the initial matrix A).

When such a factorisation have been computed, a linear system must be
solved with `taucs_chsolve`_. **To free the memory used by the
Cholesky factors, use `taucs_chdel`_(C_ptr)** ;to retrieve the
Cholesky factors at the scilab level (for example to display their
sparse patterns), use `taucs_chget`_; to get some information (number
of non zeros in C), use `taucs_chinfo`_. To compute an approximation
of the condition number in norm 2 use `cond2sp`_.



Remarks
~~~~~~~


+ taucs_chfact works only with the upper triangle of A, and the matrix
  A must be provided either in its complete form (that is with the lower
  triangle also) or only with its upper triangle;



+ currently taucs_chfact uses the genmmd (generalized minimum degree)
  algorithm of Liu to find in a first step the permutation p (so as to
  minimize the fill-in in the factorization); future versions will let
  the user choose his/her own reordering by providing a supplementary
  argument p.




Examples
~~~~~~~~


::

    // Example #1 : a small linear test system 
    // whom solution must be [1;2;3;4;5]
    A = `sparse`_( [ 2 -1  0  0  0;
                 -1  2 -1  0  0; 
                  0 -1  2 -1  0; 
                  0  0 -1  2 -1; 
                  0  0  0 -1  2] );
    b = [0 ; 0; 0; 0; 6];
    Cp = taucs_chfact(A);
    x = `taucs_chsolve`_(Cp,b)
    // do not forget to clear memory with
    `taucs_chdel`_(Cp)
    
    // Example #2 a real example
    // first load a sparse matrix
    [A] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa");
    // compute the factorisation
    Cp = taucs_chfact(A); 
    b = `rand`_(`size`_(A,1),1); // a random rhs
    // use taucs_chsolve for solving Ax=b
    x = `taucs_chsolve`_(Cp,b);
    `norm`_(A*x - b)
    // the same with one iterative refinement step
    x = `taucs_chsolve`_(Cp,b,A);
    `norm`_(A*x - b)
    // do not forget to clear memory
    `taucs_chdel`_(Cp)




See Also
~~~~~~~~


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
.. _taucs_chinfo: taucs_chinfo.html
.. _chfact: chfact.html
.. _cond2sp: cond2sp.html
.. _umf_lufact: umf_lufact.html
.. _taucs_chsolve: taucs_chsolve.html


