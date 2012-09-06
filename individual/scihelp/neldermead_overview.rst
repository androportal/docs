


overview
========

An overview of the Nelder-Mead toolbox.



Purpose
~~~~~~~

The goal of this toolbox is to provide a Nelder-Mead direct search
optimization method. That Nelder-Mead algorithm may be used in the
following optimization context :


+ there is no need to provide the derivatives of the objective
  function,
+ the number of parameters is small (up to 10-20),
+ there are bounds and/or non linear constraints.




Design
~~~~~~

This package provides the following components :


+ `neldermead` provides various Nelder-Mead variants and manages for
  Nelder-Mead specific settings, such as the method to compute the
  initial simplex, the specific termination criteria,
+ `fminsearch` provides a simplified Nelder-Mead algorithm. Specific
  terminations criteria, initial simplex and auxiliary settings are
  automatically configured.
+ `optimset`, `optimget` provide Scilab commands to emulate their
  Matlab counterparts.
+ `optimplotfunccount`, `optimplotx` and `optimplotfval` provide
  plotting features for the `fminsearch` function.
+ `nmplot` provides a high-level component which provides directly
  output pictures for Nelder-Mead algorithm.


The current component is based on the following components


+ `optimbase` provides an abstract class for a general optimization
  component, including the number of variables, the minimum and maximum
  bounds, the number of non linear inequality constraints, the login
  system, various termination criteria, the cost function, etc...
+ `optimsimplex` provides a class to manage a simplex made of an
  arbitrary number of vertices, including the computation of a simplex
  by various methods (axes, regular, Pfeffer's, randomized bounds), the
  computation of the size by various methods (diameter, sigma +, sigma-,
  etc...),




Features
~~~~~~~~

The following is a list of features the Nelder-Mead prototype
algorithm currently provides :


+ Provides 3 algorithms, including

    + Spendley et al. fixed shaped algorithm,
    + Nelder-Mead variable shape algorithm,
    + Box "complex" algorithm managing bounds and nonlinear inequality
      constraints based on arbitrary number of vertices in the simplex.

+ Manage various simplex initializations

    + initial simplex given by user,
    + initial simplex computed with a length and along the coordinate
      axes,
    + initial regular simplex computed with Spendley et al. formula
    + initial simplex computed by a small perturbation around the initial
      guess point

+ Manage cost function

    + optionnal additionnal argument
    + direct communication of the task to perform : cost function or
      inequality constraints

+ Manage various termination criteria, including maximum number of
  iterations, tolerance on function value (relative or absolute),

    + tolerance on x (relative or absolute),
    + tolerance on standard deviation of function value (original
      termination criteria in [3]),
    + maximum number of evaluations of cost function,
    + absolute or relative simplex size,

+ Manage the history of the convergence, including

    + history of function values,
    + history of optimum point,
    + history of simplices,
    + history of termination criterias,

+ Provide a plot command which allows to graphically see the history
  of the simplices toward the optimum,
+ Provide query features for the status of the optimization process
  number of iterations, number of function evaluations, status of
  execution, function value at initial point, function value at optimal
  point, etc...
+ Kelley restart based on simplex gradient,
+ O'Neill restart based on factorial search around optimum,




Example : Optimizing the Rosenbrock function
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, one searches the minimum of the 2D
Rosenbrock function. One begins by defining the function "rosenbrock"
which computes the Rosenbrock function. The traditionnal initial guess
[-1.2 1.0] is used. The initial simplex is computed along the axes
with a length equal to 0.1. The Nelder-Mead algorithm with variable
simplex size is used. The verbose mode is enabled so that messages are
generated during the algorithm. After the optimization is performed,
the optimum is retrieved with quiery features.


::

    function [f, index]=rosenbrock(x, index)
      y = 100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
    endfunction
    
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-x0",[-1.2 1.0]');
    nm = `neldermead_configure`_(nm,"-simplex0method","axes");
    nm = `neldermead_configure`_(nm,"-simplex0length",0.1);
    nm = `neldermead_configure`_(nm,"-method","variable");
    nm = `neldermead_configure`_(nm,"-verbose",1);
    nm = `neldermead_configure`_(nm,"-function",rosenbrock);
    nm = `neldermead_search`_(nm);
    xopt = `neldermead_get`_(nm,"-xopt");
    fopt = `neldermead_get`_(nm,"-fopt");
    historyfopt = `neldermead_get`_(nm,"-historyfopt");
    iterations = `neldermead_get`_(nm,"-iterations");
    historyxopt = `neldermead_get`_(nm,"-historyxopt");
    historysimplex = `neldermead_get`_(nm,"-historysimplex");
    fx0 = `neldermead_get`_(nm,"-fx0");
    status = `neldermead_get`_(nm,"-status");
    nm = `neldermead_destroy`_(nm);




Bibliography
~~~~~~~~~~~~

“Sequential Application of Simplex Designs in Optimisation and
Evolutionary Operation”, Spendley, W. and Hext, G. R. and Himsworth,
F. R., American Statistical Association and American Society for
Quality, 1962

“A Simplex Method for Function Minimization”, Nelder, J. A. and Mead,
R., The Computer Journal, 1965

"A New Method of Constrained Optimization and a Comparison With Other
Methods", M. J. Box, The Computer Journal 1965 8(1):42-52, 1965 by
British Computer Society

“Convergence Properties of the Nelder--Mead Simplex Method in Low
Dimensions”, Jeffrey C. Lagarias and James A. Reeds and Margaret H.
Wright and Paul E. Wright, SIAM Journal on Optimization, 1998

“Compact numerical methods for computers : linear algebra and function
minimisation”, Nash, J. C., Hilger, Bristol, 1979

“Iterative Methods for Optimization”, C. T. Kelley, 1999

“Iterative Methods for Optimization: Matlab Codes”,
http://www4.ncsu.edu/~ctk/matlab_darts.html

“Sequential Simplex Optimization: A Technique for Improving Quality
and Productivity in Research, Development, and Manufacturing”,
Walters, Fred H. and Jr, Lloyd R. and Morgan, Stephen L. and Deming,
Stanley N., 1991

“Numerical Recipes in C, Second Edition”, W. H. Press and Saul A.
Teukolsky and William T. Vetterling and Brian P. Flannery, 1992

“Detection and Remediation of Stagnation in the Nelder--Mead Algorithm
Using a Sufficient Decrease Condition”, SIAM J. on Optimization,
Kelley,, C. T., 1999

Matlab – fminsearch , http://www.mathworks.com/access/helpdesk/help/te
chdoc/index.html?/access/helpdesk/help/techdoc/ref/fminsearch.html

GAMS, A19A20 - description,
http://gams.nist.gov/serve.cgi/Module/NASHLIB/A19A20/11238/

asa047.f, http://people.sc.fsu.edu/~burkardt/f77_src/asa047/asa047.f

optim1.f,
http://www.stat.uconn.edu/~mhchen/survbook/example51/optim1.f

as47,f, http://lib.stat.cmu.edu/apstat/47

“Algorithm AS47 - Function minimization using a simplex procedure,
O'Neill, R., 1971, Applied Statistics



