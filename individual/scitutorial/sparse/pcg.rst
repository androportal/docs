====
"pcg"
====

Scilab Function Last update : 13/06/2006
**pcg** - precondioned conjugate gradient



Calling Sequence
~~~~~~~~~~~~~~~~

[x, flag, err, iter, res] = pcg(A, b [, tol [, maxit [, M [, M2 [,
  x]]]]])
[x, flag, err, iter, res] = pcg(A, b, key=value,...)




Parameters
~~~~~~~~~~


+ **A** : symmetric positive definite full or sparse matrix of size
  nxn or a function returning **A*x** for each given **x**
+ **b** : right hand side vector (size: nx1)
+ **tol** : error tolerance (default: 1000*%eps)
+ **maxi** : maximum number of iterations (default: n)
+ **M** : preconditioner: full or sparse matrix or function returning
  **M\x** (default: none)
+ **M2** : preconditioner: full or sparse matrix or function returning
  **M2\x** for each **x** (default: none)
+ **x0** : initial guess vector (default: zeros(n,1))
+ **x** : solution vector
+ **flag** : 0 if **pcg** converged to the desired tolerance within
  **maxi** iterations, 1 else
+ **err** : final relative norm of the residual
+ **iter** : number of iterations performed
+ **res** : vector of the residual norms




Description
~~~~~~~~~~~
Solves the linear system **Ax=b** using the conjugate gradient method
with or without preconditioning. The preconditionning should be
defined by a symmetric positive definite matrix **M** , or two
matrices **M1** and **M2** such that **M=M1*M2** . in the case the
function solves **inv(M)*A*x = inv(M)*b** for **x** . **M** , **M1**
and **M2** can be Scilab functions with calling sequence **y=Milx(x)**
which computes the corresponding left division **y=Mi\x** . The **A**
matrix must be a symmetric positive definite matrix (full or sparse)
or a function with calling sequence **y=Ax(x)** which computes
**y=A*x**


Examples
~~~~~~~~


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
    
      b=ones(10,1);
      [x, fail, err, iter, res]=pcg(A,b,1d-12,15);
      mprintf("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)
    
    
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
      mprintf("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)
    
       //sparse matrix
       A=sparse(A);
       [x, fail, err, iter, res]=pcg(A,b,maxIter=30,tol=1d-12);
       mprintf("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)
    
       //using a function
       function y=Atimesx(x,A),y=A*x, endfunction
    
       //A passed by the calling context
       [x, fail, err, iter, res]=pcg(Atimesx,b,maxIter=30,tol=1d-12);
       mprintf("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)
    
       // A passed as an argument
       [x, fail, err, iter, res]=pcg(list(Atimesx,A),b,maxIter=30,tol=1d-12);
       mprintf("      fail=%d, iter=%d, errrel=%e\n",fail,iter,err)
     
      




See Also
~~~~~~~~

` **backslash** `_,` **qmr** `_,` **gmres** `_,



Author
~~~~~~

Sage Group (IRISA, 2004)

.. _
      : ://./sparse/qmr.htm
.. _
      : ://./sparse/gmres.htm
.. _
      : ://./sparse/../programming/backslash.htm


