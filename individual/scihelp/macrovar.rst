


macrovar
========

variables of function



Calling Sequence
~~~~~~~~~~~~~~~~


::

    vars=macrovar(function)




Arguments
~~~~~~~~~

:vars list `list(in,out,nolocal,called,locals)`
: :function name of a function
:



Description
~~~~~~~~~~~

Returns in a list the set of variables used by a function. `vars` is a
list made of five column vectors of character strings

`in` input variables ( `vars(1)`)

`out` output variables ( `vars(2)`)

`nolocal`referenced variables which are not defined inside the
function and which are not functions ( `vars(3)`)

`called` names of functions called ( `vars(4)`)

`locals` local variables ( `vars(5)`)



Examples
~~~~~~~~


::

    `deff`_('y=f(x1,x2)','loc=1;y=a*x1+x2-loc')
    vars=macrovar(f)




See Also
~~~~~~~~


+ `string`_ conversion to string
+ `macr2lst`_ function to list conversion


.. _macr2lst: macr2lst.html
.. _string: string.html


