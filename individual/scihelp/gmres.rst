


gmres
=====

Generalized Minimum RESidual method



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x,flag,err,iter,res] = gmres(A,b,[rstr,[tol,[maxi,[M,[x0]]]]])




Arguments
~~~~~~~~~

:A n-by-n matrix or function returning `A*x`. If `A` is a function, it
must have the following header :

::

    function y=A(x)


: :b right hand side vector
: :x0 initial guess vector (default: zeros(n,1))
: :M preconditioner: matrix of size n-by-n or function returning `M*x`
(In the first case, default: eye(n,n)). If M is a function, it must
have the following header :

::

    function y=M(x)


: :rstr number of iterations between restarts (default: 10)
: :maxi maximum number of iterations (default: n)
: :tol error tolerance (default: 1e-6)
: :x solution vector
: :err final residual norm
: :iter number of iterations performed
: :flag
    :0 = `gmres` converged to the desired tolerance within `maxi`
      iterations
    : :1 = no convergence given `maxi`
    :

: :res residual vector
:



Description
~~~~~~~~~~~

:GMRES solves the linear system `Ax=b` using the Generalized Minimal
  residual method with restarts.
: :Details of this algorithm are described in : "Templates for the
  Solution of Linear Systems: Building Blocks for Iterative Methods",
  Barrett, Berry, Chan, Demmel, Donato, Dongarra, Eijkhout, Pozo,
  Romine, and Van der Vorst, SIAM Publications, 1993 (ftp
  netlib2.cs.utk.edu; cd linalg; get templates.ps). "Iterative Methods
  for Sparse Linear Systems, Second Edition" Saad, SIAM Publications,
  2003 (ftp ftp.cs.umn.edu; cd dept/users/saad/PS; get all_ps.zip).
:



Examples
~~~~~~~~


::

    // If A and M are matrices
    A=[ 94  0   0   0    0   28  0   0   32  0  
        0   59  13  5    0   0   0   10  0   0  
        0   13  72  34   2   0   0   0   0   65 
        0   5   34  114  0   0   0   0   0   55 
        0   0   2   0    70  0   28  32  12  0  
        28  0   0   0    0   87  20  0   33  0  
        0   0   0   0    28  20  71  39  0   0  
        0   10  0   0    32  0   39  46  8   0  
        32  0   0   0    12  33  0   8   82  11 
        0   0   65  55   0   0   0   0   11  100];
    b=`ones`_(10,1);
    [x,flag,err,iter,res] = gmres(A, b)
    
    M = `eye`_(10, 10);
    
    [x,flag,err,iter,res] = gmres(A, b, 10, 1d-12, 20, M, `zeros`_(10, 1))
    
    // If A is a matrix and M is a function
    A=[ 94  0   0   0    0   28  0   0   32  0  
        0   59  13  5    0   0   0   10  0   0  
        0   13  72  34   2   0   0   0   0   65 
        0   5   34  114  0   0   0   0   0   55 
        0   0   2   0    70  0   28  32  12  0  
        28  0   0   0    0   87  20  0   33  0  
        0   0   0   0    28  20  71  39  0   0  
        0   10  0   0    32  0   39  46  8   0  
        32  0   0   0    12  33  0   8   82  11 
        0   0   65  55   0   0   0   0   11  100];
    b=`ones`_(10,1);
    
    function y=Mtimesx(x)
    M = `eye`_(10,10);
    y = M*x;
    endfunction
    
    [x,flag,err,iter,res] = gmres(A, b, 10, 1d-12, 20, Mtimesx, `zeros`_(10, 1))
    
    // If A is a function and M is a matrix
    function y=Atimesx(x)
    A=[ 94  0   0   0    0   28  0   0   32  0  
        0   59  13  5    0   0   0   10  0   0  
        0   13  72  34   2   0   0   0   0   65 
        0   5   34  114  0   0   0   0   0   55 
        0   0   2   0    70  0   28  32  12  0  
        28  0   0   0    0   87  20  0   33  0  
        0   0   0   0    28  20  71  39  0   0  
        0   10  0   0    32  0   39  46  8   0  
        32  0   0   0    12  33  0   8   82  11 
        0   0   65  55   0   0   0   0   11  100];
     y = A * x;
     endfunction
     
     b = `ones`_(10,1);
     M = `eye`_(10, 10);
     
     [x,flag,err,iter,res] = gmres(Atimesx, b)
     
     [x,flag,err,iter,res] = gmres(Atimesx, b, 10, 1d-12, 20, M, `zeros`_(10,1))
     
     // If A and M are functions
     function y=Atimesx(x)
    A=[ 94  0   0   0    0   28  0   0   32  0  
        0   59  13  5    0   0   0   10  0   0  
        0   13  72  34   2   0   0   0   0   65 
        0   5   34  114  0   0   0   0   0   55 
        0   0   2   0    70  0   28  32  12  0  
        28  0   0   0    0   87  20  0   33  0  
        0   0   0   0    28  20  71  39  0   0  
        0   10  0   0    32  0   39  46  8   0  
        32  0   0   0    12  33  0   8   82  11 
        0   0   65  55   0   0   0   0   11  100];
     y = A * x;
     endfunction
     
     function y=Mtimesx(x)
    M = `eye`_(10,10);
    y = M*x;
    endfunction
     
     [x,flag,err,iter,res] = gmres(Atimesx, b, 10, 1d-12, 20, Mtimesx, `zeros`_(10,1))




See Also
~~~~~~~~


+ `pcg`_ precondioned conjugate gradient
+ `qmr`_ quasi minimal resiqual method with preconditioning


.. _pcg: pcg.html
.. _qmr: qmr.html


