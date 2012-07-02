Scilab Function

Last update : 25/05/2005

**call** - Fortran or C user routines call

Calling Sequence
~~~~~~~~~~~~~~~~

``// long form 'out' is present``

``[y1,...,yk]=call("ident",x1,px1,"tx1",...,xn,pxn,"txn",  ``

``       "out",[ny1,my1],py1,"ty1",...,[nyl,myl],pyl,"tyl")  ``

``// short form : no 'out' parameter``

``[y1,....,yk]=call("ident",x1,...,xn)     ``

Parameters
~~~~~~~~~~

-  ``           "ident"           ``: string.
-  ``           xi         ``: real matrix or string
-  ``           pxi, pyi         ``: integers
-  ``           txi, tyi         ``: character string
   ``           "d"         ``, ``           "r"         ``,
   ``           "i"         `` or ``           "c"         ``.

Description
~~~~~~~~~~~

Interactive call of Fortran (or C) user program from Scilab. The routine
must be previously linked with Scilab. This link may be done:

**-**with Scilab "``           link         ``" command (incremental
"soft" linking) during the Scilab session.(see
``           link         ``)

**-**by "hard" re-linking. Writing the routine call within Scilab
routine ``           default/Ex-fort.f         ``, adding the entry
point in the file ``           default/Flist         `` and then
re\_linking Scilab with the command
``           make bin/scilex         `` in main Scilab directory.

There are two forms of calling syntax, a short one and a long one. The
short one will give faster code and an easier calling syntax but one has
to write a small (C or Fortran) interface in order to make the short
form possible. The long one make it possible to call a Fortran routine
(or a C one) whitout modification of the code but the syntax is more
complex and the interpreted code slower.

The meaning of each parameter is described now:

**"ident"**is the name of the called subroutine.

**x1,...,xn**are input variables (real matrices or strings) sent to the
routine,

**px1,...,pxn**are the respective positions of these variables in the
calling sequence of the routine ``           "ident"         `` and

**tx1,...,txn**are their types (``           "r"         ``,
``           "i"         ``, ``           "d"         `` and
``           "c"         `` for real (float) , integer, double precision
and strings)

**"out"**is a keyword used to separate input variables from output
variables. when this key word is present it is assumes that the long
form will be used and when it is not prsent, the short form is used.

**[ny1, my1]**are the size (``           #         `` of rows and
columns. For 'c' arguments,``           m1*n1         `` is the number
of charaters ) of output variables and

**py1, ...**are the positions of output variables (possibly equal to
``           pxi         `` ) in the calling sequence of the routine.
The ``           pyi         ``'s integers must be in increasing order.

**"ty1", ...**are the Fortran types of output variables. The
``           k         `` first output variables are put in
``           y1,..., yk         ``.

If an output variable coincides with an input variable (i.e.
``         pyi=pxj       `` ) one can pass only its position
``         pyi       `` . The size and type of ``         yi       ``
are then the same as those of ``         xi       ``. If an output
variable coincides with an input variable and one specify the dimensions
of the output variable ``         [myl,nyl]       `` must follow the
compatibility condition ``         mxk*nxk >= myl*nyl       ``.

In the case of short syntax ,
``         [y1,....,yk]=call("ident",x1,...,xn)       ``, the input
parameters ``         xi       ``'s and the name
``         "ident"       `` are sent to the interface routine
``         Ex-fort       ``. This interface routine is then very similar
to an interface (see the source code in the directory
``         SCIDIR/default/Ex-fort.f       ``).

Examples
~~~~~~~~

::

        
        //Example 1 with  a simple C code
        f1=['#include <math.h>'
            'void fooc(c,a,b,m,n)'
             'double a[],*b,c[];'
             'int *m,*n;'
             '{'
             '   int i;'
             '   for ( i =0 ; i < (*m)*(*n) ; i++) '
             '     c[i] = sin(a[i]) + *b; '
             '}'];

        mputl(f1,'fooc.c')

        //creating the shared library (a gateway, a Makefile and a loader are 
        //generated. 

        ilib_for_link('fooc','fooc.o',[],"c") 

        // load the shared library 

        exec loader.sce 

        //using the new primitive
        a=[1,2,3;4,5,6];b= %pi;
        [m,n]=size(a);

        // Inputs:
        // a is in position 2 and double
        // b                3     double
        // n                4     integer
        // m                5     integer
        // Outputs:
        // c is in position 1 and double with size [m,n]
        c=call("fooc",a,2,"d",b,3,"d",m,4,"i",n,5,"i","out",[m,n],1,"d");

        //Example 2 with  a simple Fortran code
        f1=['      subroutine foof(c,a,b,n,m)'
            '      integer n,m'
            '      double precision a(*),b,c(*)'
            '      do 10 i=1,m*n '
            '        c(i) = sin(a(i))+b'
            '   10 continue'
            '      end'];
        mputl(f1,'foof.f')

        //creating the shared library (a gateway, a Makefile and a loader are 
        //generated. 

        ilib_for_link('foof','foof.o',[],"f") 

        // load the shared library 

        exec loader.sce 

        //using the new primitive
        a=[1,2,3;4,5,6];b= %pi;
        [m,n]=size(a);
        c=call("foof",a,2,"d",b,3,"d",m,4,"i",n,5,"i","out",[m,n],1,"d");


     
      

See Also
~~~~~~~~

```           link         `` <../utilities/link.htm>`_,
```           c_link         `` <../utilities/c_link.htm>`_,
```           intersci         `` <../utilities/intersci.htm>`_,
```           addinter         `` <../functions/addinter.htm>`_,
