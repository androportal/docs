


argn
====

Returns the number of input/output arguments in a function call



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [lhs [,rhs] ]=argn()
    lhs=argn(1)
    rhs=argn(2)




Description
~~~~~~~~~~~

This function is used inside a function definition. It gives the
number of actual inputs arguments ( `rhs`) and output arguments (
`lhs`) passed to the function when the function is called. It is
usually used in function definitions to deal with optional arguments.



Examples
~~~~~~~~


::

    function concat=myOwnFunction(name, optional)
      [lhs,rhs]=argn(0) 
      if rhs <= 1 then
           optional="my Optional value"
      end
      if rhs == 0 then
           `error`_("Expect at least one argument")
      end
      concat=name+" "+optional
    endfunction




See Also
~~~~~~~~


+ `function`_ opens a function definition
+ `varargin`_ variable numbers of arguments in an input argument list


.. _varargin: varargin.html
.. _function: function.html


