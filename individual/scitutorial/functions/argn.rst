====
"argn"
====

Scilab Function Last update : April 1993
**argn** - number of arguments in a function call



Calling Sequence
~~~~~~~~~~~~~~~~

[lhs [,rhs] ]=argn()
lhs=argn(1)
rhs=argn(2)




Description
~~~~~~~~~~~

This function is used inside a function definition. It gives the
number of actual inputs **rhs** and output **lhs** parameters passed
to the function when the function is called. It is usually used in
function definitions to deal with optional arguments.



See Also
~~~~~~~~

` **function** `_,` **varargin** `_,

.. _
      : ://./functions/varargin.htm
.. _
      : ://./functions/function.htm


