====
"ode"
====

Scilab Function Last update : 01/04/2005
**ode** - ordinary differential equation solver



Calling Sequence
~~~~~~~~~~~~~~~~

y=ode(y0,t0,t,f)
[y,w,iw]=ode([type],y0,t0,t [,rtol [,atol]],f [,jac] [,w,iw])
[y,rd,w,iw]=ode("root",y0,t0,t [,rtol [,atol]],f [,jac],ng,g [,w,iw])
y=ode("discrete",y0,k0,kvect,f)




Parameters
~~~~~~~~~~


+ **y0** : real vector or matrix (initial conditions).
+ **t0** : real scalar (initial time).
+ **t** : real vector (times at which the solution is computed).
+ **f** : external (function or character string or list).
+ **type** : one of the following character string: **"adams" "stiff"
  "rk" "rkf" "fix" "discrete" "roots"**
+ **rtol,atol** : real constants or real vectors of the same size as
  **y** .
+ **jac** : external (function or character string or list).
+ **w,iw** : real vectors.
+ **ng** : integer.
+ **g** : external (function or character string or list).
+ **k0** : integer (initial time). kvect : integer vector.




Description
~~~~~~~~~~~
**ode** is the standard function for solving explicit ODE systems
defined by: dy/dt=f(t,y) , y(t0)=y0. It is an interface to various
solvers, in particular to ODEPACK. The type of problem solved and the
method used depend on the value of the first optional argument
**type** which can be one of the following strings:
**<not given>:** **lsoda** solver of package ODEPACK is called by
  default. It automatically selects between nonstiff predictor-corrector
  Adams method and stiff Backward Differentiation Formula (BDF) method.
  It uses nonstiff method initially and dynamically monitors data in
  order to decide which method to use.
**"adams":**This is for nonstiff problems. **lsode** solver of package
  ODEPACK is called and it uses the Adams method.
**"stiff":**This is for stiff problems. **lsode** solver of package
  ODEPACK is called and it uses the BDF method.
**"rk":**Adaptive Runge-Kutta of order 4 (RK4) method.
**"rkf":**The Shampine and Watts program based on Fehlberg's Runge-
  Kutta pair of order 4 and 5 (RKF45) method is used. This is for non-
  stiff and mildly stiff problems when derivative evaluations are
  inexpensive. This method should generally not be used when the user is
  demanding high accuracy.
**"fix":**Same solver as "rkf", but the user interface is very simple,
  i.e. only **rtol** and **atol** parameters can be passed to the
  solver. This is the simplest method to try.
**"root":**ODE solver with rootfinding capabilities. The **lsodar**
  solver of package ODEPACK is used. It is a variant of the **lsoda**
  solver where it finds the roots of a given vector function. See help
  on ode_root for more details.
**"discrete":**Discrete time simulation. See help on ode_discrete for
  more details.


In this help we only describe the use of **ode** for standard explicit
ODE systems.

**** The simplest call of **ode** is: **y=ode(y0,t0,t,f)** where
**y0** is the vector of initial conditions, **t0** is the initial
time, **t** is the vector of times at which the solution **y** is
computed and **y** is matrix of solution vectors
**y=[y(t(1)),y(t(2)),...]** . The input argument **f** defines the RHS
of the first order differential equation: dy/dt=f(t,y). It is an
external i.e. a function with specified syntax, or the name of a
Fortran subroutine or a C function (character string) with specified
calling sequence or a list:
    **** If **f** is a Scilab function, its syntax must be **ydot =
      f(t,y)** , where **t** is a real scalar (time) and **y** a real vector
      (state) and **ydot** a real vector (dy/dt)
    **** If **f** is a character string, it refers to the name of a
      Fortran subroutine or a C function, i.e. if **ode(y0,t0,t,"fex")** is
      the command, then the subroutine **fex** is called. The Fortran
      routine must have the following calling sequence: **fex(n,t,y,ydot)**
      , with n an integer, t a double precision scalar, y and ydot double
      precision vectors. The C function must have the following prototype:
      **fex(int *n,double *t,double *y,double *ydot)** **t** is the time,
      **y** the state and **ydot** the state derivative (dy/dt)This external
      can be build in a OS independant way using ` **ilib_for_link** `_ and
      dynamically linked to Scilab by the ` **link** `_ function.
    **** The **f** argument can also be a list with the following
      structure: **lst=list(realf,u1,u2,...un)** where **realf** is a Scilab
      function with syntax: **ydot = f(t,y,u1,u2,...,un)** This syntax
      allows to use parameters as the arguments of **realf** .

The function **f** can return a **p x q** matrix instead of a vector.
  With this matrix notation, we solve the **n=p+q** ODE's system
  **dY/dt=F(t,Y)** where **Y** is a **p x q** matrix. Then initial
  conditions, **Y0** , must also be a **p x q** matrix and the result of
  **ode** is the **p x q(T+1)** matrix **[Y(t_0),Y(t_1),...,Y(t_T)]** .
**** Optional input parameters can be given for the error of the
  solution: **rtol** and **atol** are threshold for relative and
  absolute estimated errors. The estimated error on **y(i)** is:
  **rtol(i)*abs(y(i))+atol(i)** and integration is carried out as far as
  this error is small for all components of the state. If **rtol**
  and/or **atol** is a constant **rtol(i)** and/or **atol(i)** are set
  to this constant value. Default values for **rtol** and **atol** are
  respectively **rtol=1.d-5** and **atol=1.d-7** for most solvers and
  **rtol=1.d-3** and **atol=1.d-4** for **"rfk"** and **"fix"** .
**** For stiff problems, it is better to give the Jacobian of the RHS
function as the optional argument **jac** . It is an external i.e. a
function with specified syntax, or the name of a Fortran subroutine or
a C function (character string) with specified calling sequence or a
list. If **jac** is a function the syntax should be **J=jac(t,y)**
where **t** is a real scalar (time) and **y** a real vector (state).
The result matrix **J** must evaluate to df/dx i.e. **J(k,i) =
dfk/dxi** with **fk** = kth component of f. If **jac** is a character
string it refers to the name of a Fortran subroutine or a C function,
with the following calling sequence: Fortran case:

::

    
    	      subroutine fex(n,t,y,ml,mu,J,nrpd) 
    	      integer n,ml,mu,nrpd
    	      double precision t,y(*),J(*)
    	      

C case:

::

    
    	      void fex(int *n,double *t,double *y,int *ml,int *mu,double *J,int *nrpd,)
    	      

**jac(n,t,y,ml,mu,J,nrpd)** . In most cases you have not to refer
  **ml** , **mu** and **nrpd** . If **jac** is a list the same
  conventions as for **f** apply.
**** Optional arguments **w** and **iw** are vectors for storing
  information returned by the integration routine (see `
  **ode_optional_output** `_ for details). When these vectors are
  provided in RHS of **ode** the integration re-starts with the same
  parameters as in its previous stop.
**** More options can be given to ODEPACK solvers by using
  **%ODEOPTIONS** variable. See ` **odeoptions** `_.




Examples
~~~~~~~~


::

    
        
        // ---------- Simple one dimension ODE (Scilab function external)
        // dy/dt=y^2-y sin(t)+cos(t), y(0)=0
        function ydot=f(t,y),ydot=y^2-y*sin(t)+cos(t),endfunction
        y0=0;t0=0;t=0:0.1:%pi;
        y=ode(y0,t0,t,f)
        plot(t,y)
    
        // ---------- Simple one dimension ODE (C coded external)
        ccode=['#include <math.h>'
    	   'void myode(int *n,double *t,double *y,double *ydot)'
    	   '{'
    	   '  ydot[0]=y[0]*y[0]-y[0]*sin(*t)+cos(*t);'
    	   '}']
        mputl(ccode,TMPDIR+'/myode.c') //create the C file
        ilib_for_link('myode','myode.o',[],'c',TMPDIR+'/Makefile',TMPDIR+'/loader.sce');//compile
        exec(TMPDIR+'/loader.sce') //incremental linking
        y0=0;t0=0;t=0:0.1:%pi;
        y=ode(y0,t0,t,'myode');
    	
        // ---------- Simulation of dx/dt = A x(t) + B u(t) with u(t)=sin(omega*t),
        // x0=[1;0]
        // solution x(t) desired at t=0.1, 0.2, 0.5 ,1.
        // A and u function are passed to RHS function in a list. 
        // B and omega are passed as global variables
        function xdot=linear(t,x,A,u),xdot=A*x+B*u(t),endfunction
        function ut=u(t),ut=sin(omega*t),endfunction
        A=[1 1;0 2];B=[1;1];omega=5;
        ode([1;0],0,[0.1,0.2,0.5,1],list(linear,A,u))
    
        // ---------- Matrix notation Integration of the Riccati differential equation
        // Xdot=A'*X + X*A - X'*B*X + C , X(0)=Identity
        // Solution at t=[1,2] 
        function Xdot=ric(t,X),Xdot=A'*X+X*A-X'*B*X+C,endfunction  
        A=[1,1;0,2]; B=[1,0;0,1]; C=[1,0;0,1];
        t0=0;t=0:0.1:%pi;
        X=ode(eye(A),0,t,ric)
        //
        // ---------- Matrix notation, Computation of exp(A)
        A=[1,1;0,2];
        function xdot=f(t,x),xdot=A*x;,endfunction 
        ode(eye(A),0,1,f)
        ode("adams",eye(A),0,1,f)
    
        // ---------- Matrix notation, Computation of exp(A) with stiff matrix, Jacobian given
        A=[10,0;0,-1];
        function xdot=f(t,x),xdot=A*x,endfunction 
        function J=Jacobian(t,y),J=A,endfunction 
        ode("stiff",[0;1],0,1,f,Jacobian)
        
      




See Also
~~~~~~~~

` **ode_discrete** `_,` **ode_root** `_,` **dassl** `_,` **impl** `_,`
**odedc** `_,` **odeoptions** `_,` **csim** `_,` **ltitr** `_,`
**rtitr** `_,



Authors
~~~~~~~

**Alan C. Hindmarsh**, mathematics and statistics division, l-316
  livermore, ca 94550.19




Bibliography
~~~~~~~~~~~~

Alan C. Hindmarsh, lsode and lsodi, two new initial value ordinary
differential equation solvers, acm-signum newsletter, vol. 15, no. 4
(1980), pp. 10-11.



Used Function
~~~~~~~~~~~~~

The associated routines can be found in routines/integ directory :

lsode.f lsoda.f lsodar.f

.. _
      : ://./nonlinear/../control/csim.htm
.. _
      : ://./nonlinear/odedc.htm
.. _
              : ://./nonlinear/../utilities/ilib_for_link.htm
.. _
      : ://./nonlinear/impl.htm
.. _
      : ://./nonlinear/../control/ltitr.htm
.. _
              : ://./nonlinear/../utilities/link.htm
.. _
      : ://./nonlinear/ode_discrete.htm
.. _
        : ://./nonlinear/ode_optional_output.htm
.. _
      : ://./nonlinear/odeoptions.htm
.. _
      : ://./nonlinear/ode_root.htm
.. _
      : ://./nonlinear/dassl.htm
.. _
      : ://./nonlinear/../control/rtitr.htm


