


umf_lufact
==========

lu factorisation of a sparse matrix



Calling Sequence
~~~~~~~~~~~~~~~~


::

    LU_ptr = umf_lufact(A)




Arguments
~~~~~~~~~

:A a sparse, real or complex, square or rectangular, matrix
: :LU_ptr a pointer to umf lu factors (L,U,p,q,R)
:



Description
~~~~~~~~~~~

This function computes a LU factorisation of the sparse matrix A ()
and return at the scilab level, a pointer (LU_ptr) to a handle of the
LU factors (L,U,p,q,R) (the memory used for them is "outside" scilab
stack).

This function must be used in place of `umfpack`_ if you have multiple
linear systems with the same matrix to solve when the rhs are not
known at the same time (for instance A x1 = b1 and A x2 = b2 but b2
depends on x1, etc...).

When such a factorisation have been computed, a linear system must be
solved with umf_lusolve (in general x = umf_lusolve(LU_ptr, b) but
others options are possible, see `umf_lusolve`_. **To free the memory
used by the LU factors, use umf_ludel(LU_ptr) (`umf_ludel`_);** to
retrieve the LU factors at the scilab level (for example to display
their sparse patterns), use `umf_luget`_; to get some information
(number of non zeros in L and U), use `umf_luinfo`_. To compute an
approximation of the condition number use `condestsp`_



Examples
~~~~~~~~


::

    // this is the small linear test system from UMFPACK
    // whom solution must be [1;2;3;4;5]
    A = `sparse`_( [ 2  3  0  0  0;
                  3  0  4  0  6; 
                  0 -1 -3  2  0; 
                  0  0  1  0  0; 
                  0  4  2  0  1] );
    b = [8 ; 45; -3; 3; 19];
    Lup = umf_lufact(A);
    x = `umf_lusolve`_(Lup,b)
    
    // solve now A'x=b
    x = `umf_lusolve`_(Lup,b,"A''x=b")
    `norm`_(A'*x - b)
    
    // do not forget to clear memory with
    `umf_ludel`_(Lup)
    
    // a real (but small)  example
    // first load a sparse matrix
    [A] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/arc130.rua");
    // compute the factorisation
    Lup = umf_lufact(A); 
    b = `rand`_(`size`_(A,1),1); // a random rhs
    // use umf_lusolve for solving Ax=b
    x = `umf_lusolve`_(Lup,b);
    `norm`_(A*x - b)
    
    // now the same thing with iterative refiment
    x = `umf_lusolve`_(Lup,b,"Ax=b",A);
    `norm`_(A*x - b)
    
    // solve now the system A'x=b
    x = `umf_lusolve`_(Lup,b,"A''x=b");  // without refinement
    `norm`_(A'*x - b)
    x = `umf_lusolve`_(Lup,b,"A''x=b",A);  // with refinement
    `norm`_(A'*x - b)
    
    // do not forget to clear memory
    `umf_ludel`_(Lup)




See Also
~~~~~~~~


+ `umfpack`_ solve sparse linear system
+ `umf_luget`_ retrieve lu factors at the scilab level
+ `umf_lusolve`_ solve a linear sparse system given the LU factors
+ `umf_ludel`_ utility function used with umf_lufact
+ `umf_luinfo`_ get information on LU factors
+ `condestsp`_ estimate the condition number of a sparse matrix


.. _umf_luget: umf_luget.html
.. _umf_luinfo: umf_luinfo.html
.. _condestsp: condestsp.html
.. _umf_lusolve: umf_lusolve.html
.. _umf_ludel: umf_ludel.html
.. _umfpack: umfpack.html


