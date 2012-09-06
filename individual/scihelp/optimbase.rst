


optimbase
=========

Provides an abstract class for a general optimization component.



SYNOPSIS
~~~~~~~~


::

    newobj = optimbase_new ()
    this = optimbase_destroy (this)
    this = optimbase_configure (this,key,value)
    value = optimbase_cget (this,key)
    value = optimbase_get (this,key)
    this = optimbase_set ( this , key , value )
    this = optimbase_checkbounds ( this )
    this = optimbase_checkx0 ( this )
    [ this , f , index ] = optimbase_function ( this , x , index [ , a1, a2, ... ] )
    [ this , f , c , index ] = optimbase_function ( this , x , index [ , a1, a2, ... ] )
    [ this , f , g , index ] = optimbase_function ( this , x , index [ , a1, a2, ... ] )
    [ this , f , g , c , gc , index ] = optimbase_function ( this , x , index [ , a1, a2, ... ] )
    [ this , hasbounds ] = optimbase_hasbounds ( this )
    [ this , hascons ] = optimbase_hasconstraints ( this )
    [ this , hasnlcons ] = optimbase_hasnlcons ( this )
    value = optimbase_histget ( this , iter , key )
    this = optimbase_histset ( this , iter , key , value )
    this = optimbase_incriter ( this )
    [ this , isfeasible ] = optimbase_isfeasible ( this , x )
    this = optimbase_log (this,msg)
    stop = optimbase_outputcmd ( this , state , data )
    data = optimbase_outstruct ( this )
    [ this , p ] = optimbase_proj2bnds ( this ,  x )
    this = optimbase_stoplog ( this , msg )
    [this , terminate , status] = optimbase_terminate (this , previousfopt , currentfopt , previousxopt , currentxopt )
    this = optimbase_checkcostfun ( this )
    [ this , isfeasible ] = optimbase_isinbounds ( this , x )
    [ this , isfeasible ] = optimbase_isinnonlinconst ( this , x )




Purpose
~~~~~~~

The goal of this component is to provide a building block for
optimization methods. The goal is to provide a building block for a
large class of specialized optimization methods. This component
manages


+ the number of variables,
+ the minimum and maximum bounds,
+ the number of non linear inequality constraints,
+ the cost function,
+ the logging system,
+ various termination criteria,
+ etc...


This toolbox is designed with Oriented Object ideas in mind.



Features
~~~~~~~~

The following is a list of features the Optimbase toolbox currently
provides :


+ Manage cost function

    + optionnal additionnal argument
    + direct communication of the task to perform : cost function or
      inequality constraints

+ Manage various termination criteria, including

    + maximum number of iterations,
    + tolerance on function value (relative or absolute),
    + tolerance on x (relative or absolute),
    + maximum number of evaluations of cost function,

+ Manage the history of the convergence, including

    + history of function values,
    + history of optimum point.

+ Provide query features for

    + the status of the optimization process,
    + the number of iterations,
    + the number of function evaluations,
    + function value at initial point,
    + function value at optimal point,
    + the optimum parameters,
    + etc...





Description
~~~~~~~~~~~

This set of commands allows to manage an abstract optimization method.
The goal is to provide a building block for a large class of
specialized optimization methods. This component manages the number of
variables, the minimum and maximum bounds, the number of non linear
inequality constraints, the logging system, various termination
criteria, the cost function, etc...

The optimization problem to solve is the following


::

    `min`_ f(x)
    l_i <= x_i <= h_i, i = 1,n
    g_i(x) >= 0, i = 1,nbineq


where

:n number of variables
: :nbineq number of inequality constraints
:



Functions
~~~~~~~~~

The following functions are available.

:newobj = optimbase_new () Creates a new optimization object.
    :newobj The new object.
    :

: :this = optimbase_destroy (this) Destroy the given object.
    :this The current object.
    :

: :this = optimbase_configure (this,key,value) Configure the current
object with the given value for the given key.
    :this The current object.
    : :key the key to configure. The following keys are available.
        :-verbose a 1-by-1 matrix of doubles, positive, integer value, set to
          1 to enable verbose logging (default verbose = 0).
        : :-verbosetermination a 1-by-1 matrix of doubles, positive, integer
          value, set to 1 to enable verbose termination logging (default
          verbosetermination = 0).
        : :-x0 a n-by-1 matrix of doubles, where n is the number of variables,
          the initial guess. There is no default value, i.e. the user must
          provide `x0`.
        : :-maxfunevals a 1-by-1 matrix of doubles, positive, integer value,
          the maximum number of function evaluations (default maxfunevals =
          100). If this criteria is triggered, the status of the optimization is
          set to "maxfuneval".
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
        : :-function a function or a list, the objective function. This
          function computes the value of the cost and the non linear
          constraints, if any. There is no default value, i.e. the user must
          provide `f`. See below for the details of the communication between
          the optimization system and the cost function.
        : :-outputcommand a function or a list, a function which is called
          back for output. See below for the details of the communication
          between the optimization system and the output command function.
        : :-numberofvariables a 1-by-1 matrix of doubles, positive, integer
          value, the number of variables to optimize (default numberofvariables
          = 0).
        : :-storehistory a 1-by-1 matrix of booleans, set to %t to enable the
          history storing (default storehistory = %f).
        : :-boundsmin a n-by-1 matrix of doubles, the minimum bounds for the
          parameters where n is the number of variables (default boundsmin = [],
          i.e. there are no minimum bounds).
        : :-boundsmax a n-by-1 matrix of doubles, the maximum bounds for the
          parameters where n is the number of variables (default boundsmax = [],
          i.e. there are no maximum bounds).
        : :-nbineqconst a 1-by-1 matrix of doubles, positive, integer value,
          the number of inequality constraints (default nbineqconst = 0).
        : :-logfile the name of the log file
        : :-withderivatives a 1-by-1 matrix of booleans, set to %t if the
          algorithm uses derivatives (default withderivatives = %f).
        :

    : :value the value.
    :

: :value = optimbase_cget (this,key) Get the value for the given key.
If the key is unknown, generates an error.
    :this The current object.
    : :key the name of the key to quiery. The list of available keys is
      the same as for the optimbase_configure function.
    :

: :this = optimbase_checkbounds ( this ) Check if the bounds are
consistent and produces an error message if not.
    :this The current object.
    :

: :opt = optimbase_checkx0 ( this ) Check if the initial guess is
consistent with the bounds and the non linear inequality constraints,
if any and produces an error message if not.
    :this The current object.
    :

: :optimbase_function Call the cost function and return the required
results. If a cost function additionnal argument is defined in current
object, pass it to the function as the last argument. The following
calling sequences are available (see below for more details).

::

    [ this , f , index ] = `optimbase_function`_ ( this , x , index )
    [ this , f , c , index ] = `optimbase_function`_ ( this , x , index )
    [ this , f , g , index ] = `optimbase_function`_ ( this , x , index )
    [ this , f , g , c , gc , index ] = `optimbase_function`_ ( this , x , index )


    :this The current object.
    : :x the current point, as a column vector
    : :index what value to compute. See below in the section "Cost
      function" for details on this index.
    : :f the value of the cost function
    : :g the gradient of the cost function
    : :c the nonlinear, positive, inequality constraints
    : :gc the gradient of the nonlinear, positive, inequality constraints
    :

: :this = optimbase_set ( this , key , value ) Set the value for the
given key. If the key is unknown, generates an error.
    :this The current object.
    : :key the key to set The following keys are available :
        :-funevals the number of function evaluations
        : :-iterations the number of iterations
        : :-xopt the x optimum
        : :-fopt the optimum cost function value
        : :-historyxopt an array, with nbiter values, containing the history
          of x during the iterations. This array is available after optimization
          if the history storing was enabled with the -storehistory option.
        : :-historyfopt an array, with nbiter values, containing the history
          of the function value during the iterations. This array is available
          after optimization if the history storing was enabled with the
          -storehistory option.
        : :-fx0 the function value for the initial guess
        : :-status a string containing the status of the optimization
        :

    : :value the value to set
    :

: :value = optimbase_get (this,key) Get the value for the given key.
If the key is unknown, generates an error. This command corresponds
with options which are not available directly to the
optimbase_configure function, but are computed internally.
    :this The current object.
    : :key the name of the key to quiery. The list of available keys is
      the same as the optimbase_set function.
    :

: :[ this , hasbounds ] = optimbase_hasbounds ( this ) Returns %T if
current problem has bounds.
    :this The current object.
    :

: :[ this , hascons ] = optimbase_hasconstraints ( this ) Returns %T
if current problem has bounds constraints, linear constraints or non
linear constraints.
    :this The current object.
    :

: :[ this , hasnlcons ] = optimbase_hasnlcons ( this ) Returns %T if
current problem has non linear constraints.
    :this The current object.
    :

: :this = optimbase_histset ( this , iter , key , value ) Set the
history value at given iteration for the given key. If the key is
unknown, generates an error.
    :this The current object.
    : :iter the iteration number to get
    : :key the name of the key to quiery. The list of available keys is
      the following : "-xopt", "-fopt".
    : :value the value to set
    :

: :value = optimbase_histget ( this , iter , key ) Returns the history
value at the given iteration number for the given key. If the key is
unknown, generates an error.
    :this The current object.
    : :iter the iteration number to get
    : :key the name of the key to quiery. The list of available keys is
      the same as the optimbase_histset function.
    :

: :this = optimbase_incriter ( this ) Increments the number of
iterations.
    :this The current object.
    :

: :[ this , isfeasible ] = optimbase_isfeasible ( this , x ) Returns 1
if the given point satisfies bounds constraints and inequality
constraints. Returns 0 if the given point is not in the bounds.
Returns -1 if the given point does not satisfies inequality
constraints.
    :this The current object.
    : :x the current point
    :

: :this = optimbase_log (this,msg) If verbose logging is enabled,
prints the given message in the console. If verbose logging is
disabled, does nothing. If the -lofgile option has been set, writes
the message into the file instead of writing to the console. If the
console is too slow, writing into a file can be a solution, since it
is very fast.
    :this The current object.
    : :msg the message to print
    :

: :stop = optimbase_outputcmd ( this , state , data ) Calls back
user's output command. See below for details, in the "The output
function" section.
    :this The current object.
    : :state a 1-by-1 matrix of strings, the current state of the
      algorithm
    : :data a data structure with type T_OPTDATA. This is typically the
      output of the `optimbase_outstruct` function, with potentially
      additionnal fields.
    :

: :data = optimbase_outstruct ( this ) Returns a data structure with
type T_OPTDATA. This data structure contains basic optimization
fields. The output argument `data` is designed to be the input of the
`optimbase_outputcmd` function which, in turn, calls back the output
function. This data structure may be enriched by children
(specialized) optimization methods.
    :this The current object.
    :

: :[ this , p ] = optimbase_proj2bnds ( this , x ) Returns a point,
which is the projection of the given point into the bounds.
    :this The current object.
    : :x the current point
    :

: :this = optimbase_stoplog ( this , msg ) Prints the given stopping
rule message if verbose termination is enabled. If verbose termination
is disabled, does nothing.
    :this The current object.
    : :msg the message to print
    :

: :[this , terminate , status] = optimbase_terminate (this ,
previousfopt , currentfopt , previousxopt , currentxopt ) Returns 1 if
the algorithm terminates. Returns 0 if the algorithm must continue. If
the -verbosetermination option is enabled, messages are printed
detailing the termination intermediate steps. The optimbase_terminate
function takes into account the number of iterations, the number of
evaluations of the cost function, the tolerance on x and the tolerance
on f. See below in the section "Termination" for more details.
    :this The current object.
    : :previousfopt the previous value of the cost function
    : :currentfopt the current value of the cost function
    : :previousxopt the previous x optimum
    : :currentxopt the current x optimum
    : :terminate %t if the algorithm must terminate, %f if the algorithm
      must continue
    : :status if terminate = %t, the detailed status of the termination,
    as a string. If terminate = %f, the status is "continue". The
    following status are available :
        :"maxiter" the maximum number of iterations, provided by the -maxiter
          option, is reached.
        : :"maxfuneval" the maximum number of function evaluations, provided
          by the -maxfunevals option, is reached
        : :"tolf" the tolerance on the function value is reached. This status
          is associated with the -tolfunmethod, -tolfunabsolute and
          -tolfunrelative options.
        : :"tolx" the tolerance on x is reached. This status is associated
          with the -tolxmethod, -tolxabsolute and -tolxrelative options.
        :

    :

: :this = optimbase_checkcostfun ( this ) Check that the cost function
is correctly connected. Generate an error if there is one. Takes into
account for the cost function at the initial guess x0 only. Checks
that all values of the index argument are valid. If there are
nonlinear constraints, check that the matrix has the correct shape.
This function requires at least one call to the cost function to make
the necessary checks.
    :this The current object.
    :

: :[ this , isfeasible ] = optimbase_isinbounds ( this , x ) Returns
isfeasible = %t if the given point satisfies bounds constraints.
Returns isfeasible = %f if the given point is not in the bounds.
    :this The current object.
    : :isfeasible a boolean
    :

: :[ this , isfeasible ] = optimbase_isinnonlinconst ( this , x )
Returns isfeasible = %t if the given point satisfies the nonlinear
constraints. Returns isfeasible = %f if the given point does not
satisfy the nonlinear constraints.
    :this The current object.
    : :isfeasible a boolean
    :

:



The cost function
~~~~~~~~~~~~~~~~~

The `-function` option allows to configure the cost function. The cost
function is used, depending on the context, to compute the cost, the
nonlinear inequality positive constraints, the gradient of the
function and the gradient of the nonlinear inequality constraints.

The cost function can also be used to produce outputs and to terminate
an optimization algorithm.

In the following, the variables are


+ `f`: scalar, the objective,
+ `g`: row matrix, the gradient of the objective,
+ `c`: row matrix, the constraints,
+ `gc`: matrix, the gradient of the constraints.


Each calling sequence of the `optimbase_function` function corresponds
to a specific calling sequence of the user-provided cost function.


+ If the -withderivatives is false and there is no nonlinear
  constraint, the calling sequence is

::

    [ this , f , index ] = `optimbase_function`_ ( this , x , index )

  which corresponds to the cost functions

::

    [ f , index ] = costf ( x , index )


+ If the -withderivatives is false and there are nonlinear
  constraints, the calling sequence is

::

    [ this , f , c , index ] = `optimbase_function`_ ( this , x , index )

  which corresponds to the cost functions

::

    [ f , c , index ] = costf ( x , index )


+ If the -withderivatives is true and there is no nonlinear
  constraint, the calling sequence is

::

    [ this , f , g , index ] = `optimbase_function`_ ( this , x , index )

  which corresponds to the cost functions

::

    [ f , g , index ] = costf ( x , index )


+ If the -withderivatives is true and there is are nonlinear
  constraints, the calling sequence is

::

    [ this , f , g , c , gc , index ] = `optimbase_function`_ ( this , x , index )

  which corresponds to the cost functions

::

    [ f , g , c , gc , index ] = costf ( x , index )




Each calling sequence corresponds to a particular class of algorithms,
including for example


+ unconstrained, derivative-free algorithms,
+ nonlinearily constrained, derivative-free algorithms,
+ unconstrained, derivative-based algorithms,
+ nonlinearilyconstrained, derivative-based algorithms,
+ etc...


The current component is designed in order to be able to handle many
situations.

The index input parameter has the following meaning.


+ index = 1: nothing is to be computed, the user may display messages,
  for example
+ index = 2: compute f
+ index = 3: compute g
+ index = 4: compute f and g
+ index = 5: compute c
+ index = 6: compute f and c
+ index = 7: compute f, g, c and gc


The index output parameter has the following meaning.


+ index > 0: everything is fine,
+ index = 0: the optimization must stop,
+ index < 0: one function could not be avaluated.


It might happen that the function requires additionnal arguments to be
evaluated. In this case, we can use the following feature. The
argument `fun` can also be the list `(f,a1,a2,...)`. In this case `f`,
the first element in the list, must be a function and must have the
header:

::

    [ f , index ] = f ( x , index , a1 , a2 , ... )
    [ f , c , index ] = f ( x , index , a1 , a2 , ... )
    [ f , g , index ] = f ( x , index , a1 , a2 , ... )
    [ f , g , c , gc , index ] = f ( x , index , a1 , a2 , ... )

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

:state a 1-by-1 matrix of strings, the current state of the algorithm.
  Available values are "init", "iter", "done".
: :data a data structure with type `T_OPTDATA` containing at least the
following fields
    :x the current optimum
    : :fval the current function value
    : :iteration the current iteration index
    : :funccount the number of function evaluations
    :

: :stop a 1-by-1 matrix of booleans, stop is true if the optimization
  algorithm must be stopped, stop is false if the optimization algorithm
  must continue.
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



Termination
~~~~~~~~~~~

The current component takes into account for several generic
termination criterias. Specialized termination criterias should be
implemented in specialized optimization algorithms, by calling the
optimbase_termination function and adding external criterias, rather
than by modification of this function.

The optimbase_terminate function uses a set of rules to compute if the
termination occurs, which leads to an optimization status which is
equal to one of the following : "continue", "maxiter", "maxfunevals",
"tolf", "tolx". The set of rules is the following.


+ By default, the status is "continue" and the terminate flag is 0.
+ The number of iterations is examined and compared to the -maxiter
  option : if the following condition

::

    iterations >= maxiter

  is true, then the status is set to "maxiter" and terminate is set to
  %t.
+ The number of function evaluations and compared to the -maxfunevals
  option is examined : if the following condition

::

    funevals >= maxfunevals

  is true, then the status is set to "maxfuneval" and terminate is set
  to %t.
+ The tolerance on function value is examined depending on the value
of the -tolfunmethod.
    :"disabled" then the tolerance on f is just skipped.
      : :"enabled" if the following condition

::

        `abs`_(currentfopt) < tolfunrelative * `abs`_(previousfopt) + tolfunabsolute

    is true, then the status is set to "tolf" and terminate is set to %t.
    :
  The relative termination criteria on the function value works well if
  the function value at optimum is near zero. In that case, the function
  value at initial guess fx0 may be used as previousfopt. The absolute
  termination criteria on the function value works if the user has an
  accurate idea of the optimum function value.
+ The tolerance on x is examined depending on the value of the
-tolxmethod.
    :%f then the tolerance on x is just skipped.
      : :%t if the following condition

::

        `norm`_(currentxopt - previousxopt) < tolxrelative * `norm`_(currentxopt) + tolxabsolute

    is true, then the status is set to "tolx" and terminate is set to %t.
    :
  The relative termination criteria on x works well if x at optimum is
  different from zero. In that case, the condition measures the distance
  between two iterates. The absolute termination criteria on x works if
  the user has an accurate idea of the scale of the optimum x. If the
  optimum x is near 0, the relative tolerance will not work and the
  absolute tolerance is more appropriate.




Example : Setting up an optimization
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
    f = 100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
    endfunction
    
    opt = `optimbase_new`_();
    opt = `optimbase_configure`_(opt,"-numberofvariables",2);
    nbvar = `optimbase_cget`_(opt,"-numberofvariables");
    opt = `optimbase_configure`_(opt,"-function",rosenbrock);
    [ opt , f , index ] = `optimbase_function`_ ( opt , [0.0 0.0] , 1 );
    expectedf = 1
    `disp`_(f)
    opt = `optimbase_destroy`_(opt);




Example : Passing extra parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In the following example, we consider a function which has two
additionnal parameters `a` and `b`. In this case, we can configure the
"-function" option as a list, where the first element is the function
and the two extra arguments are located at the end of the list.


::

    function [f, index]=rosenbrock2(x, index, a, b)
    f = a*(x(2)-x(1)^2)^2 + (b-x(1))^2;
    endfunction
    
    opt = `optimbase_new`_();
    opt = `optimbase_configure`_(opt,"-numberofvariables",2);
    nbvar = `optimbase_cget`_(opt,"-numberofvariables");
    a = 100;
    b = 1;
    opt = `optimbase_configure`_(opt,"-function",`list`_(rosenbrock2,a,b));
    [ opt , f , index ] = `optimbase_function`_ ( opt , [0.0 0.0] , 1 );
    expectedf = 1
    `disp`_(f)
    opt = `optimbase_destroy`_(opt);




TODO
~~~~


+ manage equality constraints
+ manage linear constraints
+ manage quadratic objective
+ manage linear objective
+ manage linear inequality constraints
+ manage non linear equality constraints
+ manage linear equality constraints




