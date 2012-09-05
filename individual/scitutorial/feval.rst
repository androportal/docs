


feval
=====

multiple evaluation



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [z]=feval(x,y,f)
    [z]=feval(x,f)




Arguments
~~~~~~~~~

:x,y two vectors
: :f a function or a character string (for Fortran or C call)
:



Description
~~~~~~~~~~~

Multiple evaluation of a function for one or two arguments of vector
type :

:z=feval(x,f) returns the vector `z` defined by `z(i)=f(x(i))`
: :z=feval(x,y,f) returns the matrix `z` such as `z(i,j)=f(x(i),y(j))`
:

`f` is an `external`_ (function or routine) accepting on one or two
arguments which are supposed to be real. The result returned by `f`
can be real or complex. In case of a Fortran call, the function `f`
must be defined in the subroutine `fevaltable.c` (in directory
`SCI/modules/differential_equations/src/c`).



Examples
~~~~~~~~


::

    `deff`_('[z]=f(x,y)','z=x^2+y^2');
    feval(1:10,1:5,f)
    `deff`_('[z]=f(x,y)','z=x+%i*y');
    feval(1:10,1:5,f)
    feval(1:10,1:5,'parab')   //See ffeval.f file
    feval(1:10,'parab')
    // For dynamic link (see example ftest in ffeval.f)
    // you can use the link command (the parameters depend on the machine):
    // unix('make ftest.o');link('ftest.o','ftest'); feval(1:10,1:5,'ftest')




See Also
~~~~~~~~


+ `evstr`_ evaluation of expressions
+ `horner`_ polynomial/rational evaluation
+ `execstr`_ execute Scilab code in strings
+ `external`_ Scilab Object, external function or routine
+ `link`_ dynamic linker


.. _execstr: execstr.html
.. _evstr: evstr.html
.. _horner: horner.html
.. _external: external.html
.. _link: link.html


