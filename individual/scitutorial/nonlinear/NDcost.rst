====
"NDcost"
====

Scilab Function Last update : 14/03/2005
**NDcost** - generic external for optim computing gradient using
finite differences



Calling Sequence
~~~~~~~~~~~~~~~~

[f,g,ind]=NDcost(x,ind,fun,varargin)




Parameters
~~~~~~~~~~


+ **x** : real vector or matrix
+ **ind** : integer parameter (see optim)
+ **fun** : Scilab function with calling sequence
  **F=fun(x,varargin)** varargin may be use to pass parameters
  **p1,...pn**
+ **f** : criterion value at point **x** (see optim)
+ **g** : gradient value at point **x** (see optim)




Description
~~~~~~~~~~~

This function can be used as an external for **optim** to minimize
problem where gradient is too complicated to be programmed. only the
function **fun** which computes the criterion is required.

This function should be used as follow:
**[f,xopt,gopt]=optim(list(NDcost,fun,p1,...pn),x0,...)**



Examples
~~~~~~~~


::

    
    // example #1 (a simple one)
    //function to minimize
    function f=rosenbrock(x,varargin)
       p=varargin(1)
       f=1+sum( p*(x(2:$)-x(1:$-1)^2)^2 + (1-x(2:$))^2)
    endfunction
    
    x0=[1;2;3;4];
    [f,xopt,gopt]=optim(list(NDcost,rosenbrock,200),x0)
    
    // example #2: This example (by Rainer von Seggern) shows a quick (*) way to
    //             identify the parameters of a linear differential equation with 
    //             the help of scilab.
    //             The model is a simple damped (linear) oscillator:
    //
    //               x''(t) + c x'(t) + k x(t) = 0 ,
    // 
    // and we write it as a system of two differential equations of first
    // order with y(1) = x, and y(2) = x':
    //
    //     dy1/dt = y(2)
    //     dy2/dt = -c*y(2) -k*y(1).
    //
    // We suppose to have m measurements of x (that is y(1)) at different times 
    // t_obs(1), ..., t_obs(m) called x_obs(1), ..., x_obs(m)  (in this example
    // these measuresments will be simulated), and we want to identify the parameters
    // c and k by minimizing the sum of squared errors between x_obs and y1(t_obs,p).
    // 
    // (*) This method is not the most efficient but it is easy to implement.
    // 
    function dy = DEQ(t,y,p)
       // The rhs of our first order differential equation system.
       c =p(1);k=p(2)
       dy=[y(2);-c*y(2)-k*y(1)]
    endfunction
    
    function y=uN(p, t, t0, y0)
       // Numerical solution obtained with ode. (In this linear case an exact analytic
       // solution can easily be found, but ode would also work for "any" system.)
       // Note: the ode output must be an approximation of the solution at
       //       times given in the vector t=[t(1),...,t($)]  
       y = ode(y0,t0,t,list(DEQ,p))
    endfunction
    
    function r = cost_func(p, t_obs, x_obs, t0, y0) 
       // This is the function to be minimized, that is the sum of the squared
       // errors between what gives the model and the measuments.
       sol = uN(p, t_obs, t0, y0)
       e = sol(1,:) - x_obs
       r = sum(e.*e) 
    endfunction
    
    // Data
    y0 = [10;0]; t0 = 0; // Initial conditions y0 for initial time t0. 
    T = 30;  // Final time for the measurements.
    
    // Here we simulate experimental data, (from which the parameters
    // should be identified).
    pe = [0.2;3];  // Exact parameters
    m = 80;  t_obs = linspace(t0+2,T,m); // Observation times
    // Noise: each measurement is supposed to have a (gaussian) random error
    // of mean 0 and std deviation proportional to the magnitude
    // of the value (sigma*|x_exact(t_obs(i))|).
    sigma = 0.1;  
    y_exact = uN(pe, t_obs, t0, y0);
    x_obs = y_exact(1,:) + grand(1,m,"nor",0, sigma).*abs(y_exact(1,:));
    
    // Initial guess parameters
    p0 = [0.5 ; 5];  
    
    // The value of the cost function before optimization:
    cost0 = cost_func(p0, t_obs, x_obs, t0, y0); 
    mprintf("\n\r The value of the cost function before optimization = %g \n\r",...
                                                                           cost0)
    
    // Solution with optim
    [costopt,popt]=optim(list(NDcost,cost_func, t_obs, x_obs, t0, y0),p0,...
                                                           'ar',40,40,1e-3);
    
    mprintf("\n\r The value of the cost function after optimization  = %g",costopt)
    mprintf("\n\r The identified values of the parameters: c = %g, k = %g \n\r",...
                                                                   popt(1),popt(2))
    
    // A small plot:
    t = linspace(0,T,400);
    y = uN(popt, t, t0, y0);
    clf();
    plot2d(t',y(1,:)',style=5)
    plot2d(t_obs',x_obs(1,:)',style=-5)
    legend(["model","measurements"]);
    xtitle("Least square fit to identify ode parameters")
     
      




See Also
~~~~~~~~

` **optim** `_,` **external** `_,` **derivative** `_,

.. _
      : ://./nonlinear/../programming/external.htm
.. _
      : ://./nonlinear/derivative.htm
.. _
      : ://./nonlinear/optim.htm


