Scilab Function

Last update : 20/12/2004

**feval** - multiple evaluation

Calling Sequence
~~~~~~~~~~~~~~~~

``[z]=feval(x,y,f)  ``

``[z]=feval(x,f)  ``

Parameters
~~~~~~~~~~

-  ``           x,y         ``: two vectors
-  ``           f         ``: function or character string (for Fortran
   or C call)

Description
~~~~~~~~~~~

Multiple evaluation of a function for one or two arguments of vector
type :

**z=feval(x,f)**returns the vector ``           z         `` defined by
``           z(i)=f(x(i))         ``

**z=feval(x,y,f)**returns the matrix ``           z         `` such as
``           z(i,j)=f(x(i),y(j))         ``

``         f       `` is an external (function or routine) accepting on
one or two arguments which are supposed to be real. The result returned
by ``         f       `` can be real or complex. In case of a Fortran
call, the function ``          'f'        `` must be defined in the
subroutine ``         ffeval.f       `` (in directory
``         SCIDIR/routines/default       ``)

Examples
~~~~~~~~

::


    deff('[z]=f(x,y)','z=x^2+y^2');
    feval(1:10,1:5,f)
    deff('[z]=f(x,y)','z=x+%i*y');
    feval(1:10,1:5,f)
    feval(1:10,1:5,'parab')   //See ffeval.f file
    feval(1:10,'parab')
    // For dynamic link (see example ftest in ffeval.f)
    // you can use the link command (the parameters depend on the machine):
    // unix('make ftest.o');link('ftest.o','ftest); feval(1:10,1:5,'ftest') 
     
      

See Also
~~~~~~~~

```           evstr         `` <evstr.htm>`_,
```           horner         `` <../polynomials/horner.htm>`_,
```           execstr         `` <execstr.htm>`_,
```           external         `` <external.htm>`_,
```           link         `` <../utilities/link.htm>`_,
