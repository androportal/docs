


newfun
======

add a name in the table of functions



Calling Sequence
~~~~~~~~~~~~~~~~


::

    newfun(function_name, function_ptr)




Arguments
~~~~~~~~~

:function_name a character string, giving a valid function name
: :function_ptr a positive number with integer value (see below)
:



Description
~~~~~~~~~~~

Utility function (for experts only).

Adds the name `function_name` in the table of functions known to the
interpreter.

`function_ptr` is an integer `1000*fun+fin` where `fun` and `fin` are
the internal coding of the primitive `function_name`.

This function may be useful to associate a primitive to a gateway
called in `"gw_user.c"` ( `fun=14`). Note however that the
`ilib_build`_ function is a more easy way to extend Scilab with new
functions based on C, C++ or Fortran code.

This function may also be used to add an alias or to rename to an
existing primitive function.

Used with `funptr` and `clearfun` one can add an alias or rename an
existing primitive function.



Examples
~~~~~~~~


::

    absptr=`funptr`_("abs");// get the function_ptr associated with the abs function
    newfun("abs_bis",absptr) // create an alias of the abs function
    abs_bis(-1+%i)
    `clearfun`_("abs") // remove abs as a known function
    
     //redefine abs
     function y=abs(x)
    y=abs_bis(`real`_(x));
     endfunction
     
    `abs`_(-1+%i)




See Also
~~~~~~~~


+ `clearfun`_ removes primitive
+ `funptr`_ coding of primitives ( wizard stuff )
+ `ilib_build`_ utility for shared library management


.. _funptr: funptr.html
.. _ilib_build: ilib_build.html
.. _clearfun: clearfun.html


