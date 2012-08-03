====
"lsqrsolve"
====

Scilab Function Last update : 11/01/2005
**lsqrsolve** - minimize the sum of the squares of nonlinear
functions, levenberg-marquardt algorithm



Calling Sequence
~~~~~~~~~~~~~~~~

[x [,v [,info]]]=lsqrsolve(x0,fct,m [,stop [,diag]])
[x [,v [,info]]]=lsqrsolve(x0,fct,m ,fjac [,stop [,diag]])




Parameters
~~~~~~~~~~


+ **x0** : real vector (initial value of functions argument).
+ **fct** : external (i.e function or list or string).
+ **m** : integer, the number of functions.
+ **fjac** : external (i.e function or list or string).
+ **stop** : optional vector **[ftol,xtol,gtol,maxfev,epsfcn,factor]**
  the default value is **[1.d-8,1.d-8,1.d-5,1000,0,100]**

    + **ftol** : A positive real number,termination occurs when both the
      actual and predicted relative reductions in the sum of squares are at
      most ftol. therefore, ftol measures the relative error desired in the
      sum of squares.
    + **xtol** : A positive real number, termination occurs when the
      relative error between two consecutive iterates is at most xtol.
      therefore, xtol measures the relative error desired in the approximate
      solution.
    + **gtol** : A nonnegative input variable. termination occurs when the
      cosine of the angle between fct(x) and any column of the jacobian is
      at most gtol in absolute value. therefore, gtol measures the
      orthogonality desired between the function vector and the columns of
      the jacobian.
    + **maxfev** : A positive integer, termination occurs when the number
      of calls to fct is at least maxfev by the end of an iteration.
    + **epsfcn** : A positive real number, used in determining a suitable
      step length for the forward-difference approximation. this
      approximation assumes that the relative errors in the functions are of
      the order of epsfcn. if epsfcn is less than the machine precision, it
      is assumed that the relative errors in the functions are of the order
      of the machine precision.
    + **factor** : A positive real number, used in determining the initial
      step bound. this bound is set to the product of factor and the
      euclidean norm of diag*x if nonzero, or else to factor itself. in most
      cases factor should lie in the interval (.1,100.). 100. is a generally
      recommended value.

+ **diag** : is an array of length n. diag must contain positive
  entries that serve as multiplicative scale factors for the variables.
+ **x : ** real vector (final value of function argument, estimated
  zero).
+ **v : ** real vector (value of functions at x).
+ **info** : termination indicator

    + **0** : improper input parameters.
    + **1** : algorithm estimates that the relative error between x and
      the solution is at most tol.
    + **2** : number of calls to fcn reached
    + **3** : tol is too small. No further improvement in the approximate
      solution x is possible.
    + **4** : iteration is not making good progress.





Description
~~~~~~~~~~~

minimize the sum of the squares of m nonlinear functions in n
variables by a modification of the levenberg-marquardt algorithm. the
user must provide a subroutine which calculates the functions. the
jacobian is then calculated by a forward-difference approximation.

minimize **sum(fct(x,m).^2)** where **fct** is function from **R^n**
to **R^m**

**fct** should be :

****a Scilab function whose calling sequence is **v=fct(x,m)** given
  **x** and **m** .
****a character string which refers to a C or Fortran routine which
  must be linked to Scilab. Fortran calling sequence should be
  **fct(m,n,x,v,iflag)** where **m** , **n** , **iflag** are integers,
  **x** a double precision vector of size **n** and **v** a double
  precision vector of size **m** . C calling sequence should be
  **fct(int *m, int *n, double x[],double v[],int *iflag)**


**fjac** is an external which returns **v=d(fct)/dx (x)** . it should
be :

**a Scilab function**whose calling sequence is **J=fjac(x,m)** given
  **x** and **m** .
**a character string**it refers to a C or Fortran routine which must
  be linked to Scilab. Fortran calling sequence should be
  **fjac(m,n,x,jac,iflag)** where **m** , **n** , **iflag** are
  integers, **x** a double precision vector of size **n** and **jac** a
  double precision vector of size **m*n** . C calling sequence should be
  **fjac(int *m, int *n, double x[],double v[],int *iflag)**


return -1 in iflag to stop the algoritm if the function or jacobian
could not be evaluated.



Examples
~~~~~~~~


::

    
    
    // A simple example with lsqrsolve 
    a=[1,7;
       2,8
       4 3];
    b=[10;11;-1];
    function y=f1(x,m),y=a*x+b;endfunction
    [xsol,v]=lsqrsolve([100;100],f1,3)
    xsol+a\b
    
    
    function y=fj1(x,m),y=a;endfunction
    [xsol,v]=lsqrsolve([100;100],f1,3,fj1)
    xsol+a\b
    
    // Data fitting problem
    // 1 build the data
    a=34;b=12;c=14;
    deff('y=FF(x)','y=a*(x-b)+c*x.*x');
    X=(0:.1:3)';Y=FF(X)+100*(rand()-.5);
    
    //solve
    function e=f1(abc,m)
      a=abc(1);b=abc(2),c=abc(3),
      e=Y-(a*(X-b)+c*X.*X);
    endfunction
    [abc,v]=lsqrsolve([10;10;10],f1,size(X,1));
    abc
    norm(v)
    
     
      




See Also
~~~~~~~~

` **external** `_,` **quapro** `_,` **linpro** `_,` **optim** `_,`
**fsolve** `_,



Used Function
~~~~~~~~~~~~~
lmdif, lmder from minpack, Argonne National Laboratory.
.. _
      : ://./nonlinear/linpro.htm
.. _
      : ://./nonlinear/quapro.htm
.. _
      : ://./nonlinear/optim.htm
.. _
      : ://./nonlinear/fsolve.htm
.. _
      : ://./nonlinear/../programming/external.htm


