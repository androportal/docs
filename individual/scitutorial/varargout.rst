


varargout
=========

variable numbers of arguments in an output argument list



Description
~~~~~~~~~~~

A function whose output argument list contains `varargout` must be
called with more output arguments than indicated in the output
argument list. The calling arguments passed form `varargout` keyword
onwards are extracted out of the `varargout` list defined in the
function.

`varargout= function ex()` may be called with any number of output
arguments. Within function `ex` output arguments may be stored in in
`varargout(i)`.

`[X1,...Xn,varargout]= function ex()` may also be used. In this case
the `Xi` variables must be assigned in the function as well as
`varargout(i)`.

The actual total number of output argument is given `argn(1)`_



Remark
~~~~~~

The `varargout` variable must be created within the function and
assigned to a `list`_. If varargout is the only formal output variable
the list must contain at least one entry.



Examples
~~~~~~~~


::

    function varargout=exampl()
      varargout=`list`_(1,2,3,4)
    endfunction
    
    x=exampl()
    [x,y]=exampl()
    [x,y,z]=exampl()
    
    function [a, b, varargout]=exampl1()
      a='first'
      b='second'
      varargout=`list`_(1,2,3,4)
    endfunction
    
    exampl1()
    [a,b]=exampl1()
    [a,b,c]=exampl1()




See Also
~~~~~~~~


+ `function`_ opens a function definition
+ `varargin`_ variable numbers of arguments in an input argument list
+ `list`_ Scilab object and list function definition


.. _list: list.html
.. _argn(1): argn.html
.. _varargin: varargin.html
.. _function: function.html


