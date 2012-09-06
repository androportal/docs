


varargin
========

variable numbers of arguments in an input argument list



Description
~~~~~~~~~~~

A function whose last input argument is `varargin` can be called with
more input arguments than indicated in the input argument list. The
calling arguments passed form `varargin` keyword onwards may then be
retrieved within the function in a list named `varargin`.

Suppose that `varargin` keyword is the `n` th argument of the formal
input argument list, then if the function is called with less than
`n-1` input arguments the `varargin` list is not defined, if the
function is called with `n-1` arguments then `varargin` list is an
empty list.

`y= function ex(varargin)` may be called with any number of input
arguments. Within function `ex` input arguments may be retrieved in
`varargin(i)` , `i=1:length(varargin)`

If it is not the last input argument of a function, `varargin` is a
normal input argument name with no special meaning.

The total number of actual input arguments is given by `argn(2)`_.



Remark
~~~~~~

Named argument syntax like `foo(...,key=value)` is incompatible with
the use of varargin. The reason is that the names (i.e. keys)
associated with values are not stored in the varargin list. Consider
for instance:

function foo(varargin),disp([varargin(1),varargin(2)]),endfunction

foo(a=1,b=2)

Scilab answers: 1. 2.

foo(b=1,a=2)

Scilab answers: 1. 2.

Result is the same, but the arguments were inverted.



Examples
~~~~~~~~


::

    `deff`_('exampl(a,varargin)',['[lhs,rhs]=argn(0)'
                              'if rhs>=1 then disp(varargin),end'])
    exampl(1)
    exampl()
    exampl(1,2,3)
    l=`list`_('a',%s,%t);
    exampl(1,l(2:3))




See Also
~~~~~~~~


+ `function`_ opens a function definition
+ `varargout`_ variable numbers of arguments in an output argument
  list
+ `list`_ Scilab object and list function definition


.. _list: list.html
.. _argn(2): argn.html
.. _function: function.html
.. _varargout: varargout.html


