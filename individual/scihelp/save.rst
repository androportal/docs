


save
====

Save a variable or a serie of variables in a binary file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    save(filename [,x1,x2,...,xn])
    save(fd [,x1,x2,...,xn])




Arguments
~~~~~~~~~

:filename Character string containing the path of the file
: :fd A file descriptor given by a call to mopen
: :xi Arbitrary Scilab variable(s)
:



Description
~~~~~~~~~~~

The `save` command can be used to save Scilab current variables in a
binary file. If a variable is a graphic handle, the `save` function
saves all the corresponding `graphics_entities`_ definition.

The file can be given either by its paths or by its descriptor
previously given by `mopen`.

`save(filename)` saves all current variables in the file defined by
`filename`.

`save(fd)` saves all current variables in the file defined by the
descriptor `fd`. **This prototype is obsolete and will be removed in
Scilab 6.**

`save(filename,x,y)` or `save(fd,x,y)` (with `x` and `y` variables of
your environment) saves only named variables `x` and `y`.
`save(fd,x,y)` **is obsolete and will be removed in Scilab 6.**

`save(filename,"x","y")` (with `"x"` and `"y"` names of variables of
your environment) will save your data using the SOD (Scilab Open Data)
format (based on HDF5), format that will be readable by Scilab 6
family.

The change of format between the family 5 and 6 of Scilab has been
decided because the 5 format is undocumented, not specified and hard
to read. SOD (Scilab 6 default format) is fully documented and easy to
read through HDF5 libraries or applications.

Saved variables can be reloaded by the ``load`_` command.

Note that the written file is portable to other operating systems and
architectures (little and big endian).



Examples
~~~~~~~~


::

    // Binary format readable up to Scilab 5 family
    a=`eye`_(2,2);b=`ones`_(a);
    save('val.dat',a,b);
    clear a
    clear b
    `load`_('val.dat','a','b');
    
    // sequential save into a file
    fd=`mopen`_('TMPDIR/foo','wb')
    for k=1:4, x=k^2;save(fd,x,k),end
    `mclose`_(fd)
    fd=`mopen`_('TMPDIR/foo','rb')
    for i=1:4, `load`_(fd,'x','k');x,k,end
    `mclose`_(fd)
    
    // appending variables to an old save file
    fd=`mopen`_('TMPDIR/foo','rb+')
    `mseek`_(0,fd,'end') 
    lst=`list`_(1,2,3)
    save(fd,lst)
    `mclose`_(fd)
    
    // Binary format readable by Scilab 5.4.X and Scilab 6 family
    a=`eye`_(2,2);b=`ones`_(a);
    save("val.sod", "a", "b");
    clear a
    clear b
    `load`_("val.sod", "a", "b");




See Also
~~~~~~~~


+ `load`_ Load a saved variable or a serie of variables
+ `write`_ write in a formatted file
+ `save_format`_ format of files produced by "save"
+ `mopen`_ open a file in Scilab




History
~~~~~~~
Version Description 5.0.0 All `uimenu`_ or `uicontrol`_ handles are
also saved by this function. 5.4.0

+ When called with variables names (character string) as input,
  variables are saved in SOD format, format that will be readable by
  Scilab 6 family.
+ The Scilab 5.X format is deprecated and will be removed with Scilab
  6.
+ Using save with a file descriptor as first input argument is
  deprecated and will be removed with Scilab 6.


.. _write: write.html
.. _uicontrol: uicontrol.html
.. _graphics_entities: graphics_entities.html
.. _save_format: save_format.html
.. _load: load.html
.. _mopen: mopen.html
.. _uimenu: uimenu.html


