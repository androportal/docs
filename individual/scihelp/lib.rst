


lib
===

library definition



Calling Sequence
~~~~~~~~~~~~~~~~


::

    namelib = lib('lib-dir')




Arguments
~~~~~~~~~

:lib-dir character string
: :namelib library variable returned by 'lib'.
:



Description
~~~~~~~~~~~

`lib-dir` is a character string defining a directory that contains
compiled Scilab function ( `.bin`) files.

In addition to these files `lib-dir` must have a file called `names`,
that contains the names of the functions defined in `lib-dir`. On
success, all functions in `lib-dir` are available from within Scilab.
They are loaded on demand when called for the first time.

Binary files can be created from within Scilab with the command
`save`. A library variable usually is saved for later loading, either
on-line or from the user-specific startup file (see startup).

value returned by 'lib' must be insert in a variable 'namelib' to
access to macro functions of this library.



Restrictions
~~~~~~~~~~~~

Scilab tacitly assumes that each xxxx.bin file defines a variable
named `xxxx`.



Examples
~~~~~~~~


::

    //define some functions
    function z=myplus(x, y)
      z = x + y
    endfunction
    
    function z=yourplus(x, y)
      x = x - y
    endfunction
    
    //create the *.bin files in libdir
    libdir = TMPDIR;
    `save`_(libdir + '/myplus.bin', myplus);
    `save`_(libdir + '/yourplus.bin', yourplus);
    
    //create the name file
    `mputl`_(['myplus';'yourplus'],TMPDIR+'/names');
    
    //build the library containing myplus and yourplus
    mylibfoo = lib(libdir+'/');
    
    //erase the variables
    clear myplus yourplus
    
    //Automatic loading and execution
    myplus(1,2)
    
    //erase the variables
    clear myplus yourplus
    
    mylibfoo
    [n,p] = `libraryinfo`_('mylibfoo')
    
    `isdef`_('myplus')
    clear mylibfoo
    `isdef`_('myplus')




See Also
~~~~~~~~


+ `library`_ library datatype description
+ `genlib`_ build library from functions in given directory
+ `save`_ Save a variable or a serie of variables in a binary file
+ `deff`_ on-line definition of function
+ `exec`_ script file execution
+ `whereis`_ name of library containing a function
+ `libraryinfo`_ get macros and path of a scilab library


.. _exec: exec.html
.. _libraryinfo: libraryinfo.html
.. _library: library.html
.. _whereis: whereis.html
.. _deff: deff.html
.. _save: save.html
.. _genlib: genlib.html


