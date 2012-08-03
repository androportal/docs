====
"lib"
====

Scilab Function Last update : Nov 2000
**lib** - library definition



Calling Sequence
~~~~~~~~~~~~~~~~

xlib = lib('lib-dir')




Parameters
~~~~~~~~~~


+ **lib-dir** : character string




Description
~~~~~~~~~~~

**lib-dir** is a character string defining a directory that contains
compiled Scilab function ( **.bin** ) files.

In addition to these files **lib-dir** must have a file called
**names** , that contains the names of the functions defined in **lib-
dir** . On success, all functions in **lib-dir** are available from
within Scilab. They are loaded on demand when called for the first
time.

Binary files can be created from within Scilab with the command
**save** .

Scilab's standard libraries are defined using **lib** on the
**SCIDIR/macros/*** subdirectories.

A library variable usually is saved for later loading, either on-line
or from the user-specific startup file (see startup).



Restrictions
~~~~~~~~~~~~

Scilab tacitly assumes that each xxxx.bin file defines a variable
named **xxxx** .



Examples
~~~~~~~~


::

    
    
    //define some variables
    function z = myplus(x, y), z = x + y,endfunction
    function z = yourplus(x, y), x = x - y,endfunction
    A=1:10;
    
    //create the *.bin files in libdir
    libdir=TMPDIR
    save(libdir + '/myplus.bin', myplus);
    save(libdir + '/yourplus.bin', yourplus);
    save(libdir + '/A.bin', A);
    
    //create the name file
    mputl(['myplus';'yourplus';'A'],TMPDIR+'/names');
    
    //build the library containing myplus and yourplus
    xlib = lib(libdir+'/')
    
    //erase the variables
    clear myplus yourplus A
    
    //Automatic loading and execution
    myplus(1,2)
    
    A
     
      




See Also
~~~~~~~~

` **library** `_,` **genlib** `_,` **save** `_,` **deff** `_,`
**getf** `_,` **whereis** `_,

.. _
      : ://./functions/genlib.htm
.. _
      : ://./functions/library.htm
.. _
      : ://./functions/../fileio/save.htm
.. _
      : ://./functions/../programming/whereis.htm
.. _
      : ://./functions/deff.htm
.. _
      : ://./functions/getf.htm


