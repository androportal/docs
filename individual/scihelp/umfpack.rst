


umfpack
=======

solve sparse linear system



Calling Sequence
~~~~~~~~~~~~~~~~


::

    x = umfpack(A,"\",b)
    x = umfpack(b,"/",A)




Arguments
~~~~~~~~~

:A a sparse (real or complex) square matrix n x n
: :b in the first case, a column vector (n x 1) or a n x m matrix ; in
  the second case, a row vector (1 x n) or a m x n matrix
: :x in the first case , a column vector (n x 1) or a n x m matrix ;
  in the second case, a row vector (1 x n) or a m x n matrix
: :2d arg string specifier "\" or "/"
:



Description
~~~~~~~~~~~

This function is intended to work like the classic operators \ and / x
= A\b and x = b/A) i.e. it solves a linear system Ax = b or xA = b
with a sparse square (says n x n) real or complex matrix and with a
compatible rhs b : n x m in the first case and m x n in the second.



Details
~~~~~~~

First an LU factorisation of the matrix is computed ( `P R^(-1) A Q =
LU` where P and Q are permutation matrices, R is a diagonal matrix
(row scaling), L a lower triangular matrix with a diagonal of 1, and U
an upper triangular matrix) then a first solution is computed with
forward/backward subtitutions ; finaly the solution is improved by
iterative refinement.



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
    x = umfpack(A,"\",b)
    
    // test the other form x A = b
    b = [8  20  13  6  17];
    x = umfpack(b,"/",A)   // solution must be [1 2 3 4 5]
    
    // test multiple rhs
    b = `rand`_(5,3);
    x = umfpack(A,"\",b)
    `norm`_(A*x - b)
    
    // test multiple rhs for x A = b
    b = `rand`_(3,5);
    x = umfpack(b,"/",A)
    `norm`_(x*A - b)
    
    // solve a complex system
    A = `sparse`_( [ 2+%i  3+2*%i  0      0    0;
                  3-%i  0       4+%i   0    6-3*%i; 
                  0    -1+%i   -3+6*%i 2-%i 0; 
                  0     0       1-5*%i 0    0; 
                  0     4       2-%i   0    1] );
    b = [ 3+13*%i ; 58+32*%i ; -19+13*%i ; 18-12*%i ; 22+16*%i ];
    x = umfpack(A,"\",b)  // x must be [1+i; 2+2i; 3+3i; 4 + 4i; 5+5i]
    
    // A benchmark of several linear solvers
    
    [A,descr,ref,mtype] = `ReadHBSparse`_(SCI+"/modules/umfpack/examples/bcsstk24.rsa"); 
    
    b = 0*`ones`_(`size`_(A,1),1);
    
    `tic`_();
    res = umfpack(A,'\',b);
    `mprintf`_('\ntime needed to solve the system with umfpack: %.3f\n',`toc`_());
    
    `tic`_();
    res = `linsolve`_(A,b);
    `mprintf`_('\ntime needed to solve the system with linsolve: %.3f\n',`toc`_());
    
    `tic`_();
    res = A\b;
    `mprintf`_('\ntime needed to solve the system with the backslash operator: %.3f\n',`toc`_());




See Also
~~~~~~~~


+ `umf_lufact`_ lu factorisation of a sparse matrix
+ `umf_lusolve`_ solve a linear sparse system given the LU factors
+ `umf_ludel`_ utility function used with umf_lufact
+ `umf_luinfo`_ get information on LU factors
+ `umf_luget`_ retrieve lu factors at the scilab level
+ `linsolve`_ linear equation solver
+ `backslash`_ (\) left matrix division.


.. _umf_luget: umf_luget.html
.. _linsolve: linsolve.html
.. _umf_luinfo: umf_luinfo.html
.. _umf_ludel: umf_ludel.html
.. _umf_lusolve: umf_lusolve.html
.. _umf_lufact: umf_lufact.html
.. _backslash: backslash.html


