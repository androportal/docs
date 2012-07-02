Scilab Function

Last update : 13/07/2005

**exec** - script file execution

Calling Sequence
~~~~~~~~~~~~~~~~

``exec(path [,mode])  ``

``exec(fun [,mode])  ``

``ierr=exec(path,'errcatch' [,mode])  ``

``ierr=exec(fun,'errcatch' [,mode])  ``

Parameters
~~~~~~~~~~

-  ``           path         ``: a string, the path of the script file
-  ``           mode         ``: an integer scalar, the execution mode
   (see below)
-  ``           fun         ``: a scilab function
-  ``           ierr         ``: integer, 0 or error number

Description
~~~~~~~~~~~

``         exec(path [,mode])       `` executes sequentialy the scilab
instructions contained in the file given by ``         path       ``
with an optional execution mode ``         mode       `` .

The different cases for ``         mode       `` are :

0 : the default value

-1 : nothing is printed

1 : echo of each command line

2 : prompt ``         -->       `` is printed

3 : echoes + prompts

4 : stops before each prompt. Execution resumes after a carriage return.

7 : stops + prompts + echoes : useful mode for demos.

``         exec(fun [,mode])       `` executes function
``         fun       `` as a script: no input nor output argument nor
specific variable environment. This form is more efficient, because
script code may be pre-compiled (see getf, comp). This method for script
evaluation allows to store scripts as function in libraries.

If an error is encountered while executing, if 'errcatch' flag is
present ``         exec       `` issues no error message, aborts
execution of the instructions and resumes with ``         ierr       ``
equal to the error number. If 'errcatch' flag is not present, standard
error handling works.

Remark
~~~~~~

``           exec         `` files may now be used to define functions
using the inline function definition syntax (see function).

Examples
~~~~~~~~

::


    // create a script file
    mputl('a=1;b=2',TMPDIR+'/myscript')
    // execute it
    exec(TMPDIR+'/myscript')
    whos -name "a "

    // create a function
    deff('y=foo(x)','a=x+1;y=a^2')
    clear a b
    // call the function
    foo(1)
    // a is a variable created in the environment of the function foo
    //    it is destroyed when foo returns
    whos -name "a "


    x=1 //create x to make it known by the script foo
    exec(foo)
    // a and y are created in the current environment
    whos -name "a "
     
      

See Also
~~~~~~~~

```           getf         `` <../functions/getf.htm>`_,
```           execstr         `` <execstr.htm>`_,
```           evstr         `` <evstr.htm>`_,
```           comp         `` <../functions/comp.htm>`_,
```           mode         `` <mode.htm>`_,
```           chdir         `` <../utilities/chdir.htm>`_,
```           getcwd         `` <pwd.htm>`_,
