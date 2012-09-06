


functions
=========

Scilab procedures and Scilab objects



Description
~~~~~~~~~~~

Functions are Scilab procedures ("macro", "function" and "procedure"
have the save meaning).



Function definition
~~~~~~~~~~~~~~~~~~~

Usually, they are defined in files with an editor and loaded into
Scilab using the `exec`_ function or through a library (see `lib`_ or
`genlib`_). But They can also be defined on-line (see `deff`_ or
`function`_. A function is defined by two components:


+ a "syntax definition" part as follows:

::

    function [y1, ..., yn]=foo(x1, ...,xm)
    function [y1, ..., yn, varargout]=foo(x1, ...,xm,varargin)


+ a sequence of scilab instructions.


The "syntax definition" line gives the "full" calling syntax of this
function. The `yi` are output variables calculated as functions of
input variables `xi` and variables existing in Scilab when the
function is executed.



Calling function
~~~~~~~~~~~~~~~~


+ Usually function calling syntax is `[y1,...,yn]=foo(x1,...,xm)`.
  Shorter input or output argument list than definition ones may be
  used. In such cases, only the first variables from the left are used
  or set. The `argn`_ function may be used to get the actual number of
  calling arguments.
+ It is possible to define function with indeterminate number of input
  or output maximum number of arguments. This can be done using the
  `varargin`_ and `varargout`_ keywords. See the given links for
  details.
+ It is also possible to use "named argument" to specify input
  arguments: suppose function `fun1` defined as `function
  y1=fun1(x1,x2,x3)` then it can be called with a syntax like
  `y=fun1(x1=33,x3=[1 2 3])` within `fun1` x2 will be undefined, it can
  also be called with a syntax like `y=fun1(x1=33,y='foo')`. In such a
  case the `y` variable will be available in the context of the function
  `fun1`. Note that the maximum number of argument must be less or equal
  to the number of formal input argument used in the function syntax
  part. It is possible to check for defined variables with the `exists`_
  function.
+ When a function has no left hand side argument and is called only
  with character string arguments, the calling syntax may be simplified:

::

    fun('a','toto','a string')

  is equivalent to:

::

    fun a toto 'a string'






Miscellaneous
~~~~~~~~~~~~~

Functions are Scilab objects (with type numbers 13 or 11). They and
can be manipulated (built, saved, loaded, passed as arguments,..) as
other variable types.

Collections of functions can be collected in libraries. Functions
which begin with `%` sign (e.g. `%foo`) are often used to overload
(see `overloading`_ ) operations or functions for new data type.



Examples
~~~~~~~~


::

    //inline definition (see function)
    function [x, y]=myfct(a, b)
      x=a+b
      y=a-b
    endfunction
    
    [x,y]=myfct(3,2)
    
    //inline definition (see deff)
    `deff`_('[x,y]=myfct(a,b)',['x=a+b';
                             'y=a-b'])
    // definition in an ascii file (see exec)
    `exec`_ SCI/modules/elementary_functions/macros/asinh.sci;




See Also
~~~~~~~~


+ `function`_ opens a function definition
+ `deff`_ on-line definition of function
+ `exec`_ script file execution
+ `comp`_ scilab function compilation
+ `lib`_ library definition
+ `getd`_ getting all functions defined in a directory
+ `genlib`_ build library from functions in given directory
+ `exists`_ checks variable existence
+ `varargin`_ variable numbers of arguments in an input argument list
+ `varargout`_ variable numbers of arguments in an output argument
  list


.. _exec: exec.html
.. _getd: getd.html
.. _function: function.html
.. _exists: exists.html
.. _comp: comp.html
.. _varargin: varargin.html
.. _varargout: varargout.html
.. _deff: deff.html
.. _argn: argn.html
.. _overloading: overloading.html
.. _lib: lib.html
.. _genlib: genlib.html


