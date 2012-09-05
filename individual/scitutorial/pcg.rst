


pcg
===

precondioned conjugate gradient



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x, flag, err, iter, res] = pcg(A, b [, tol [, maxIter [, M [, M2 [, x0 [, verbose]]]]]])
    [x, flag, err, iter, res] = pcg(A, b [key=value,...])




Arguments
~~~~~~~~~

:A a matrix, or a function, or a list computing `A*x` for each given
`x`. The following is a description of the computation of A*x
depending on the type of A.

    + `matrix.`If A is a matrix, it can be dense or sparse
    + `function.`If A is a function, it must have the following header :

::

        function y=A(x)


    + `list.`If A is a list, the first element of the list is expected to
      be a function and the other elements in the list are the arguments of
      the function, from index 2 to the end. When the function is called,
      the current value of x is passed to the function as the first
      argument. The other arguments passed are the one given in the list.

: :b right hand side vector (size: nx1)
: :tol error relative tolerance (default: 1e-8). The termination
  criteria is based on the 2-norm of the residual r=b-Ax, divided by the
  2-norm of the right hand side b.
: :maxIter maximum number of iterations (default: n)
: :M preconditioner: full or sparse matrix or function returning `M\x`
  (default: none)
: :M2 preconditioner: full or sparse matrix or function returning
  `M2\x` for each `x` (default: none)
: :x0 initial guess vector (default: zeros(n,1))
: :verbose set to 1 to enable verbose logging (default 0)
: :x solution vector
: :flag 0 if `pcg` converged to the desired tolerance within `maxi`
  iterations, 1 else
: :err final relative norm of the residual (the 2-norm of the right-
  hand side b is used)
: :iter number of iterations performed
: :res vector of the residual relative norms
:



Description
~~~~~~~~~~~

Solves the linear system `Ax=b` using the conjugate gradient method
with or without preconditioning. The preconditionning should be
defined by a symmetric positive definite matrix `M`, or two matrices
`M1` and `M2` such that `M=M1*M2`. in the case the function solves
`inv(M)*A*x = inv(M)*b` for `x`. `M`, `M1` and `M2` can be Scilab
functions with calling sequence `y=Milx(x)` which computes the
corresponding left division `y=Mi\x`.

The `A` matrix must be a symmetric positive definite matrix (full or
sparse) or a function with calling sequence `y=Ax(x)` which computes
`y=A*x`



Example with well conditionned and ill conditionned problems
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, two linear systems are solved. The first
maxtrix has a condition number equals to ~0.02, which makes the
algorithm converge in exactly 10 iterations. Since this is the size of
the matrix, it is an expected behaviour for a gradient conjugate
method. The second one has a low condition number equals to 1.d-6,
which makes the algorithm converge in a larger 22 iterations. This is
why the parameter maxIter is set to 30. See below for other examples
of the "key=value" syntax.


::

    //Well conditionned problem
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
    [x, fail, err, iter, res]=pcg(A,b,1d-12,15);
    `mprintf`_("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)
    
    //Ill contionned one
    A=[ 894     0   0     0   0   28  0   0   1000  70000
          0      5   13    5   0   0   0   0   0     0    
          0      13  72    34  0   0   0   0   0     6500 
          0      5   34    1   0   0   0   0   0     55   
          0      0   0     0   70  0   28  32  12    0    
          28     0   0     0   0   87  20  0   33    0    
          0      0   0     0   28  20  71  39  0     0    
          0      0   0     0   32  0   39  46  8     0    
          1000   0   0     0   12  33  0   8   82    11   
          70000  0   6500  55  0   0   0   0   11    100];
     
    [x, fail, err, iter, res]=pcg(A,b,maxIter=30,tol=1d-12);
    `mprintf`_("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)




Examples with A given as a sparse matrix, or function, or list
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following example shows that the method can handle sparse matrices
as well. It also shows the case where a function, computing the right-
hand side, is given to the "pcg" primitive. The final case shown by
this example, is when a list is passed to the primitive.


::

    //Well conditionned problem
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
    
    // Convert A into a sparse matrix
    Asparse=`sparse`_(A);
    [x, fail, err, iter, res]=pcg(Asparse,b,maxIter=30,tol=1d-12);
    `mprintf`_("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)
    
    // Define a function which computes the right-hand side.
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
      y=A*x
    endfunction
    
    // Pass the script Atimesx to the primitive
    [x, fail, err, iter, res]=pcg(Atimesx,b,maxIter=30,tol=1d-12);
    `mprintf`_("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)
    
    // Define a function which computes the right-hand side.
    function y=Atimesxbis(x, A)
      y=A*x
    endfunction
    
    // Pass a list to the primitive
    Alist = `list`_(Atimesxbis,Asparse);
    [x, fail, err, iter, res]=pcg(Alist,b,maxIter=30,tol=1d-12);
    `mprintf`_("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)




Examples with key=value syntax
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The following example shows how to pass arguments with the "key=value"
syntax. This allows to set non-positionnal arguments, that is, to set
arguments which are not depending on their order in the list of
arguments. The available keys are the names of the optional arguments,
that is : tol, maxIter, %M, %M2, x0, verbose. Notice that, in the
following example, the verbose option is given before the maxIter
option. Without the "key=value" syntax, the positionnal arguments
would require that maxIter come first and verbose after.


::

    // Example of an argument passed with key=value syntax
    A=[100,1;1,10];
    b=[101;11];
    [xcomputed, flag, err, iter, res]=pcg(A,b,verbose=1);
    
    // With key=value syntax, the order does not matter
    [xcomputed, flag, err, iter, res]=pcg(A,b,verbose=1,maxIter=0);




See Also
~~~~~~~~


+ `backslash`_ (\) left matrix division.
+ `qmr`_ quasi minimal resiqual method with preconditioning
+ `gmres`_ Generalized Minimum RESidual method




References
~~~~~~~~~~

"Templates for the Solution of Linear Systems: Building Blocks for
Iterative Methods", Barrett, Berry, Chan, Demmel, Donato, Dongarra,
Eijkhout, Pozo, Romine, and Van der Vorst, SIAM Publications, 1993,
ftp netlib2.cs.utk.edu/linalg/templates.ps

"Iterative Methods for Sparse Linear Systems, Second Edition", Saad,
SIAM Publications, 2003, ftp
ftp.cs.umn.edu/dept/users/saad/PS/all_ps.zip

.. _gmres: gmres.html
.. _qmr: qmr.html
.. _backslash: backslash.html


