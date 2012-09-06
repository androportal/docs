


genlib
======

build library from functions in given directory



Calling Sequence
~~~~~~~~~~~~~~~~


::

    genlib(lib_name [[,dir_name, [ Force [,verb [,Names]]]])
    genlib(lib_name [,path=dir_name] [,verbose=verb] [,force=Force] [,names=Names])




Arguments
~~~~~~~~~

:lib_name: Scilab string. The variable name of the library to
  (re)create.
: :dir_name: Scilab string. The name of the directory to look for
  `.sci`-files.
: :Force boolean value (default value is `%f`). Set it to `%t` to
  force the sci-files recompilation.
: :verb boolean values (default value is `%f`). Set it to `%t` to get
  information.
: :Names a vector of strings, the names of function to include in the
  library. By default all the sci-files are taken into account
:



Description
~~~~~~~~~~~

For each `.sci` file in `dir_name` (or only those specified by the
`Names` argument), `genlib` executes a `exec` and saves the functions
to the corresponding `.bin` file. The `.sci` file must not contain
anything but Scilab functions. If a `.bin` file is newer than the
associated `.sci` file, `genlib` does not translate and save the file.

This default behaviour can be changed if `force` is given and set to
`%t`. In this latter case the recompilation is always performed for
each `.sci` file.

When all `.sci` files have been processed, `genlib` creates a library
variable named `lib_name` and saves it in the file `lib` in
`dir_name`. If the Scilab variable `lib_name` is not protected (see
`predef`_) this variable is updated.

If `verbose` is et to `%t` information are displayed during the build
process.

If `dir_name` argument is not given and if `lib_name` Scilab variable
exists and it is a library dir_name is taken equal to the `lib_name`
library path (update mode).



Restrictions
~~~~~~~~~~~~

Scilab tacitly assumes that file `foo.sci` defines at least a function
named `foo`. If subsidiary functions are included, they are made known
to Scilab only after the function `foo` had been referenced.



See Also
~~~~~~~~


+ `getd`_ getting all functions defined in a directory
+ `exec`_ script file execution
+ `save`_ Save a variable or a serie of variables in a binary file
+ `lib`_ library definition


.. _exec: exec.html
.. _getd: getd.html
.. _predef: predef.html
.. _save: save.html
.. _lib: lib.html


