


fort
====

Fortran or C user routines call



Calling Sequence
~~~~~~~~~~~~~~~~


::

    // long form 'out' is present
    [y1,...,yk] = fort("ident",x1,px1,"tx1",...,xn,pxn,"txn","out",[ny1,my1],py1,"ty1",...,[nyl,myl],pyl,"tyl")
    // short form : no 'out' parameter
    [y1,....,yk] = fort("ident",x1,...,xn)




Arguments
~~~~~~~~~

:"ident" string.
: :xi real matrix or string
: :pxi, pyi integers
: :txi, tyi character string `"d"`, `"r"`, `"i"` or `"c"`.
:



Description
~~~~~~~~~~~

Interactive call of Fortran (or C) user program from Scilab. The
routine must be previously linked with Scilab. This link may be done:


+ with Scilab " `link`" command (dynamic link) during the Scilab
  session.(see `link`)


There are two forms of calling syntax, a short one and a long one. The
short one will give faster code and an easier calling syntax but one
has to write a small (C or Fortran) interface in order to make the
short form possible. The long one make it possible to call a Fortran
routine (or a C one) whitout modification of the code but the syntax
is more complex and the interpreted code slower.

The meaning of each parameter is described now:

:"ident" is the name of the called subroutine.
: :x1,...,xn are input variables (real matrices or strings) sent to
  the routine,
: :px1,...,pxn are the respective positions of these variables in the
  calling sequence of the routine `"ident"` and
: :tx1,...,txn are their types ( `"r"`, `"i"`, `"d"` and `"c"` for
  real (float) , integer, double precision and strings)
: :"out" is a keyword used to separate input variables from output
  variables. when this key word is present it is assumes that the long
  form will be used and when it is not prsent, the short form is used.
: :[ny1, my1] are the size (number of rows and columns. For 'c'
  arguments, `m1*n1` is the number of charaters ) of output variables
  and
: :py1, ... are the positions of output variables (possibly equal to
  `pxi` ) in the calling sequence of the routine. The `pyi`'s integers
  must be in increasing order.
: :"ty1", ... are the Fortran types of output variables. The `k` first
  output variables are put in `y1,..., yk`.
:

If an output variable coincides with an input variable (i.e. `pyi=pxj`
) one can pass only its position `pyi` . The size and type of `yi` are
then the same as those of `xi`. If an output variable coincides with
an input variable and one specify the dimensions of the output
variable `[myl,nyl]` must follow the compatibility condition `mxk*nxk
>= myl*nyl`.

For example the following program:


::

    subroutine foof(c,a,b,n,m)
      integer n,m
      `double`_ precision a(*),b,c(*)
      do 10 i=1,m*n 
        c(i) = `sin`_(a(i))+b
      10 continue
    end



::

    `link`_("foof"+`getdynlibext`_(),"foof")
    a=[1,2,3;4,5,6];b= %pi;
    [m,n]=`size`_(a);
    // Inputs:
    // a is in position 2 and double
    // b                3     double
    // n                4     integer
    // m                5     integer
    // Outputs:
    // c is in position 1 and double with size [m,n]
    c=fort("foof",a,2,"d",b,3,"d",n,4,"i",m,5,"i","out",[m,n],1,"d");


returns the matrix `c=2*a+b`.

The same example coded in C:


::

    void fooc(c,a,b,m,n) 
    `double`_ a[],*b,c[];
    `int`_ *m,*n;
    { 
       `double`_ sin();
       `int`_ i;
       for ( i =0 ; i < (*m)*(*n) ; i++) 
           c[i] = `sin`_(a[i]) + *b; 
    }



::

    `link`_("fooc"+`getdynlibext`_(),"fooc","C") // note the third argument 
    a=[1,2,3;4,5,6];b= %pi;
    [m,n]=`size`_(a);
    c=fort("fooc",a,2,"d",b,3,"d",m,4,"i",n,5,"i","out",[m,n],1,"d");




See Also
~~~~~~~~


+ `call`_ Fortran or C user routines call
+ `link`_ dynamic linker
+ `c_link`_ check if symbol loaded with dynamic link
+ `intersci`_ Scilab tool to interface C or Fortran functions with
  scilab. Deprecated: Please use SWIG
+ `addinter`_ new functions interface dynamic link at run time.
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory


.. _call: call.html
.. _intersci: intersci.html
.. _addinter: addinter.html
.. _link: link.html
.. _api_scilab: api_scilab.html
.. _c_link: c_link.html


