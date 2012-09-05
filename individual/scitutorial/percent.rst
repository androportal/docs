


percent
=======

(%) special character



Description
~~~~~~~~~~~

Some predefined variables names begin with `%`, such as `%i` (for
`sqrt(-1)`), `%inf` (for `Infinity`), `%pi` (for `3.14...`), `%T` (for
the boolean constant `"true"`),...

In addition, functions whose names begin with `%` are special : they
are used for primitives and operators overloading (see `overloading`).

For example the function `%rmr` performs the multiplication ( `m`)
operation `x*y` for `x` and `y` rational matrices ( `r`). The coding
conventions are given by the readme file in directory
`SCI/modules/overloading/macros`.



Examples
~~~~~~~~


::

    x1=`tlist`_('x',1,2);
    x2=`tlist`_('x',2,3);
    `deff`_('x=%xmx(x1,x2)','x=list(''x'',x1(2)*x2(2),x2(3)*x2(3))');
    x1*x2




See Also
~~~~~~~~


+ `overloading`_ display, functions and operators overloading
  capabilities


.. _overloading: overloading.html


