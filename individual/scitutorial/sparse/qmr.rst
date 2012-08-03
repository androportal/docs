====
"qmr"
====

Scilab Function Last update : 14/09/2005
**qmr** - quasi minimal resiqual method with preconditioning



Calling Sequence
~~~~~~~~~~~~~~~~

[x,flag,err,iter,res] = qmr(A,b,x0,M1,M1p,M2,M2p,maxi,tol)




Parameters
~~~~~~~~~~


+ **A ** : matrix of size n-by-n or function returning **A*x**
+ **b ** : right hand side vector
+ **x0 ** : initial guess vector (default: zeros(n,1))
+ **M1 ** : left preconditioner: matrix or function returning **M1*x**
  (In the first case, default: eye(n,n))
+ **M1p ** : must only be provided when **M1** is a function. In this
  case **M1p** is the function which returns **M1'*x**
+ **M2 ** : right preconditioner: matrix or function returning
  **M2*x** (In the first case, default: eye(n,n))
+ **M2p ** : must only be provided when **M2** is a function. In this
  case **M2p** is the function which returns **M2'*x**
+ **maxi ** : maximum number of iterations (default: n)
+ **tol ** : error tolerance (default: 1000*%eps)
+ **x ** : solution vector
+ **flag ** : 0 = **qmr** converged to the desired tolerance within
  **maxi** iterations
+ **res ** : residual vector
+ **err ** : final residual norm
+ **iter ** : number of iterations performed




Description
~~~~~~~~~~~

Solves the linear system **Ax=b** using the Quasi Minimal Residual
Method with preconditioning.



See Also
~~~~~~~~

` **gmres** `_,



Author
~~~~~~

SAGE Group, IRISA 2005

.. _
      : ://./sparse/gmres.htm


