====
"optim"
====

Scilab Function Last update : 17/05/2005
**optim** - non-linear optimization routine



Calling Sequence
~~~~~~~~~~~~~~~~

[f,xopt]=optim(costf,x0)
[f [,xopt [,gradopt [,work]]]]=optim(costf [,<contr>],x0 [,algo] [,df0
  [,mem]] [,work] [,<stop>] [,<params>] [,imp=iflag])




Parameters
~~~~~~~~~~


+ **costf** : external, i.e Scilab function list or string ( **costf**
  is the cost function: see below its calling sequence (Scilab or
  Fortran)). See also external for details about external functions.
+ **x0** : real vector (initial value of variable to be minimized).
+ **f** : value of optimal cost ( **f=costf(xopt)** )
+ **xopt** : best value of **x** found.
+ **<contr>** : keyword representing the following sequence of
  arguments: **'b',binf,bsup** with **binf** and **bsup** are real
  vectors with same dimension as **x0** . **binf** and **bsup** are
  lower and upper bounds on **x** .
+ **algo** : Character string used to sprecify the algorithm to use.
  The possible values are **'qn'** for quasi-Newton (default) or
  **'gc'** for conjugate gradient or **'nd'** for non-differentiable.
  Note that **'nd'** does not accept bounds on **x** .
+ **df0** : real scalar. Guessed decreasing of **f** at first
  iteration. ( **df0=1** is the default value).
+ **mem : ** integer, number of variables used to approximate the
  Hessian, ( **algo='gc' or 'nd'** ). Default value is around 6.
+ **<stop>** : keyword representing the sequence of optional
  parameters controlling the convergence of the algorithm. **'ar',nap
  [,iter [,epsg [,epsf [,epsx]]]]**

    + **"ar" ** : reserved keyword for stopping rule selection defined as
      follows:
    + **nap** : maximum number of calls to **costf** allowed (default is
      100).
    + **iter** : maximum number of iterations allowed (default is 100).
    + **epsg** : threshold on gradient norm.
    + **epsf** : threshold controlling decreasing of **f**
    + **epsx** : threshold controlling variation of **x** . This vector
      (possibly matrix) of same size as **x0** can be used to scale **x** .

+ **<params> ** : keyword representing the sequence of arguments:
  **'ti', valti ,'td', valtd** which can be used to pass argument to an
  external written in C or Fortran (see below).
+ **"imp=iflag" ** : named argument used to set the trace mode.
  **iflag=0** nothing (execpt errors) is reported, **iflag=1** initial
  and final reports, **iflag=2** adds a report per iteration,
  **iflag>2** add reports on linear search. Warning, most of these
  reports are written on the Scilab standard output.
+ **gradopt** : gradient of **costf** at **xopt**
+ **work** : working array for hot restart for quasi-Newton method.
  This array is automatically initialized by **optim** when **optim** is
  invoked. It can be used as input parameter to speed-up the
  calculations.




Description
~~~~~~~~~~~
Non-linear optimization routine for programs without constraints or
with bound constraints:

::

    
          
          min costf(x) w.r.t x.
          
        


**costf** is an "external" i.e a Scilab function, a list or a string
giving the name of a C or Fortran routine (see "external"). This
external must return the value **f** of the cost function at the point
**x** and the gradient **g** of the cost function at the point **x** .

**- Scilab function case** If **costf** is a Scilab function, the
  calling sequence for **costf** must be: **[f,g,ind]=costf(x,ind)**
  Here, **costf** is a function which returns **f** , value (real
  number) of cost function at **x** , and **g** , gradient vector of
  cost function at **x** . The variable **ind** is described below.
**- List case** If **costf** is a list, it should be of the form:
  **list(real_costf, arg1,...,argn)** with **real_costf** a Scilab
  function with calling sequence : **[f,g,ind]=costf(x,ind,arg1,...
  argn)** . The **x** , **f** , **g** , **ind** arguments have the same
  meaning that above. **argi** arguments can be used to pass function
  parameters.
**- String case** If **costf** is a character string, it refers to the
name of a C or Fortran routine which must be linked to Scilab
    *** Fortran case** The generic calling sequence for the Fortran
    subroutine is: **subroutine costf(ind,n,x,f,g,ti,tr,td)** with the
    following declarations:

::

        
        	      
        	      integer ind,n ti(*)
        	      double precision x(n),f,g(n),td(*)
        	      real tr(*)
        	      
        	    

    The argument **ind** is described below.The Fortran subroutine
      **costf** must return **f** and the vector **g** , given **x, ind, n,
      ti, tr,td** . **ti,tr,td** can be used to initialize parameters. In
      the calling sequence of **optim** , the keyword **<params>'** can be
      replaced by **'ti', valti ,'td', valtd** . Then, the routine **costf**
      is evaluated with **ti=valti** and **td=valtd** whatever the value of
      **ind** . Thus, the Scilab variables **valti** and **valtd** (integer
      vector and real vector) are sent to the routine **costf** .
    *** C case** The generic calling sequence for the C procedure is:
      **void costf(int *ind, int *n, double *x, double *f, double *g, int
      *ti, float *tr, double *td)** with the following declarations: The
      argument **ind** is described below. The C procedure **costf** must
      return **f** and the vector **g** , given **x, ind, n, ti, tr, td** .
      **ti,tr,td** can be used to initialize parameters. In the calling
      sequence of **optim** , the string **'in'** can be replaced by **'ti',
      valti ,'td', valtd** . Then, the procedure **costf** is evaluated with
      **ti=valti** and **td=valtd** whatever the value of **ind** . Thus,
      the Scilab variables **valti** and **valtd** (integer vector and real
      vector) are sent to the procedure **costf** .




If **ind=2** (resp. **3, 4** ), **costf** must provide **f** (resp.
**g, f** and **g** ).

If **ind=1** nothing is computed (used for display purposes only).

On output, **ind<0** means that **f** cannot be evaluated at **x** and
**ind=0** interrupts the optimization.



Examples
~~~~~~~~


::

    
        
        // External function written in Scilab
        xref=[1;2;3];x0=[1;-1;1]
        deff('[f,g,ind]=cost(x,ind)','f=0.5*norm(x-xref)^2,g=x-xref');
        [f,xopt]=optim(cost,x0)      //Simplest call
        [f,xopt,gopt]=optim(cost,x0,'gc')  // By conjugate gradient
        [f,xopt,gopt]=optim(cost,x0,'nd')  //Seen as non differentiable
        [f,xopt,gopt]=optim(cost,'b',[-1;0;2],[0.5;1;4],x0) //  Bounds on x
        [f,xopt,gopt]=optim(cost,'b',[-1;0;2],[0.5;1;4],x0,'gc') //  Bounds on x
        [f,xopt,gopt]=optim(cost,'b',[-1;0;2],[0.5;1;4],x0,'gc','ar',3)
    
        // External function written in C (C compiler required)
        // write down the C code (Rosenbrock problem)
        C=['#include <math.h>'
        'double sq(double x)'
        '{ return x*x;}'
        'void rosenc(int *ind, int *n, double *x, double *f, double *g, '
        '                                int *ti, float *tr, double *td)'
        '{'
        '  double p;'
        '  int i;'
        '  p=td[0];'
        '  if (*ind==2||*ind==4) {'
        '    *f=1.0;'
        '    for (i=1;i<*n;i++)'
        '      *f+=p*sq(x[i]-sq(x[i-1]))+sq(1.0-x[i]);'
        '  }'
        '  if (*ind==3||*ind==4) {'
        '    g[0]=-4.0*p*(x[1]-sq(x[0]))*x[0];'
        '    for (i=1;i<*n-1;i++)'
        '      g[i]=2.0*p*(x[i]-sq(x[i-1]))-4.0*p*(x[i+1]-sq(x[i]))*x[i]-2.0*(1.0-x[i]);'
        '    g[*n-1]=2.0*p*(x[*n-1]-sq(x[*n-2]))-2.0*(1.0-x[*n-1]);'
        '  }'
        '}'];
        mputl(C,TMPDIR+'/rosenc.c')
        // compile the C code
        l=ilib_for_link('rosenc','rosenc.o',[],'c',TMPDIR+'/Makefile');
        // incremental linking
        link(l,'rosenc','c')
        //solve the problem
        x0=[40;10;50];
        p=100;
        [f,xo,go]=optim('rosenc',x0,'td',p)
    
        // External function written in Fortran (Fortran compiler required)
        // write down the Fortran  code (Rosenbrock problem)
     F=[ '      subroutine rosenf(ind, n, x, f, g, ti, tr, td)'
         '      integer ind,n,ti(*)'
         '      double precision x(n),f,g(n),td(*)'
         '      real tr(*)'
         'c'
         '      double precision y,p'
         '      p=td(1)'
         '      if (ind.eq.2.or.ind.eq.4) then'
         '        f=1.0d0'
         '        do i=2,n'
         '          f=f+p*(x(i)-x(i-1)**2)**2+(1.0d0-x(i))**2'
         '        enddo'
         '      endif'
         '      if (ind.eq.3.or.ind.eq.4) then'
         '        g(1)=-4.0d0*p*(x(2)-x(1)**2)*x(1)'
         '        if(n.gt.2) then'
         '          do i=2,n-1'
         '            g(i)=2.0d0*p*(x(i)-x(i-1)**2)-4.0d0*p*(x(i+1)-x(i)**2)*x(i)'
         '     &           -2.0d0*(1.0d0-x(i))'
         '          enddo'
         '        endif'
         '        g(n)=2.0d0*p*(x(n)-x(n-1)**2)-2.0d0*(1.0d0-x(n))'
         '      endif'
         '      return'
         '      end'];
    
        mputl(F,TMPDIR+'/rosenf.f')
        // compile the Fortran code
        l=ilib_for_link('rosenf','rosenf.o',[],'f',TMPDIR+'/Makefile');
        // incremental linking
        link(l,'rosenf','f')
        //solve the problem
        x0=[40;10;50];
        p=100;
        [f,xo,go]=optim('rosenf',x0,'td',p)
    
     
        
      




See Also
~~~~~~~~

` **external** `_,` **quapro** `_,` **linpro** `_,` **datafit** `_,`
**leastsq** `_,` **numdiff** `_,` **derivative** `_,` **NDcost** `_,

.. _
      : ://./nonlinear/linpro.htm
.. _
      : ://./nonlinear/quapro.htm
.. _
      : ://./nonlinear/numdiff.htm
.. _
      : ://./nonlinear/NDcost.htm
.. _
      : ://./nonlinear/leastsq.htm
.. _
      : ://./nonlinear/derivative.htm
.. _
      : ://./nonlinear/../programming/external.htm
.. _
      : ://./nonlinear/datafit.htm


