


neldermead
==========

Provides direct search optimization algorithms.



SYNOPSIS
~~~~~~~~


::

    newobj = neldermead_new ()
    this = neldermead_destroy (this)
    this = neldermead_configure (this,key,value)
    value = neldermead_cget (this,key)
    value = neldermead_get ( this , key )
    this = neldermead_search ( this )
    this = neldermead_restart ( this )
    [ this , result ] = neldermead_function ( this , x )
    stop = neldermead_defaultoutput(state, data)




Description
~~~~~~~~~~~

This class provides several direct search optimization algorithms
based on the simplex method.

The optimization problem to solve is the minimization of a cost
function, with bounds and nonlinear constraints


::

    
          min f(x)
          l_i <= x_i <= h_i, i = 1,n
          g_i(x) >= 0, i = 1,nbineq
        


where

:n number of variables
: :nbineq number of inequality constraints
:

The provided algorithms are direct search algorithms, i.e. algorithms
which do not use the derivative of the cost function. They are based
on the update of a simplex, which is a set of k>=n+1 vertices, where
each vertex is associated with one point and one function value.

The following algorithms are available :

:Spendley, Hext and Himsworth fixed shape simplex method This
  algorithm solves an unconstrained optimization problem with a fixed
  shape simplex made of k=n+1 vertices.
: :Nelder and Mead variable shape simplex method This algorithm solves
  an unconstrained optimization problem with a variable shape simplex
  made of k=n+1 vertices.
: :Box complex method This algorithm solves an constrained
  optimization problem with a variable shape simplex made of an
  arbitrary k number of vertices (k=2n is recommended by Box).
:

See the demonstrations, in the Optimization section, for an overview
of this component.

See the "Nelder-Mead User's Manual" on Scilab's wiki and on the Scilab
forge for further information.



Design
~~~~~~

The neldermead component is built on top of the `optimbase`_ and
`optimsimplex`_ components.



Functions
~~~~~~~~~

The following functions are available.

:newobj = neldermead_new () Creates a new neldermead object.
    :newobj The new object.
    :

: :this = neldermead_destroy (this) Destroy the given object.
    :this The current object.
    :

: :this = neldermead_configure (this,key,value) Configure the current
object with the given value for the given key.
    :this The current object.
    : :key the key to configure. The following keys are available.
    *Basic.*
        :-numberofvariables a 1-by-1 matrix of doubles, positive, integer
          value, the number of variables to optimize (default numberofvariables
          = 0).
        : :-function a function or a list, the objective function. This
          function computes the value of the cost and the non linear
          constraints, if any. There is no default value, i.e. the user must
          provide `f`. See below for the details of the communication between
          the optimization system and the cost function.
        : :-x0 a n-by-1 matrix of doubles, where n is the number of variables,
          the initial guess. There is no default value, i.e. the user must
          provide `x0`.
        :
    *Output.*
        :-outputcommand a function or a list, a function which is called back
          for output. The default output function is empty, meaning that there
          is no output. See below for the details of the communication between
          the optimization system and the output command function.
        : :-storehistory a 1-by-1 matrix of booleans, set to %t to enable the
          history storing (default storehistory = %f).
        : :-verbose a 1-by-1 matrix of doubles, positive, integer value, set
          to 1 to enable verbose logging (default verbose = 0).
        : :-verbosetermination a 1-by-1 matrix of doubles, positive, integer
          value, set to 1 to enable verbose termination logging (default
          verbosetermination = 0).
        :
    *Bounds and constraints.*
        :-boundsmin a n-by-1 matrix of doubles, the minimum bounds for the
          parameters where n is the number of variables (default boundsmin = [],
          i.e. there are no minimum bounds).
        : :-boundsmax a n-by-1 matrix of doubles, the maximum bounds for the
          parameters where n is the number of variables (default boundsmax = [],
          i.e. there are no maximum bounds).
        : :-nbineqconst a 1-by-1 matrix of doubles, positive, integer value,
          the number of inequality constraints (default nbineqconst = 0).
        :
    *Initialization.*
        :-simplex0method a 1-by-1 matrix of strings, the method to use to
        compute the initial simplex (default simplex0method = "axes"). The
        first vertex in the simplex is always the initial guess associated
        with the -x0 option. The following methods are available :
            :"given" the coordinates associated with the -coords0 option are used
              to compute the initial simplex, with arbitrary number of vertices.
              This allow the user to setup the initial simplex by a specific method
              which is not provided by the current component (for example with a
              simplex computed from a design of experiments). This allows also to
              configure the initial simplex so that a specific behaviour of the
              algorithm an be reproduced (for example the Mac Kinnon test case). The
              given matrix is expected to have n rows and k columns, where n is the
              dimension of the problem and k is the number of vertices.
            : :"axes" the simplex is computed from the coordinate axes and the
              length associated with the -simplex0length option.
            : :"spendley" the simplex is computed so that it is regular with the
              length associated with the -simplex0length option (i.e. all the edges
              have the same length).
            : :"pfeffer" the simplex is computed from a heuristic, in the
              neighborhood of the initial guess. This initial simplex depends on the
              -simplex0deltausual and -simplex0deltazero.
            : :"randbounds" the simplex is computed from the bounds and a random
              number. This option is available only if bounds are available : if
              bounds are not available, an error is generated. This method is
              usually associated with Box's algorithm. The number of vertices in the
              simplex is taken from the -boxnbpoints option.
            :

        : :-coords0 a nbve-by-n matrix of doubles, where nbve is the number of
          vertices and n is the number of variables, the coordinates of the
          vertices of the initial simplex (default coords0=[]). If the
          -simplex0method option is set to "given", these coordinates are used
          to compute the initial simplex.
        : :-simplex0length a 1-by-1 matrix of doubles, the length to use when
          the initial simplex is computed with the "axes" or "spendley" methods
          (default simplex0length = 1). If the initial simplex is computed from
          "spendley" method, the length is expected to be a scalar value. If the
          initial simplex is computed from "axes" method, it may be either a
          scalar value or a vector of values, with rank n, where n is the number
          of variables.
        : :-simplex0deltausual a 1-by-1 matrix of doubles, the relative delta
          for non-zero parameters in "pfeffer" method (default
          simplex0deltausual = 0.05).
        : :-simplex0deltazero a 1-by-1 matrix of doubles, the absolute delta
          for non-zero parameters in "pfeffer" method (default simplex0deltazero
          = 0.0075).
        :
    *Termination.*
        :-maxfunevals a 1-by-1 matrix of doubles, positive, integer value, the
          maximum number of function evaluations (default maxfunevals = 100). If
          this criteria is triggered, the status of the optimization is set to
          "maxfuneval".
        : :-maxiter a 1-by-1 matrix of doubles, positive, integer value, the
          maximum number of iterations (default maxiter = 100). If this criteria
          is triggered, the status of the optimization is set to "maxiter".
        : :-tolfunabsolute a 1-by-1 matrix of doubles, positive, the absolute
          tolerance for the function value (default tolfunabsolute = 0).
        : :-tolfunrelative a 1-by-1 matrix of doubles, positive, the relative
          tolerance for the function value (default tolfunrelative = %eps).
        : :-tolfunmethod a 1-by-1 matrix of booleans, set to %t to enable
          termination with tolerance on function value (default tolfunmethod =
          %f). If this criteria is triggered, the status of the optimization is
          set to "tolf".
        : :-tolxabsolute a 1-by-1 matrix of doubles, positive, the absolute
          tolerance on x (default tolxabsolute = 0).
        : :-tolxrelative a 1-by-1 matrix of doubles, positive, the relative
          tolerance on x (default tolxrelative = sqrt(%eps)).
        : :-tolxmethod a 1-by-1 matrix of booleans, set to %t to enable the
          tolerance on x in the termination criteria (default tolxmethod = %t).
          If this criteria is triggered, the status of the optimization is set
          to "tolx".
        : :-tolsimplexizemethod a 1-by-1 matrix of booleans, set to %f to
          disable the tolerance on the simplex size (default tolsimplexizemethod
          = %t). If this criteria is triggered, the status of the optimization
          is set to "tolsize". When this criteria is enabled, the values of the
          options -tolsimplexizeabsolute and -tolsimplexizerelative are used in
          the termination criteria. The method to compute the size is the
          "sigmaplus" method.
        : :-tolsimplexizeabsolute a 1-by-1 matrix of doubles, positive, the
          absolute tolerance on the simplex size (default tolsimplexizeabsolute
          = 0).
        : :-tolsimplexizerelative a 1-by-1 matrix of doubles, positive, the
          relative tolerance on the simplex size (default tolsimplexizerelative
          = %eps).
        : :-tolssizedeltafvmethod a 1-by-1 matrix of booleans, set to %t to
          enable the termination criteria based on the size of the simplex and
          the difference of function value in the simplex (default
          tolssizedeltafvmethod = %f). If this criteria is triggered, the status
          of the optimization is set to "tolsizedeltafv". This termination
          criteria uses the values of the options -tolsimplexizeabsolute and
          -toldeltafv. This criteria is identical to Matlab's fminsearch.
        : :-toldeltafv a 1-by-1 matrix of doubles, positive, the absolute
          tolerance on the difference between the highest and the lowest
          function values (default toldeltafv = %eps).
        :
    *Algorithm.*
        :-method a 1-by-1 matrix of strings, the name of the algorithm to use
        (default method = "variable"). The following methods are available :
            :"fixed" the Spendley et al. fixed simplex shape algorithm. This
              algorithm is for unconstrained problems (i.e. bounds and non linear
              constraints are not taken into account)
            : :"variable" the Nelder-Mead variable simplex shape algorithm. This
              algorithm is for unconstrained problems (i.e. bounds and non linear
              constraints are not taken into account)
            : :"box" the Box complex algorithm. This algorithm takes into account
              bounds and nonlinear inequality constraints.
            : :"mine" the user-defined algorithm, associated with the
              `-mymethod`option. See below for details.
            :

        : :-mymethod a function, a user-derined simplex algorithm. See below
          for details (default is empty).
        :
    *Options of the "variable" algorithm.*
        :-rho a 1-by-1 matrix of doubles, the reflection coefficient. This
          parameter is used when the -method option is set to "fixed" or
          "variable" (default rho = 1).
        : :-chi a 1-by-1 matrix of doubles, the expansion coefficient. This
          parameter is used when the -method option is set to "variable"
          (default chi = 2).
        : :-gamma a 1-by-1 matrix of doubles, the contraction coefficient.
          This parameter is used when the -method option is set to "variable"
          (default gamma = 0.5).
        : :-sigma a 1-by-1 matrix of doubles, the shrinkage coefficient. This
          parameter is used when the -method option is set to "fixed" or
          "variable" (default sigma = 0.5).
        :
    *Option of "box" algorithm.*
        :-scalingsimplex0 a 1-by-1 matrix of strings, the algorithm used to
        scale the initial simplex into the nonlinear constraints (default
        scalingsimplex0 = "tox0"). The following two algorithms are provided :

            + "tox0": scales the vertices toward the initial guess.
            + "tocenter": scales the vertices toward the centroid, as recommended
              by Box.
        If the centroid happens to be unfeasible, because the constraints are
          not convex, the scaling of the initial simplex toward the centroid may
          fail. Since the initial guess is always feasible, scaling toward the
          initial guess cannot fail. The default value is "tox0".
        : :-boxnbpoints a 1-by-1 matrix of doubles, positive, integer value,
          the number of points in the initial simplex, when the -simplex0method
          is set to `"randbounds"` (default boxnbpoints = 2*n, where n is the
          number of variables of the problem). The value of this option is also
          use to update the simplex when a restart is performed and the
          `-restartsimplexmethod` option is set to `"randbounds"`.
        : :-boxineqscaling a 1-by-1 matrix of doubles, in the interval [0,1],
          the scaling coefficient used to scale the trial point for function
          improvement or into the constraints of Box's algorithm (default
          boxineqscaling = 0.5).
        : :-guinalphamin a 1-by-1 matrix of doubles, positive, the minimum
          value of alpha when scaling the vertices of the simplex into nonlinear
          constraints in Box's algorithm (default guinalphamin = 1.e-5).
        : :-boxreflect a 1-by-1 matrix of doubles, positive, the reflection
          factor in Box's algorithm (default = 1.3).
        : :-boxtermination a 1-by-1 matrix of booleans, set to %t to enable
          Box termination criteria (default boxtermination = %f).
        : :-boxtolf a 1-by-1 matrix of doubles, positive, the absolute
          tolerance on difference of function values in the simplex, suggested
          by Box (default boxtolf = 1.e-5). This tolerance is used if the
          -boxtermination option is set to %t.
        : :-boxnbmatch a 1-by-1 matrix of doubles, positive, integer value,
          the number of consecutive match of Box termination criteria (default
          boxnbmatch = 5).
        : :-boxboundsalpha a 1-by-1 matrix of doubles, positive, the parameter
          used to project the vertices into the bounds in Box's algorithm
          (default boxboundsalpha = 1.e-6).
        :
    *Auto-Restart.*
        :-kelleystagnationflag a 1-by-1 matrix of booleans, set to %t to
          enable the termination criteria using Kelley's stagnation detection,
          based on sufficient decrease condition (default kelleystagnationflag =
          %f). If this criteria is triggered, the status of the optimization is
          set to "kelleystagnation".
        : :-kelleynormalizationflag a 1-by-1 matrix of booleans, set to %f to
          disable the normalization of the alpha coefficient in Kelley's
          stagnation detection, i.e. use the value of the option
          -kelleystagnationalpha0 as is (default kelleynormalizationflag = %t,
          i.e. the simplex gradient of the initial simplex is taken into account
          in the stagnation detection).
        : :-kelleystagnationalpha0 a 1-by-1 matrix of doubles, the parameter
          used in Kelley's stagnation detection (default kelleystagnationalpha0
          = 1.e-4).
        : :-restartflag a 1-by-1 matrix of booleans, set to %t to enable the
          automatic restart of the algorithm (default restartflag = %f).
        : :-restartdetection a 1-by-1 matrix of strings, the method to detect
        if the automatic restart must be performed (default restartdetection =
        "oneil"). The following methods are available:
            :"oneill" the factorial local optimality test by O'Neill is used. If
              the test finds a local point which is better than the computed
              optimum, a restart is performed.
            : :"kelley" the sufficient decrease condition by O'Neill is used. If
              the test finds that the status of the optimization is
              "kelleystagnation", a restart is performed. This status may be
              generated if the -kelleystagnationflag option is set to %t.
            :
        The default method is "oneill".
        : :-restartmax a 1-by-1 matrix of doubles, the maximum number of
          restarts, when automatic restart is enabled via the -restartflag
          option (default restartmax=3).
        : :-restarteps a 1-by-1 matrix of doubles, the relative epsilon value
          used to check for optimality in the factorial O'Neill restart
          detection (default restarteps = %eps).
        : :-restartstep a 1-by-1 or a n-by-1 matrix of doubles, positive,
          where n is the number of variables in the problem, the absolute step
          length used to check for optimality in the factorial O'Neill restart
          detection (default restartstep = 1).
        : :-restartsimplexmethod a 1-by-1 matrix of strings, the method to
        compute the initial simplex after a restart (default
        restartsimplexmethod = "oriented"). The following methods are
        available.
            :"given" the coordinates associated with the -coords0 option are used
              to compute the initial simplex, with arbitrary number of vertices.
              This allow the user to setup the initial simplex by a specific method
              which is not provided by the current component (for example with a
              simplex computed from a design of experiments). This allows also to
              configure the initial simplex so that a specific behaviour of the
              algorithm an be reproduced (for example the Mc Kinnon test case). The
              given matrix is expected to have n rows and k columns, where n is the
              dimension of the problem and k is the number of vertices.
            : :"axes" the simplex is computed from the coordinate axes and the
              length associated with the -simplex0length option.
            : :"spendley" the simplex is computed so that it is regular with the
              length associated with the -simplex0length option (i.e. all the edges
              have the same length).
            : :"pfeffer" the simplex is computed from a heuristic, in the
              neighborhood of the initial guess. This initial simplex depends on the
              -simplex0deltausual and -simplex0deltazero.
            : :"randbounds" the simplex is computed from the bounds and a random
              number. This option is available only if bounds are available : if
              bounds are not available, an error is generated. This method is
              usually associated with Box's algorithm. The number of vertices in the
              simplex is taken from the -boxnbpoints option.
            : :"oriented" the simplex is computed so that it is oriented, as
              suggested by C.T. Kelley.
            :
        The default method is "oriented".
        :

    : :value the value.
    :

: :value = neldermead_cget (this,key) Get the value for the given key.
If the key is unknown, generates an error.
    :this The current object.
    : :key the name of the key to quiery. The list of available keys is
      the same as for the neldermead_configure function.
    :

: :value = neldermead_get ( this , key ) Get the value for the given
key. If the key is unknown, generates an error. Most fields are
available only after an optimization has been performed with one call
to the neldermead_search method.
    :this The current object.
    : :key the key to get. The following keys are available :
        :-funevals the number of function evaluations
        : :-iterations the number of iterations
        : :-xopt the x optimum, as a n x 1 column vector, where n is the
          number of variables.
        : :-fopt the optimum cost function value
        : :-historyxopt an array, with nbiter values, containing the history
          of x during the iterations. This array is available after optimization
          if the history storing was enabled with the -storehistory option.
        : :-historyfopt an array, with nbiter values, containing the history
          of the function value during the iterations. This array is available
          after optimization if the history storing was enabled with the
          -storehistory option.
        : :-fx0 the function value for the initial guess
        : :-status a string containing the status of the optimization. See
          below for details about the optimization status.
        : :-historysimplex a matrix containing the history of the simplex
          during the iterations. This matrix has rank nbiter x nbve x n, where
          nbiter is the number of iterations, nbve is the number of vertices in
          the simplex and n is the number of variables.
        : :-simplex0 the initial simplex. This is a simplex object, which is
          suitable for processing with the optimsimplex component.
        : :-simplexopt the optimum simplex. This is a simplex object, which is
          suitable for processing with the optimsimplex component.
        : :-restartnb the number of actual restarts performed.
        :

    :

: :this = neldermead_search ( this ) Performs the optimization
associated with the method associated with the -method option and find
the optimum.
    :this The current object.
    :
If the -restartflag option is enabled, automatic restarts are
  performed, based on the -restartdetection option.
: :this = neldermead_restart ( this ) Restarts the optimization by
updating the simplex and performing a new search.
    :this The current object.
    :

: :[ this , result ] = neldermead_function ( this , x ) Call the cost
function and return the value.
    :this The current object.
    : :x the point where the function is to be evaluated
    : :index optional, a flag to pass to the cost function (default = 1).
      See the section "The cost function" for available values of index.
    :

: :stop = neldermead_defaultoutput(state, data) Prints messages at an
  iteration. This function provides a default implementation for the
  output function. There is one line by iteration, presenting the number
  of iterations, the number of function evaluations, the current
  function value and the current algorithm step. See "The output
  function" section below for a description of the input and output
  arguments. See in the Examples section below for examples of this
  function.
:



The cost function
~~~~~~~~~~~~~~~~~

The option `-function` allows to configure the cost function. The cost
function is used to compute the objective function value `f`. If the
`-nbineqconst` option is configured to a non-zero value, the cost
function must also compute the value of the nonlinear, positive,
inequality constraints `c`. Depending of these options, the cost
function can have one of the following headers :


::

    
          [ f , index ] = costf ( x , index )
          [ f , c , index ] = costf ( x , index )
        


where

:x the current point, as a column vector
: :index optional, an integer representing the value to compute
: :f the value of the cost function
: :c the value of the non-linear, positive, inequality constraints
:

The index input parameter tells to the cost function what is expected
in the output arguments. It has the following meaning

:index = 2 compute `f`
: :index = 5 compute `c`
: :index = 6 compute `f` and `c`
:

In the most simplex case, there is no additionnal cost function
argument and no nonlinear constraints. In this case, the cost function
is expected to have the following header


::

    
          [ f , index ]= myfunction ( x , index )
        


It might happen that the function requires additionnal arguments to be
evaluated. In this case, we can use the following feature. The
argument `fun` can also be the list `(myfun,a1,a2,...)`. In this case
`myfun`, the first element in the list, must be a function and must
have the header:

::

    
            [ f , index ] = myfun ( x , index , a1, a2, ... )
            [ f , c , index ] = myfun ( x , index , a1, a2, ...)
          

where the input arguments `a1, a2, ...` are automatically appended at
the end of the calling sequence.



The output function
~~~~~~~~~~~~~~~~~~~

The option -outputcommand allows to configure a command which is
called back at the start of the optimization, at each iteration and at
the end of the optimization.

The output function must have the following header


::

    
          stop = outputcmd(state, data)
        


where

:state a string representing the current state of the algorithm.
  Available values are "init", "iter", "done".
: :data a data structure containing at least the following entries
    :x the current optimum
    : :fval the current function value
    : :iteration the current iteration index
    : :funccount the number of function evaluations
    : :simplex the current simplex
    : :step the previous step in the algorithm. The following values are
      available : "init", "done", "reflection", "expansion",
      "insidecontraction", "outsidecontraction", "reflectionnext", "shrink".
    :

: :stop a 1-by-1 matrix of booleans, set to true to stop the
  algorithm, set to false to continue the optimization.
:

It might happen that the output function requires additionnal
arguments to be evaluated. In this case, we can use the following
feature. The argument `outputcmd` can also be the list
`(outf,a1,a2,...)`. In this case `outf`, the first element in the
list, must be a function and must have the header:

::

    
            stop = outf ( state, data, a1, a2, ... )
          

where the input arguments `a1, a2, ...` are automatically appended at
the end of the calling sequence.

If the output function sets the `stop` variable to true, then the
optimization alorithm stops and the status of the optimization is set
to `"userstop"`.



Termination
~~~~~~~~~~~

The current component takes into account for several generic
termination criterias.

The following termination criterias are enabled by default :


+ -maxiter,
+ -maxfunevals,
+ -tolxmethod.
+ -tolsimplexizemethod.


The optimization_terminate function uses a set of rules to compute if
the termination occurs, which leads to an optimization status which is
equal to one of the following : "continue", "maxiter", "maxfunevals",
"tolf", "tolx", "tolsize", "tolsizedeltafv", "kelleystagnation",
"tolboxf", "tolvariance". The value of the status may also be a user-
defined string, in the case where a user-defined termination function
has been set.

The following set of rules is examined in this order.


+ By default, the status is `"continue"` and the `terminate` flag is
  %f.
+ The number of iterations is examined and compared to the `-maxiter`
  option : if the following condition

::

    
              iterations >= maxiter
            

  is true, then the status is set to "maxiter" and terminate is set to
  %t.
+ The number of function evaluations and compared to the
  `-maxfunevals` option is examined : if the following condition

::

    
              funevals >= maxfunevals
            

  is true, then the status is set to `"maxfuneval"` and `terminate` is
  set to %t.
+ The tolerance on function value is examined depending on the value
of the `-tolfunmethod`.
    :%f then the criteria is just ignored.
      : :%t if the following condition

::

        
                        abs(currentfopt) < tolfunrelative * abs(previousfopt) + tolfunabsolute
                      

    is true, then the status is set to "tolf" and terminate is set to %t.
    :
  The relative termination criteria on the function value works well if
  the function value at optimum is near zero. In that case, the function
  value at initial guess fx0 may be used as `previousfopt`. This
  criteria is sensitive to the `-tolfunrelative` and `-tolfunabsolute`
  options. The absolute termination criteria on the function value works
  if the user has an accurate idea of the optimum function value.
+ The tolerance on x is examined depending on the value of the
-tolxmethod.
    :%f then the criteria is just ignored.
      : :%t if the following condition

::

        
                        norm(xopt - previousxopt) < tolxrelative * norm(xopt) + tolxabsolute
                      

    is true, then the status is set to `"tolx"` and `terminate` is set to
      %t.
    :
  This criteria is sensitive to the `-tolxrelative` and `-tolxabsolute`
  options. The relative termination criteria on x works well if x at
  optimum is different from zero. In that case, the condition measures
  the distance between two iterates. The absolute termination criteria
  on x works if the user has an accurate idea of the scale of the
  optimum x. If the optimum x is near 0, the relative tolerance will not
  work and the absolute tolerance is more appropriate.
+ The tolerance on simplex size is examined depending on the value of
the `-tolsimplexizemethod` option.
    :%f then the criteria is just ignored.
      : :%t if the following condition

::

        
                        ssize < tolsimplexizerelative * simplexsize0 + tolsimplexizeabsolute
                      

    is true where `simplexsize0` is the size of the simplex at iteration
      0, then the `status` is set to `"tolsize"` and `terminate` is set to
      %t. The size of the simplex is computed from the "sigmaplus" method of
      the `optimsimplex` component. This criteria is sensitive to the
      `-tolsimplexizeabsolute` and the `-tolsimplexizerelative` options.
    :

+ The absolute tolerance on simplex size and absolute difference of
function value is examined depending on the value of the
-tolssizedeltafvmethod option.
    :%f then the criteria is just ignored.
      : :%t if both the following conditions

::

        
                        ssize < tolsimplexizeabsolute
                      



::

        
                        shiftfv < toldeltafv
                      

    is true where `ssize` is the current simplex size and `shiftfv` is the
      absolute value of the difference of function value between the highest
      and lowest vertices, then the status is set to `"tolsizedeltafv"` and
      `terminate` is set to %t.
    :

+ The stagnation condition based on Kelley sufficient decrease
condition is examined depending on the value of the
`-kelleystagnationflag` option.
    :%f then the criteria is just ignored.
      : :%t if the following condition

::

        
                        newfvmean <= oldfvmean - alpha * sg' * sg
                      

    is true where `newfvmean` (resp. `oldfvmean`) is the function value
      average in the current iteration (resp. in the previous iteration),
      then the status is set to "kelleystagnation" and terminate is set to
      %t. Here, `alpha` is a non-dimensional coefficient and `sg` is the
      simplex gradient.
    :

+ The termination condition suggested by Box is examined depending on
the value of the -boxtermination option.
    :%f then the criteria is just ignored.
      : :%t if both the following conditions

::

        
                        shiftfv < boxtolf
                      



::

        
                        boxkount == boxnbmatch
                      

    is true where `shiftfv`is the difference of function value between the
      best and worst vertices, and `boxkount` is the number of consecutive
      iterations where this criteria is met, then the status is set to
      "tolboxf" and terminate is set to %t. Here, the `boxtolf` parameter is
      the value associated with the `-boxtolf` option and is a user-defined
      absolute tolerance on the function value. The `boxnbmatch` parameter
      is the value associated with the `-boxnbmatch` option and is the user-
      defined number of consecutive match.
    :

+ The termination condition based on the variance of the function
values in the simplex is examined depending on the value of the
`-tolvarianceflag` option.
    :%f then the criteria is just ignored.
      : :%t if the following condition

::

        
                        var < tolrelativevariance * variancesimplex0 + tolabsolutevariance
                      

    is true where `var`is the variance of the function values in the
      simplex, then the status is set to "tolvariance" and terminate is set
      to %t. Here, the `tolrelativevariance` parameter is the value
      associated with the `-tolrelativevariance` option and is a user-
      defined relative tolerance on the variance of the function values. The
      `tolabsolutevariance` parameter is the value associated with the
      `-tolabsolutevariance` option and is the user-defined absolute
      tolerance of the variance of the function values.
    :





Kelley's stagnation detection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The stagnation detection criteria suggested by Kelley is based on a
sufficient decrease condition, which requires a parameter alpha > 0 to
be defined. The -kelleynormalizationflag option allows to configure
the method to use to compute this alpha parameter : two methods are
available, where each method corresponds to a different paper by
Kelley :

:constant In "Detection and Remediation of Stagnation in the Nelder--
  Mead Algorithm Using a Sufficient Decrease Condition", Kelley uses a
  constant alpha, with the suggested value 1.e-4, which is is typical
  choice for line search method.
: :normalized in "Iterative Methods for Optimization", Kelley uses a
normalized alpha, computed from the following formula

::

    
                alpha = alpha0 * sigma0 / nsg
              

where sigma0 is the size of the initial simplex and nsg is the norm of
  the simplex gradient for the initial guess point.
:



O'Neill factorial optimality test
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In "Algorithm AS47 - Function minimization using a simplex procedure",
R. O'Neill presents a fortran 77 implementation of the simplex method.
A factorial test is used to check if the computed optimum point is a
local minimum. If the -restartdetection option is set to "oneill",
that factorial test is used to see if a restart should be performed.
O'Neill's factorial test requires `2n` function evaluations, where `n`
is the number of variables.



User-defined algorithm
~~~~~~~~~~~~~~~~~~~~~~

The `-mymethod` option allows to configure a user-defined simplex-
based algorithm. The reason for this option is that many simplex-based
variants of Nelder-Mead's algorithm have been developed over the
years, with specific goals. While it is not possible to provide them
all, it is very convenient to use the current structure without being
forced to make many developments.

The value of the `-mymethod` option is expected to be a Scilab
function with the following header


::

    
          this = myalgorithm ( this )
        


where `this` is the current object.

In order to use the user-defined algorithm, the `-method` option must
be set to "mine". In this case, the component performs the
optimization exactly as if the user-defined algorithm was provided by
the component.

The user interested in that feature may use the internal scripts
provided in the distribution as templates and tune his own algorithm
from that point. There is of course no warranty that the user-defined
algorithm improves on the standard algorithm, so that users use this
feature at their own risks.



Example #1: basic use
~~~~~~~~~~~~~~~~~~~~~

In the following example, we solve a simple quadratic test case. We
begin by defining the cost function, which takes 2 input arguments and
returns the objective. The classical starting point [-1.2 1.0] is
used. The neldermead_new creates a new neldermead object. Then we use
the neldermead_configure method to configure the parameters of the
problem. We use all default settings and perform the search for the
optimum. The neldermead_display function is used to display the state
of the optimization and the neldermead_get is used to retrieve the
optimum parameters.


::

    function [f, index]=quadratic(x, index)
      f = x(1)^2 + x(2)^2;
    endfunction
    x0 = [1.0 1.0].';
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",2);
    nm = `neldermead_configure`_(nm,"-function",quadratic);
    nm = `neldermead_configure`_(nm,"-x0",x0);
    nm = `neldermead_search`_(nm);
    nm
    xopt = `neldermead_get`_(nm,"-xopt");
    nm = `neldermead_destroy`_(nm);




Example #2: customized use
~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, we solve the Rosenbrock test case. We begin
by defining the Rosenbrock function, which takes 2 input arguments and
returns the objective. The classical starting point [-1.2 1.0] is
used. The neldermead_new creates a new neldermead object. Then we use
the neldermead_configure method to configure the parameters of the
problem. The initial simplex is computed from the axes and the single
length 1.0 (this is the default, but is explicitly written here as an
example). The variable simplex algorithm by Nelder and Mead is used,
which corresponds to the -method "variable" option. The
neldermead_search function performs the search for the minimum. Once
the minimum is found, the neldermead_contour allows to compute the
data required by the contour function. This is possible since our
problem involves only 2 parameters. This function uses the cost
function previously configured to compute the required data. The
contour plot is directly drawn from the data provided by
neldermead_contour. Then we plot the initial guess on the contour plot
as a blue dot. The neldermead_get function is used to get the optimum,
which is associated with the -xopt option. The optimum is plot on the
contour plot as a red dot.


::

    function [f, index]=rosenbrock(x, index)
      f = 100*(x(2)-x(1)^2)^2+(1-x(1))^2;
    endfunction
    x0 = [-1.2 1.0]'
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",2);
    nm = `neldermead_configure`_(nm,"-function",rosenbrock);
    nm = `neldermead_configure`_(nm,"-x0",x0);
    nm = `neldermead_configure`_(nm,"-maxiter",200);
    nm = `neldermead_configure`_(nm,"-maxfunevals",300);
    nm = `neldermead_configure`_(nm,"-tolfunrelative",10*%eps);
    nm = `neldermead_configure`_(nm,"-tolxrelative",10*%eps);
    nm = `neldermead_configure`_(nm,"-simplex0method","axes");
    nm = `neldermead_configure`_(nm,"-simplex0length",1.0);
    nm = `neldermead_configure`_(nm,"-method","variable");
    nm = `neldermead_configure`_(nm,"-verbose",1);
    nm = `neldermead_configure`_(nm,"-verbosetermination",1);
    nm = `neldermead_search`_(nm);
    xopt = `neldermead_get`_(nm,"-xopt")
    nm = `neldermead_destroy`_(nm);
    // Contouring the function.
    function f=rosenbrockC(x1, x2)
      index = 2
      [ f , index ] = rosenbrock ( [x1,x2]' , index )
    endfunction
    xdata = `linspace`_ ( -2 , 2 , 100 );
    ydata = `linspace`_ ( -1 , 2 , 100 );
    h = `scf`_();
    `contour`_ ( xdata , ydata , rosenbrockC , [2 10 100 500 1000 2000] )
    // Plot starting point: x0 : blue dot
    `plot`_(x0(1),x0(2),"bo");
    // xopt : red star
    `plot`_(xopt(1),xopt(2),"r*");


The -verbose option allows to get detailed information about the
current optimization process. The following is a sample output for an
optimization based on the Nelder and Mead variable-shape simplex
algorithm. Only the output corresponding to the iteration #156 is
displayed. In order to display specific outputs (or to create specific
output files and graphics), the -outputcommand option should be used.


::

     
    [...]
    Iteration #156 (total = 156)
    Function Eval #299
    Xopt : [1 1]
    Fopt : 6.871D-27
    DeltaFv : 2.881D-26
    Center : [1 1]
    Size : 2.549D-13
    Optim Simplex Object:
    =====================
    nbve: 3
    n: 2
    x: 3-by-2 matrix
    fv: 3-by-1 matrix
      > Termination ?
      > iterations=156 >= maxiter=200
      > funevals=299 >= maxfunevals=300
      > e(x)=8.798D-15 < 2.220D-15 * 1.4142136 + 0
      > Terminate = F, status = continue
      > simplex size=2.549D-13 < 0 + 2.220D-16 * 1
      > Terminate = F, status = continue
    Reflect
    xbar=1 1
    Function Evaluation #300, index=2, x= [1 1]
    xr=[1 1], f(xr)=0.000000
    Contract - inside
    Function Evaluation #301, index=2, x= [1 1]
    xc=1 1, f(xc)=0.000000
      > Perform Inside Contraction
    Sort
    [...]
     




Example #3: use output function
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are several ways to print intermediate messages or plots during
the optimization process. The first method is to set the "-verbose"
option to 1, which prints a lot of detailed information. The other
method is to use the `"-outputcommand"` option. We can either set it
to the `neldermead_defaultoutput` or define our own function. In this
section, we present the methods based on the `"-outputcommand"`
option.

In the following example, we use the `"-outputcommand"`option and set
it to the `neldermead_defaultoutput` default output function. This
function prints one line by iteration, with the main optimization
information.


::

    function [f, index]=quadratic(x, index)
      f = x(1)^2 + x(2)^2;
    endfunction
    x0 = [1.0 1.0].';
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",2);
    nm = `neldermead_configure`_(nm,"-function",quadratic);
    nm = `neldermead_configure`_(nm,"-x0",x0);
    nm = `neldermead_configure`_(nm,"-outputcommand",neldermead_defaultoutput);
    nm = `neldermead_search`_(nm);
    nm = `neldermead_destroy`_(nm);


The previous script produces the following output.


::

    
          Initialization
          Iter. #0, Feval #5, Fval = 2 -- init
          Iter. #1, Feval #5, Fval = 2 -- init
          Iter. #2, Feval #6, Fval = 2 -- reflection
          Iter. #3, Feval #8, Fval = 0.5 -- expansion
          Iter. #4, Feval #9, Fval = 0.5 -- reflection
          [...]
          Iter. #48, Feval #92, Fval = 8.557D-13 -- reflection
          Iter. #49, Feval #94, Fval = 7.893D-13 -- insidecontraction
          Iter. #50, Feval #96, Fval = 1.601D-13 -- insidecontraction
          Iter. #51, Feval #98, Fval = 1.291D-13 -- insidecontraction
          Iter. #52, Feval #100, Fval = 3.139D-14 -- outsidecontraction
          =================================
          End of Optimization
          Iter. #52, Feval #100, Fval = 3.139D-14 -- done
        


In the following example, we define our own output function
"myoutputcmd", which takes the current state as its first argument.
The state is a string which can contain "init", "iter" or "done",
depending on the status of the optimization. The data input argument
is a tlist, which contains the data associated with the current
iteration. In this case, we use the fields to print a message in the
console.


::

    function [f, index]=rosenbrock(x, index)
      f = 100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
    endfunction
    
    function stop=myoutputcmd(state, data)
      iter = data.iteration
      if ( state == "init" ) then
        `mprintf`_ ( "=================================\n");
        `mprintf`_ ( "Initialization\n");
      elseif ( state == "done" ) then
        `mprintf`_ ( "=================================\n");
        `mprintf`_ ( "End of Optimization\n");
      end
      fc = data.funccount
      fval = data.fval
      x = data.x
      simplex = data.simplex
      // Simplex is a data structure, which can be managed
      // by the optimsimplex class.
      ssize = `optimsimplex_size`_ ( simplex )
      `mprintf`_ ( "Iter. #%3d, Feval #%3d, Fval = %.1e, x = %s, S = %.1e\n", ..
        iter, fc, fval, `strcat`_(`string`_(x)," "), ssize);
      stop = %f
    endfunction
    
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",2);
    nm = `neldermead_configure`_(nm,"-function",rosenbrock);
    nm = `neldermead_configure`_(nm,"-x0",[-1.2 1.0]');
    nm = `neldermead_configure`_(nm,"-maxiter",200);
    nm = `neldermead_configure`_(nm,"-maxfunevals",300);
    nm = `neldermead_configure`_(nm,"-tolfunrelative",10*%eps);
    nm = `neldermead_configure`_(nm,"-tolxrelative",10*%eps);
    nm = `neldermead_configure`_(nm,"-simplex0method","axes");
    nm = `neldermead_configure`_(nm,"-simplex0length",1.0);
    nm = `neldermead_configure`_(nm,"-method","variable");
    nm = `neldermead_configure`_(nm,"-verbose",0);
    nm = `neldermead_configure`_(nm,"-verbosetermination",0);
    nm = `neldermead_configure`_(nm,"-outputcommand",myoutputcmd);
    nm = `neldermead_search`_(nm);
    nm = `neldermead_destroy`_(nm);


The previous script produces the following output.


::

    
          =================================
          Initialization
          Iter. #  0, Feval #  5, Fval = 2.4e+001, x = -1.2 1, S = 1.0e+000
          Iter. #  1, Feval #  5, Fval = 2.4e+001, x = -1.2 1, S = 1.0e+000
          Iter. #  2, Feval #  7, Fval = 2.4e+001, x = -1.2 1, S = 1.0e+000
          Iter. #  3, Feval #  9, Fval = 2.4e+001, x = -1.2 1, S = 1.0e+000
          Iter. #  4, Feval # 11, Fval = 1.0e+001, x = -1.0125 0.78125, S = 6.0e-001
          Iter. #  5, Feval # 13, Fval = 4.7e+000, x = -1.028125 1.1328125, S = 3.5e-001
          ...
          Iter. #155, Feval #297, Fval = 2.0e-026, x = 1 1, S = 4.6e-013
          Iter. #156, Feval #299, Fval = 6.9e-027, x = 1 1, S = 2.5e-013
          Iter. #157, Feval #301, Fval = 6.0e-027, x = 1 1, S = 2.8e-013
          =================================
          End of Optimization
          Iter. #157, Feval #301, Fval = 6.0e-027, x = 1 1, S = 2.8e-013
        


As another example of use, we could format the message so that it uses
LaTeX formatting rules, which may allow the user to directly copy and
paste the output into a LaTeX report.



Example #4: Optimization with bounds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The `neldermead` solver can optimize problems with bounds. To do this,
we can use Box's algorithm, which projects the simplex into the bounds
during the optimization. In this case, the initial guess must be
located within the bounds.

In the following example, we find the minimum of a quadratic function
within given bounds. In order to compute the initial simplex, we use
randomized bounds, that is, we compute k random vertices uniformly
distributed within the bounds. The default value is so that the number
of points is twice the number of variables of the problem. In this
particular case, we have n=2 variables and k=4 vertices.


::

    function [f, index]=myquad(x, index)
        f = x(1)^2 + x(2)^2
    endfunction
    `rand`_("seed" , 0)
    x0 = [1.3 1.8].';
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",2);
    nm = `neldermead_configure`_(nm,"-function",myquad);
    nm = `neldermead_configure`_(nm,"-x0",x0);
    nm = `neldermead_configure`_(nm,"-method","box");
    nm = `neldermead_configure`_(nm,"-boundsmin",[1 1]);
    nm = `neldermead_configure`_(nm,"-boundsmax",[2 2]);
    nm = `neldermead_configure`_(nm,"-simplex0method","randbounds");
    nm = `neldermead_search`_(nm);
    xopt = `neldermead_get`_(nm,"-xopt") // Should be [1 1]
    fopt = `neldermead_get`_(nm,"-fopt") // Should be 2
    nm = `neldermead_destroy`_(nm);




Example #5: Optimization with nonlinear constraints
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The `neldermead` solver can optimize problems with nonlinear
constraints. In the following example, we solve Rosenbrock's Post
Office problem, which has both bounds and linear constraints. In our
example, we will manage the linear constraints as general non-linear
constraints (i.e. the solver does not make a difference if the
constraints are linear or non-linear). This example was first
presented in "An automatic method for finding the greatest or least
value of a function", Rosenbrock, 1960. This example was first used
with the complex method of Box in "Algorithm 454: The complex method
for constrained optimization" by Richardson, Kuester, 1971. Richardson
and Kuester found the minimum function value F=-3456, with X1 = 24.01,
X2 = 12.00, X3 = 12.00 and 72 Iterations were necessary for them to
get this result.

In the following function, we define the function `fpostoffice`, which
returns both the objective function `f` and the constraint value `c`.
The original constraint is the "double" inequality constraint `0<=x(1)
+ 2 * x(2) + 2 * x(3) <=72`. To take this constraint into account, we
turn it into two separate, positive, constraints and set `c` as a
1-by-2 matrix of doubles.


::

    function [f, c, index]=fpostoffice(x, index)
      f = []
      c = []
      if ( index==2 | index==6 ) then
        f = -x(1) * x(2) * x(3)
      end
      
      if ( index==5 | index==6 ) then
        c1 = x(1) + 2 * x(2) + 2 * x(3)
        c2 = 72 - c1
        c = [c1 c2]
      end
    endfunction


In the following script, we solve Rosenbrock's Post Office problem.
First, we initialize the random number generator, so that the results
are always the same. Then, we check that the cost function is
correctly defined and that the constraints are satisfied at the
initial guess. Then we configure the algorithm so that Box's algorithm
is used and setup the bounds of the problem. We configure the
parameters of the algorithm as suggested by Box.


::

    `rand`_("seed" , 0);
    x0 = [1.0 1.0 1.0].';
    // Compute f(x0) : should be close to -1
    fx0 = fpostoffice ( x0 , 2 )
    // Compute the constraints: cx0 should be [5 67]
    [ fx0 , cx0, index ] = fpostoffice ( x0 , 6 )
    // Compute f(xopt) : fopt should be -3456
    xopt = [24 12 12].';
    fopt = fpostoffice ( xopt );
    // Setup optimization
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",3);
    nm = `neldermead_configure`_(nm,"-function",fpostoffice);
    nm = `neldermead_configure`_(nm,"-x0",x0);
    nm = `neldermead_configure`_(nm,"-maxiter",300);
    nm = `neldermead_configure`_(nm,"-maxfunevals",300);
    nm = `neldermead_configure`_(nm,"-method","box");
    nm = `neldermead_configure`_(nm,"-boundsmin",[0.0 0.0 0.0]);
    nm = `neldermead_configure`_(nm,"-boundsmax",[42.0 42.0 42.0]);
    // Configure like Box
    nm = `neldermead_configure`_(nm,"-simplex0method","randbounds");
    nm = `neldermead_configure`_(nm,"-nbineqconst",2);
    nm = `neldermead_configure`_(nm,"-tolxmethod" , %f );
    nm = `neldermead_configure`_(nm,"-tolsimplexizemethod",%f);
    nm = `neldermead_configure`_(nm,"-boxtermination" , %t );
    nm = `neldermead_configure`_(nm,"-boxtolf" , 0.001 );
    nm = `neldermead_configure`_(nm,"-boxboundsalpha" , 0.0001 );
    //
    // Check that the cost function is correctly connected.
    [ nm , result ] = `neldermead_function`_ ( nm , x0 );
    //
    // Perform optimization
    nm = `neldermead_search`_(nm);
    xcomp = `neldermead_get`_(nm,"-xopt")
    // Compare with the exact optimum:
    xopt
    fcomp = `neldermead_get`_(nm,"-fopt")
    // Compare with the exact function value:
    fopt
    nm = `neldermead_destroy`_(nm);


In general, we should not expect too much from this algorithm with
nonlinear constraints. Indeed, some cases require thousands of
iterations to converge to an optimum, because the nonlinear
constraints leave a too small space for the simplex to evolve.



Example #6: Passing extra parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, we solve a simple quadratic test case.
Notice that the objective function has two extra parameters `a` and
`b`. This is why the "-function" option is set as a list, where the
first element is the function and the remaining elements are the extra
parameters.


::

    function [f, index]=quadratic_ab(x, index, a, b)
      f = a * x(1)^2 + b * x(2)^2;
    endfunction
    x0 = [1.0 1.0].';
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",2);
    a = 1;
    b = 2;
    nm = `neldermead_configure`_(nm,"-function",`list`_(quadratic_ab,a,b));
    nm = `neldermead_configure`_(nm,"-x0",x0);
    nm = `neldermead_search`_(nm);
    xopt = `neldermead_get`_(nm,"-xopt")
    nm = `neldermead_destroy`_(nm);




Example #7: Restarting without bounds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, we reproduce the experiment published by Ken
McKinnon in 1998. For this particular function and this particular
initial simplex, the Nelder-Mead algorithm converges to a
nonstationnary point.

We first define the objective function, the initial simplex and the
expected solution of this unconstrained optimization problem.


::

    function [f, index]=mckinnon(x, index)
      tau = 3
      theta = 6
      phi = 400
      if ( x(1) <= 0 )
        f = theta*phi*`abs`_(x(1))^tau+x(2)*(1+x(2))
      else
        f = theta*x(1)^tau+x(2)*(1+x(2))
      end
    endfunction
    
    // The initial simplex
    lambda1 = (1.0 + `sqrt`_(33))/8;
    lambda2 = (1.0 - `sqrt`_(33))/8;
    coords0 = [
    1  1
    0  0 
    lambda1 lambda2
    ];
    
    // The expected solution
    xstar = [0;-0.5];
    fstar = -0.25;


Then we run the algorithm two times in sequence. At the end of the
first optimization process, the algorithm has converged to the point
[0,0] which is nonstationnary. This is why we restart the algorithm
and get the correct minimum.


::

    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",2);
    nm = `neldermead_configure`_(nm,"-function",mckinnon);
    nm = `neldermead_configure`_(nm,"-x0",[1.0 1.0]');
    nm = `neldermead_configure`_(nm,"-tolsimplexizerelative",1.e-4);
    nm = `neldermead_configure`_(nm, "-maxiter",200);
    nm = `neldermead_configure`_(nm, "-maxfunevals",500);
    nm = `neldermead_configure`_(nm,"-simplex0method","given");
    nm = `neldermead_configure`_(nm,"-coords0",coords0);
    nm = `neldermead_configure`_(nm,"-method","variable");
    // Search #1: fails
    nm = `neldermead_search`_(nm);
    xopt = `neldermead_get`_(nm,"-xopt")
    fopt = `neldermead_get`_(nm,"-fopt")
    iterations = `neldermead_get`_(nm,"-iterations")
    status = `neldermead_get`_(nm,"-status")
    // Search #2: succeeds
    nm = `neldermead_restart`_ ( nm );
    xopt = `neldermead_get`_(nm,"-xopt")
    fopt = `neldermead_get`_(nm,"-fopt")
    iterations = `neldermead_get`_(nm,"-iterations")
    status = `neldermead_get`_(nm,"-status")
    nm = `neldermead_destroy`_(nm);


We can also use the automatic stagnation detection method created by
Kelley, so that the algorithm automatically restart the algorithm when
needed.


::

    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",2);
    nm = `neldermead_configure`_(nm,"-function",mckinnon);
    nm = `neldermead_configure`_(nm,"-x0",[1.0 1.0]');
    nm = `neldermead_configure`_(nm,"-tolsimplexizerelative",1.e-4);
    nm = `neldermead_configure`_(nm, "-maxiter",200);
    nm = `neldermead_configure`_(nm, "-maxfunevals",500);
    nm = `neldermead_configure`_(nm,"-simplex0method","given");
    nm = `neldermead_configure`_(nm,"-coords0",coords0);
    nm = `neldermead_configure`_(nm,"-method","variable");
    nm = `neldermead_configure`_(nm,"-kelleystagnationflag",%t);
    nm = `neldermead_configure`_(nm,"-restartflag",%t);
    nm = `neldermead_configure`_(nm,"-restartdetection","kelley");
    nm = `neldermead_search`_(nm);
    xopt = `neldermead_get`_(nm,"-xopt")
    fopt = `neldermead_get`_(nm,"-fopt")
    iterations = `neldermead_get`_(nm,"-iterations")
    restartnb = `neldermead_get`_ ( nm , "-restartnb" )
    status = `neldermead_get`_(nm,"-status")
    nm = `neldermead_destroy`_(nm);


See the demonstrations to get a graphical plot of the intermediate
simplices in Mc Kinnon's experiment.



Example #8: Restarting with bounds
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following experimeant, we solve an optimization problem with
bounds. We use Box's algorithm, which is the only algorithm which
manages bounds. We use the randomized bounds simplex both for the
initial simplex and for the restart simplex.


::

    function [f, index]=myquad(x, index)
        f = x(1)^2 + x(2)^2 + x(3)^2
    endfunction
    x0 = [1.2 1.9,1.5].';
    // The solution
    xstar = [1;1;1];
    fstar = 3;
    //
    nm = `neldermead_new`_ ();
    nm = `neldermead_configure`_(nm,"-numberofvariables",3);
    nm = `neldermead_configure`_(nm,"-function",myquad);
    nm = `neldermead_configure`_(nm,"-x0",x0);
    nm = `neldermead_configure`_(nm,"-method","box");
    nm = `neldermead_configure`_(nm,"-boundsmin",[1 1 1]);
    nm = `neldermead_configure`_(nm,"-boundsmax",[2 2 2]);
    nm = `neldermead_configure`_(nm,"-simplex0method","randbounds");
    nm = `neldermead_search`_(nm);
    nm = `neldermead_configure`_(nm,"-maxiter",200);
    nm = `neldermead_configure`_(nm,"-maxfunevals",200);
    nm = `neldermead_configure`_(nm,"-restartsimplexmethod","randbounds");
    nm = `neldermead_restart`_(nm);
    xopt = `neldermead_get`_(nm,"-xopt")
    fopt = `neldermead_get`_(nm,"-fopt")
    status = `neldermead_get`_(nm,"-status")
    nm = `neldermead_destroy`_(nm);




Changes in Scilab 5.4
~~~~~~~~~~~~~~~~~~~~~

Many changes have been done in Scilab 5.4, which simplify the use of
the neldermead component.

Tagged -costfargument option of optimbase as obsolete: will be
maintained for backward compatibility until 5.4.1. The -fun option can
now be a list, where the element #1 is a function, and the elements #2
to the end are automatically appended to the calling sequence. To
update your code, replace:


::

    
          nm = neldermead_configure(nm,"-function",myfun);
          nm = neldermead_configure(nm,"-costfargument",mystuff);
        


with


::

    
          nm = neldermead_configure(nm,"-function",list(myfun,mystuff));
        


Tagged -outputcommandarg option of optimbase as obsolete: will be
maintained for backward compatibility until 5.4.1. The -outputcommand
option can now be a list, where the element #1 is a function, and the
elements #2 to the end are automatically appended to the calling
sequence. To update your code, replace:


::

    
          nm = neldermead_configure(nm,"-outputcommand",myoutputfun);
          nm = neldermead_configure(nm,"-outputcommandarg",mystuff);
        


with:


::

    
          nm = neldermead_configure(nm,"-outputcommand",list(myoutputfun,mystuff));
        


Tagged "outputfun(x,optimValues,state)" calling sequence of fminsearch
as obsolete: will be maintained for backward compatibility until
5.4.1. The new calling sequence is
"stop=outputfun(x,optimValues,state)" To update your code, replace:


::

    
          function outfun ( x , optimValues , state )
          [...]
          endfunction
        


with:


::

    
          function stop = outfun ( x , optimValues , state )
          [...]
          stop = %f
          endfunction
        


Tagged "myoutputfun(state,data)" calling sequence of neldermead as
obsolete: will be maintained for backward compatibility until 5.4.1.
The new calling sequence is "stop=myoutputfun(state,data)" To update
your code, replace:


::

    
          function myoutputfun ( state , data )
          [...]
          endfunction
        


with:


::

    
          function stop = myoutputfun ( state , data )
          [...]
          stop = %f
          endfunction
        


Tagged "-myterminateflag" and "-myterminate" options as obsolete: will
be maintained for backward compatibility until 5.4.1. To update your
code, replace:


::

    
          function [ this , terminate , status ] = myoldterminate ( this , simplex )
          ssize = optimsimplex_size ( simplex , "sigmaplus" );
          if ( ssize < 1.e-2 ) then
          terminate = %t;
          status = "mysize";
          else
          terminate = %f
          end
          endfunction
        


with :


::

    
          function stop = myoutputcmd ( state , data )
          simplex = data.simplex
          ssize = optimsimplex_size ( simplex , "sigmaplus" );
          if ( ssize < 1.e-2 ) then
          stop = %t;
          else
          stop = %f
          end
          endfunction
        


and replace the configuration:


::

    
          nm = neldermead_configure(nm,"-myterminateflag",%t);
          nm = neldermead_configure(nm,"-myterminate",myoldterminate);
        


with:


::

    
          nm = neldermead_configure(nm,"-outputcommand",myoutputcmd);
        


Tagged "-tolvarianceflag", "-tolabsolutevariance", and
"-tolrelativevariance" options as obsolete: will be maintained for
backward compatibility until 5.4.1. To update your code, create an
output function:


::

    
          function stop = myoutputcmd ( state, data, tolrelativevariance, tolabsolutevariance, variancesimplex0 )
          simplex = data.simplex
          stop = %f
          if ( state == "iter") then
          var = optimsimplex_fvvariance ( simplex )
          if ( var < tolrelativevariance * variancesimplex0 + tolabsolutevariance ) then
          stop = %t;
          end
          end
          endfunction
        


Create the initial simplex and compute the variance of the function
values:


::

    
          x0 = [1.1 1.1]';
          simplex0 = optimsimplex_new ( "axes" , x0.' );
          coords0 = optimsimplex_getallx(simplex0);
          variancesimplex0 = optimsimplex_fvvariance ( simplex0 );
        


Finally, replace the configuration:


::

    
          nm = neldermead_configure(nm,"-tolvarianceflag",%t);
          nm = neldermead_configure(nm,"-tolabsolutevariance",1.e-4);
          nm = neldermead_configure(nm,"-tolrelativevariance",1.e-4);
        


with:


::

    
          tolabsolutevariance = 1.e-4;
          tolrelativevariance = 1.e-4;
          stopfun = list(myoutputcmd, tolrelativevariance, tolabsolutevariance, variancesimplex0);
          nm = neldermead_configure(nm,"-outputcommand",stopfun);
        




Spendley et al. implementation notes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The original paper may be implemented with several variations, which
might lead to different results. This section defines what algorithmic
choices have been used.

The paper states the following rules.


+ "Rule 1. Ascertain the lowest reading y, of yi ... yk+1 Complete a
  new simplex Sp by excluding the point Vp corresponding to y, and
  replacing it by V* defined as above."
+ "Rule 2. If a result has occurred in (k + 1) successive simplexes,
  and is not then eliminated by application of Rule 1, do not move in
  the direction indicated by Rule 1, or at all, but discard the result
  and replace it by a new observation at the same point."
+ "Rule 3. If y is the lowest reading in So , and if the next
  observation made, y* , is the lowest reading in the new simplex S , do
  not apply Rule 1 and return to So from Sp . Move out of S, by
  rejecting the second lowest reading (which is also the second lowest
  reading in So)."


We implement the following "rules" of the Spendley et al. method.


+ Rule 1 is strictly applied, but the reflection is done by reflection
  the high point, since we minimize a function instead of maximizing it,
  like Spendley.
+ Rule 2 is NOT implemented, as we expect that the function evaluation
  is not subject to errors.
+ Rule 3 is applied, ie reflection with respect to next to high point.


The original paper does not mention any shrink step. When the original
algorithm cannot improve the function value with reflection steps, the
basic algorithm stops. In order to make the current implementation of
practical value, a shrink step is included, with shrinkage factor
sigma. This perfectly fits into to the spirit of the original paper.
Notice that the shrink step make the rule #3 (reflection with respect
to next-to-worst vertex) unnecessary. Indeed, the minimum required
steps are the reflection and shrinkage. Never the less, the rule #3
has been kept in order to make the algorithm as close as it can be to
the original.



Nelder-Mead implementation notes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The purpose of this section is to analyse the current implementation
of Nelder-Mead's algorithm.

The algorithm that we use is described in "Iterative Methods for
Optimization" by C. T. Kelley.

The original paper uses a "greedy" expansion, in which the expansion
point is accepted whatever its function value. The current
implementation, as most implementations, uses the expansion point only
if it improves over the reflection point, that is,


+ if fe<fr, then the expansion point is accepted,
+ if not, the reflection point is accepted.


The termination criteria suggested by Nelder and Mead is based on an
absolute tolerance on the standard deviation of the function values in
the simplex. We provide this original termination criteria with the
`-tolvarianceflag` option, which is disabled by default.



Box's complex algorithm implementation notes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In this section, we analyse the current implementation of Box's
complex method.

The initial simplex can be computed as in Box's paper, but this may
not be safe. In his paper, Box suggest that if a vertex of the initial
simplex does not satisfy the non linear constraints, then it should be
"moved halfway toward the centroid of those points already selected".
This behaviour is available when the `-scalingsimplex0` option is set
to `"tocenter"`. It may happen, as suggested by Guin, that the
centroid is not feasible. This may happen if the constraints are not
convex. In this case, the initial simplex cannot be computed. This is
why we provide the `"tox0"` option, which allows to compute the
initial simplex by scaling toward the initial guess, which is always
feasible.

In Box's paper, the scaling into the non linear constraints is
performed "toward" the centroid, that is, by using a scaling factor
equal to 0.5. This default scaling factor might be sub-optimal in
certain situations. This is why we provide the `-boxineqscaling`
option, which allows to configure the scaling factor.

In Box's paper, whether we are concerned with the initial simplex or
with the simplex at a given iteration, the scaling for the non linear
constraints is performed without end. This is because Box's hypothesis
is that "ultimately, a satisfactory point will be found". As suggested
by Guin, if the process fails, the algorithm goes into an infinite
loop. In order to avoid this, we perform the scaling until a minimum
scaling value is reached, as defined by the `-guinalphamin` option.

We have taken into account for the comments by Guin, but it should be
emphasized that the current implementation is still as close as
possible to Box's algorithm and is not Guin's algorithm. More
precisely, during the iterations, the scaling for the non linear
constraints is still performed toward the centroid, be it feasible or
not.



Bibliography
~~~~~~~~~~~~

"Sequential Application of Simplex Designs in Optimisation and
Evolutionary Operation", Spendley, W. and Hext, G. R. and Himsworth,
F. R., American Statistical Association and American Society for
Quality, 1962

"A Simplex Method for Function Minimization", Nelder, J. A. and Mead,
R., The Computer Journal, 1965

"A New Method of Constrained Optimization and a Comparison With Other
Methods", M. J. Box, The Computer Journal 1965 8(1):42-52, 1965 by
British Computer Society

"Discussion and correspondence: modification of the complex method of
constrained optimization", J. A. Guin, The Computer Journal, 1968

"Detection and Remediation of Stagnation in the Nelder--Mead Algorithm
Using a Sufficient Decrease Condition", Kelley C. T., SIAM J. on
Optimization, 1999

"Iterative Methods for Optimization", C. T. Kelley, SIAM Frontiers in
Applied Mathematics, 1999

"Algorithm AS47 - Function minimization using a simplex procedure",
O'Neill, R., Applied Statistics, 1971

"Nelder Mead's User Manual", Consortium Scilab - Digiteo, Michael
Baudin, 2010

Ken McKinnon, Convergence of the Nelder-Mead simplex method to a
nonstationary point, SIAM Journal on Optimization, Volume 9, Number 1,
1998, pages 148-158.



See Also
~~~~~~~~


+ `optimbase`_ Provides an abstract class for a general optimization
  component.
+ `optimsimplex`_ Manage a simplex with arbitrary number of points.
+ `nmplot`_ Manage a simplex with arbitrary number of points.


.. _optimbase: optimbase.html
.. _nmplot: optimsimplex.html


