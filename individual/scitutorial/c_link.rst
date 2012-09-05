


c_link
======

check if symbol loaded with dynamic link



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c_link(routine_name)
    [test, ilib] = c_link(routine_name)
    test = c_link(routine_name,num)




Arguments
~~~~~~~~~

:routine_name a character string
: :num number of the shared library where routine_name is searched
  (-1: default, last used)
: :test boolean, indicates if there is a shared library which contains
  `routine_name`.
: :ilib a scalar, the number of the shared library which contains
  `routine_name`
:



Description
~~~~~~~~~~~

`c_link` is a boolean function which checks if the routine
`routine_name` is currently linked. This function returns a boolean
value true or false. When used with two return values, the function
`c_link` returns a boolean value in `test` and the number of the
shared library which contains `routine_name` in `ilib` (when `test` is
true).



Examples (C code)
~~~~~~~~~~~~~~~~~


::

    if `haveacompiler`_() then
          `chdir`_(TMPDIR)
          f1=['int ext1c(int *n, double *a, double *b, double *c)'
          '{int k;'
          '  for (k = 0; k < *n; ++k) '
          '      c[k] = a[k] + b[k];'
          '  return(0);}'];
          
          `mputl`_(f1, TMPDIR + '/fun1.c');
          //creating the shared library (a gateway, a Makefile and a loader are
          //generated.
          `ilib_for_link`_('ext1c','fun1.c',[],"c");
          // load the shared library
          `exec`_ loader.sce;
          // show link
          `link`_('show')
          
          [test, ilib] = c_link('ext1c') // check if 'ext1c' symbol is linked in scilab (it returns %T, ilib equals to 0)
          c_link('ext1c', -1) // check if 'ext1c' linked in scilab in current library (last used) (it returns %T)
          c_link('ext1c', 0) // check in library (id eqs 0) if 'ext1c' is linked (it returns %T)
          c_link('ext1c', 1) // 'ext1c' not in library with id = 1 (it returns %F)
          c_link('toto') // returns %F  'toto' not linked to scilab (it returns %F)
          end




See Also
~~~~~~~~


+ `link`_ dynamic linker
+ `fort`_ Fortran or C user routines call
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory


.. _fort: fort.html
.. _link: link.html
.. _api_scilab: api_scilab.html


