====
"gmres"
====

Scilab Function Last update : 14/09/2005
**gmres** - generalized minimum residual method with restarts



Calling Sequence
~~~~~~~~~~~~~~~~

[x,flag,err,iter,res] = gmres(A,b,rstr,tol,maxi,M,x0)




Parameters
~~~~~~~~~~


+ **A ** : n-by-n matrix or function returning **A*x**
+ **b ** : right hand side vector
+ **x0 ** : initial guess vector (default: zeros(n,1))
+ **M ** : preconditioner: matrix or function returning **M*x** (In
  the first case, default: eye(n,n))
+ **rstr ** : number of iterations between restarts (default: 10)
+ **maxi ** : maximum number of iterations (default: n)
+ **tol ** : error tolerance (default: 1e-6)
+ **x ** : solution vector
+ **err ** : final residual norm
+ **iter ** : number of iterations performed
+ **flag ** : 0 = **gmres** converged to the desired tolerance within
  **maxi** iterations
+ **res ** : residual vector




Description
~~~~~~~~~~~

Solves the linear system **Ax=b** using the Generalized Minimal
residual (GMRES(m)) method with restarts.



See Also
~~~~~~~~

` **pcg** `_,



Author
~~~~~~

Sage Group (IRISA, 2005)

.. _
      : ://./sparse/pcg.htm


