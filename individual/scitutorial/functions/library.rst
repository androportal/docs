====
"library"
====

Scilab data type Last update : 13/07/2005
**library** - library datatype description



Calling Sequence
~~~~~~~~~~~~~~~~





Description
~~~~~~~~~~~

A library is a data type with type number 14. It contains a path-name
and a set of names. It allows automatic loading of variables using the
following algorithm:

Suppose the Scilab user references the variable named **foo** . Scilab
first looks if **foo** is the name of a primitive or of an already
defined variable. If not, it looks for **foo** sequentially (the
newest first) in all defined library .

Suppose **foo** belongs to the set of names of the library **xlib**
then Scilab tries to load the file <xlib-path-name>/foo.bin. <xlib-
path-name>/foo.bin must have been created using the **save** function

Library are often used for collection of functions, but they can also
be used for any collection of scilab variables

If a function is defined in more than one library, the default search
algorithm loads thode contained in the newest. It possible to force
the use of a specific library using dot notation:

**xlib.foo** loads the variable **foo** contained in **xlib** . if
**foo** is a function and **xlib.foo(args)** executes the functions



Examples
~~~~~~~~


::

    
    
    // elemlib is a predefined library
    elemlib //displays the contents of the library
    A=rand(3,3);
    cosm(A) //loads cosm and executes it
    
    whos -name cosm // now cosm is a variable
    
    elemlib.sinm //loads sinm from the library
    
    elemlib.cosm(A) //reloads cosm and executes it
     
      




See Also
~~~~~~~~

` **lib** `_,` **string** `_,` **load** `_,` **save** `_,

.. _
      : ://./functions/lib.htm
.. _
      : ://./functions/../strings/string.htm
.. _
      : ://./functions/../fileio/save.htm
.. _
      : ://./functions/../fileio/load.htm


