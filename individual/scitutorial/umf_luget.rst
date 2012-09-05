


umf_luget
=========

retrieve lu factors at the scilab level



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [L,U,p,q,Rd] = umf_luget(LU_ptr)




Arguments
~~~~~~~~~

:LU_ptr a pointer to umf lu factors (L,U,p,q,R)
: :L,U scilab sparse matrix
: :p,q column vectors storing the permutations
: :Rd vector storing the (row) scaling factors
:



Description
~~~~~~~~~~~

This function may be used if you want to plot the sparse pattern of
the lu factors (or if you code something which use the lu factors).
The factorization provided by umfpack is of the form:

P R^(-1) A Q = LU

where P and Q are permutation matrices, R is a diagonal matrix (row
scaling), L a lower triangular matrix with a diagonal of 1, and U an
upper triangular matrix. The function provides the matrices L and U as
Sparse scilab matrices but P and Q are given as permutation vectors p
and q (in fact p is the permutation associated to P') and Rd is the
vector corresponding to the diagonal of R.



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
    [L,U,p,q,R] = umf_luget(Lup);
    B = A;
    for i=1:5, B(i,:) = B(i,:)/R(i); end // apply the row scaling
    B(p,q) - L*U  // must be a (quasi) nul matrix
    
    `umf_ludel`_(Lup) // clear memory
    
    // the same with a complex matrix
    A = `sparse`_( [ 2+%i  3+2*%i  0      0    0;
                  3-%i  0       4+%i   0    6-3*%i; 
                  0    -1+%i   -3+6*%i 2-%i 0; 
                  0     0       1-5*%i 0    0; 
                  0     4       2-%i   0    1] );
    Lup = `umf_lufact`_(A);
    [L,U,p,q,R] = umf_luget(Lup);
    B = A;
    for i=1:5, B(i,:) = B(i,:)/R(i); end // apply the row scaling
    B(p,q) - L*U  // must be a (quasi) nul matrix
    
    `umf_ludel`_(Lup) // clear memory




See Also
~~~~~~~~


+ `umfpack`_ solve sparse linear system
+ `umf_lufact`_ lu factorisation of a sparse matrix
+ `umf_lusolve`_ solve a linear sparse system given the LU factors
+ `umf_ludel`_ utility function used with umf_lufact
+ `umf_luinfo`_ get information on LU factors


.. _umf_luinfo: umf_luinfo.html
.. _umf_lusolve: umf_lusolve.html
.. _umf_ludel: umf_ludel.html
.. _umfpack: umfpack.html
.. _umf_lufact: umf_lufact.html


