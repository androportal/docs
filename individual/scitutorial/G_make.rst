


G_make
======

call make or nmake



Calling Sequence
~~~~~~~~~~~~~~~~


::

    Rfiles=G_make(files,dllname)




Arguments
~~~~~~~~~

:files a character string or a vector of character string.
: :dllname a character string.
: :Rfiles vector of character string. `Rfiles` can be used as a first
  argument when calling `addinter` function.
:



Description
~~~~~~~~~~~

On Unix like systems `G_make` calls the `make` utility for building
target `files` and returns the value of `files` in the variable
`Rfiles`. On windows platforms, `G_make` calls the `nmake` utility for
building target `dllname` and it returns the value of `dllname` in the
variable `Rfiles`. Of course `G_make` will work if apropriate
Makefiles are provided in the current Scilab directory.

`G_make` can be used to provide OS independent call to addinter.



Examples
~~~~~~~~


::

    if `getos`_() == 'Windows' then
      txt = ['ex1c.dll:',
             '  @echo ------------------------------------------',
             '  @echo From Makefile.mak',
             '  @echo ------------------------------------------',
             ' '];
      `mputl`_(txt,TMPDIR+'/makefile.mak')
      current_dir = pwd();  
      `cd`_ TMPDIR
      files=G_make([TMPDIR+'/ex1cI.o',TMPDIR+'/ex1c.o'],'ex1c.dll');// compilation 
      //
      //addinter(files,'foobar','foubare'); // link 
      `cd`_(current_dir);
    end




See Also
~~~~~~~~


+ `addinter`_ new functions interface dynamic link at run time.
+ `api_scilab`_ api_scilab is the Scilab interface to read/write data
  from/to Scilab memory


.. _addinter: addinter.html
.. _api_scilab: api_scilab.html


