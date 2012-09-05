


umf_luinfo
==========

get information on LU factors



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [OK, nrow, ncol, lnz, unz, udiag_nz, it] = umf_luinfo(LU_ptr)




Arguments
~~~~~~~~~

:LU_ptr a pointer to umf lu factors (L,U,p,q, R)
: :OK a scalar boolean
: :nrow, ncol, lnz, unz, udiag_nz, it scalars (integers)
:



Description
~~~~~~~~~~~

This function may be used to know basic information about LU factors
created with umf_lufact :

first `OK` is %t if `LU_ptr` is a valid pointer to an umfpack LU
numeric handle (and %f else)

if `OK` is %t then:

:nrow, ncol are the matrix size (L is `nrow x n` and U is `n x ncol`
  where `n = min(nrow,ncol)`
: :lnz, unz are the number of non zeros elements in L and in U;
: :udiag_nz are the number of non zeros elements on the diagonal of U;
  if the matrix is square ( `nrow = ncol = n)` then it is not inversible
  if udiag_nz < n (more precisely it appears to be numericaly not
  inversible through the LU factorization).
: :it 0 if the factors are real and 1 if they are complex.
:

if OK is %f then all the others outputs are set to the empty matrix
[].



Examples
~~~~~~~~


::

    // this is the test matrix from UMFPACK
    A = `sparse`_( [ 2  3  0  0  0;
                  3  0  4  0  6; 
                  0 -1 -3  2  0; 
                  0  0  1  0  0; 
                  0  4  2  0  1] );
    Lup = `umf_lufact`_(A);
    [OK, nrow, ncol, lnz, unz, udiag_nz, it] = umf_luinfo(Lup)  // OK must be %t, nrow=ncol = 5, 
    [L,U,p,q,R] = `umf_luget`_(Lup);
    `nnz`_(L)  // must be equal to lnz
    `nnz`_(U)  // must be equal to unz
    `umf_ludel`_(Lup) // clear memory




See Also
~~~~~~~~


+ `umfpack`_ solve sparse linear system
+ `umf_lufact`_ lu factorisation of a sparse matrix
+ `umf_lusolve`_ solve a linear sparse system given the LU factors
+ `umf_ludel`_ utility function used with umf_lufact
+ `umf_luget`_ retrieve lu factors at the scilab level


.. _umf_luget: umf_luget.html
.. _umf_lusolve: umf_lusolve.html
.. _umf_ludel: umf_ludel.html
.. _umfpack: umfpack.html
.. _umf_lufact: umf_lufact.html


