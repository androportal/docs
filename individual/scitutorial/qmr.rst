


qmr
===

quasi minimal resiqual method with preconditioning



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [x,flag,err,iter,res] = qmr(A,Ap,b,x0,M1,M1p,M2,M2p,maxi,tol)
    [x,flag,err,iter,res] = qmr(A,b,x0,M1,M2,maxi,tol)




Arguments
~~~~~~~~~

:A matrix of size n-by-n or function.

    + `matrix.`If A is a matrix, it can be dense or sparse
    + `function.`If A is a function which returns `A*x`, it must have the
      following header :

::

        function y=A(x)

      If A is a function which returns `A*x` or `A'*x` depending t. If `t =
      "notransp"`, the function returns `A*x`. If `t = "transp"`, the
      function returns `A'*x`. It must have the following header :

::

        function y=A(x, t)



: :Ap function returning `A'*x`. It must have the followinf header :

::

    function y=Ap(x)


: :b right hand side vector
: :x0 initial guess vector (default: zeros(n,1))
: :M1 left preconditioner : matrix or function (In the first case,
default: eye(n,n)). If `M1` is a function, she returns either,

    + only `M1*x`    or
    + `M1*x` or `M1'*x` depending `t`.

: :M1p must only be provided when `M1` is a function returning `M1*x`.
  In this case `M1p` is the function which returns `M1'*x`.
: :M2 right preconditioner : matrix or function (In the first case,
default: eye(n,n)). If `M2` is a function, she returns either

    + only `M2*x`    or
    + `M2*x` or `M2'*x` depending `t`.

: :M2p must only be provided when `M2` is a function returning `M2*x`.
  In this case `M2p` is the function which returns `M2'*x`
: :maxi maximum number of iterations (default: n)
: :tol error tolerance (default: 1000*%eps)
: :x solution vector
: :flag
    :0 = `gmres` converged to the desired tolerance within `maxi`
      iterations
    : :1 = no convergence given `maxi`
    :

: :res residual vector
: :err final residual norm
: :iter number of iterations performed
:



Description
~~~~~~~~~~~

Solves the linear system `Ax=b` using the Quasi Minimal Residual
Method with preconditioning.



Examples
~~~~~~~~


::

    // If A is a matrix
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
    [x,flag,err,iter,res] = qmr(A, b)
    
    [x,flag,err,iter,res] = qmr(A, b, `zeros`_(10,1), `eye`_(10,10), `eye`_(10,10), 10, 1d-12)
    
    // If A is a function
    function y=Atimesx(x, t)
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
     if (t == 'notransp') then
           y = A*x;
       elseif (t ==  'transp') then
           y = A'*x;
       end
    endfunction
     
     [x,flag,err,iter,res] = qmr(Atimesx, b)
     
     [x,flag,err,iter,res] = qmr(Atimesx, b, `zeros`_(10,1), `eye`_(10,10), `eye`_(10,10), 10, 1d-12)
     
     // OR
     
     function y=funA(x)
    A = [ 94  0   0   0    0   28  0   0   32  0  
        0   59  13  5    0   0   0   10  0   0  
        0   13  72  34   2   0   0   0   0   65 
        0   5   34  114  0   0   0   0   0   55 
        0   0   2   0    70  0   28  32  12  0  
        28  0   0   0    0   87  20  0   33  0  
        0   0   0   0    28  20  71  39  0   0  
        0   10  0   0    32  0   39  46  8   0  
        32  0   0   0    12  33  0   8   82  11 
        0   0   65  55   0   0   0   0   11  100];
     y = A*x
    endfunction
    
     function y=funAp(x)
    A = [ 94  0   0   0    0   28  0   0   32  0  
        0   59  13  5    0   0   0   10  0   0  
        0   13  72  34   2   0   0   0   0   65 
        0   5   34  114  0   0   0   0   0   55 
        0   0   2   0    70  0   28  32  12  0  
        28  0   0   0    0   87  20  0   33  0  
        0   0   0   0    28  20  71  39  0   0  
        0   10  0   0    32  0   39  46  8   0  
        32  0   0   0    12  33  0   8   82  11 
        0   0   65  55   0   0   0   0   11  100];
     y = A'*x
    endfunction
     
     [x,flag,err,iter,res] = qmr(funA, funAp, b)
     
     [x,flag,err,iter,res] = qmr(funA, funAp, b, `zeros`_(10,1), `eye`_(10,10), `eye`_(10,10), 10, 1d-12)
     
     // If A is a matrix, M1 and M2 are functions
     function y=M1timesx(x, t)
     M1 = `eye`_(10,10);
       if(t=="notransp") then
           y = M1*x;
       elseif (t=="transp") then
           y = M1'*x;
       end
    endfunction
    
    function y=M2timesx(x, t)
     M2 = `eye`_(10,10);
       if(t=="notransp") then
           y = M2*x;
       elseif (t=="transp") then
           y = M2'*x;
       end
    endfunction
    
    [x,flag,err,iter,res] = qmr(A, b, `zeros`_(10,1), M1timesx, M2timesx, 10, 1d-12)
    
    // OR
    
    function y=funM1(x)
    M1 = `eye`_(10,10);
    y = M1*x;
    endfunction
    
    function y=funM1p(x)
    M1 = `eye`_(10,10);
    y = M1'*x;
    endfunction
    
    function y=funM2(x)
    M2 = `eye`_(10,10);
    y = M2*x;
    endfunction
    
    function y=funM2p(x)
    M2 = `eye`_(10,10);
    y = M2'*x;
    endfunction
    
    [x,flag,err,iter,res] = qmr(A, b, `zeros`_(10,1), funM1, funM1p, funM2, funM2p, 10, 1d-12)
    
    // If A, M1, M2 are functions
    [x,flag,err,iter,res] = qmr(funA, funAp, b, `zeros`_(10,1), funM1, funM1p, funM2, funM2p, 10, 1d-12)
    [x,flag,err,iter,res] = qmr(Atimesx, b, `zeros`_(10,1), M1timesx, M2timesx, 10, 1d-12)




See Also
~~~~~~~~


+ `gmres`_ Generalized Minimum RESidual method
+ `pcg`_ precondioned conjugate gradient




History
~~~~~~~
Version Description 5.4.0 Calling qmr(A, Ap) is deprecated. qmr(A)
should be used instead. The following function is an example :

::

    function y=A(x, t)
    Amat = `eye`_(2,2);
    if ( t== "notransp") then
    y = Amat*x;
    elseif (t == "transp") then
    y = Amat'*x;
    end
    endfunction


.. _gmres: gmres.html
.. _pcg: pcg.html


