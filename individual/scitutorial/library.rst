


library
=======

library datatype description



Calling Sequence
~~~~~~~~~~~~~~~~


::






Description
~~~~~~~~~~~

A library is a data type with type number 14. It contains a path-name
and a set of names. It allows automatic loading of variables using the
following algorithm:

Suppose the Scilab user references the variable named `foo`. Scilab
first looks if `foo` is the name of a primitive or of an already
defined variable. If not, it looks for `foo` sequentially (the newest
first) in all defined library .

Suppose `foo` belongs to the set of names of the library `xlib` then
Scilab tries to load the file <xlib-path-name>/foo.bin. <xlib-path-
name>/foo.bin must have been created using the `save` function

Library are often used for collection of functions, but they can also
be used for any collection of scilab variables

If a function is defined in more than one library, the default search
algorithm loads thode contained in the newest. It possible to force
the use of a specific library using dot notation:

`xlib.foo` loads the variable `foo` contained in `xlib`. if `foo` is a
function and `xlib.foo(args)` executes the functions



Examples
~~~~~~~~


::

    // elemlib is a predefined library
    elementary_functionlib //displays the contents of the library
    A=`rand`_(3,3);
    `cosm`_(A) //loads cosm and executes it
    `whos`_ -name cosm // now cosm is a variable
    elementary_functionlib.sinm //loads sinm from the library
    elementary_functionlib.cosm(A) //reloads cosm and executes it




See Also
~~~~~~~~


+ `lib`_ library definition
+ `string`_ conversion to string
+ `load`_ Load a saved variable or a serie of variables
+ `save`_ Save a variable or a serie of variables in a binary file


.. _load: load.html
.. _save: save.html
.. _lib: lib.html
.. _string: string.html


