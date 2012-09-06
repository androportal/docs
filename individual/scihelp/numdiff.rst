


numdiff
=======

numerical gradient estimation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    g=numdiff(fun,x [,dx])




Arguments
~~~~~~~~~

:fun an external, Scilab function or list. See below for calling
  sequence, see also `external`_ for details about external functions.
: :x vector, the argument of the function `fun`
: :dx vector, the finite difference step. Default value is
  `dx=sqrt(%eps)*(1+1d-3*abs(x))`
: :g vector, the estimated gradient
:



Description
~~~~~~~~~~~

given a function `fun(x)` from `R^n` to `R^p` computes the matrix `g`
such as


::

    g(i,j) = (df_i)/(dx_j)


using finite difference methods. Uses an order 1 formula.

Without parameters, the function fun calling sequence is `y=fun(x)`,
and numdiff can be called as `g=numdiff(fun,x)`. Else the function fun
calling sequence must be `y=fun(x,param_1,pararm_2,..,param_q)`. If
parameters `param_1,param_2,..param_q` exist then `numdiff` can be
called as follow `g=numdiff(list(fun,param_1,param_2,..param_q),x)`.

See the `derivative`_ with respect to numerical accuracy issues and
comparison between the two algorithms.



Examples
~~~~~~~~


::

    // example 1 (without parameters)
    // myfun is a function from R^2 to R :   (x(1),x(2)) |--> myfun(x) 
    function f=myfun(x)
      f=x(1)*x(1)+x(1)*x(2)
    endfunction
    
    x=[5 8]
    g=numdiff(myfun,x)
    
    // The exact gradient (i.e derivate belong x(1) :first component and derivate belong x(2): second component) is  
    exact=[2*x(1)+x(2)  x(1)]
    
    //example 2 (with parameters)
    // myfun is a function from R to R:  x(1) |--> myfun(x) 
    // myfun contains 3 parameters, a, b, c
    function f=myfun(x, a, b, c)
      f=(x+a)^c+b
    endfunction
    
    a=3; b=4; c=2;
    x=1
    g2=numdiff(`list`_(myfun,a,b,c),x)
    
    // The exact gradient, i.e derivate belong x(1), is :
    exact2=c*(x+a)^(c-1)




See Also
~~~~~~~~


+ `optim`_ non-linear optimization routine
+ `derivative`_ approximate derivatives of a function
+ `external`_ Scilab Object, external function or routine


.. _derivative: derivative.html
.. _optim: optim.html
.. _external: external.html


