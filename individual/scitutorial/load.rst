


load
====

Load a saved variable or a serie of variables



Calling Sequence
~~~~~~~~~~~~~~~~


::

    load(filename [,x1,...,xn])



::

    load(fd [,x1,...,xn])




Arguments
~~~~~~~~~

:filename character string containing the path of the file
: :fd a file descriptor given by a call to mopen
: :xi arbitrary Scilab variable name(s) given as strings.
:



Description
~~~~~~~~~~~

The `load` command can be used to reload in the Scilab session
variables previously saved in a file with the ``save`_` command. If
the file contains graphic handle variables, the corresponding
`graphics_entities`_ are drawn.

`load(filename)` loads the variables saved in file given by its path
`filename`.

`load(fd)` loads the variables saved in file given by its descriptor
`fd`. **This prototype is obsolete and will be removed in Scilab 6.**

`load(filename,'x','y')` loads only variables `x,y`.

`load(fd,'x','y')` loads only variables `x,y`. **This prototype is
obsolete and will be removed in Scilab 6.**.

The change of format between the family 5 and 6 of Scilab has been
decided because the 5 format is undocumented, not specified and hard
to read. SOD (Scilab 6 default format) is fully documented and easy to
read through HDF5 libraries or applications.

Note that the written file is portable to other operating systems and
architectures (little and big endian).



Examples
~~~~~~~~


::

    // Binary format readable up to Scilab 5 family
    a=`eye`_(2,2);b=`ones`_(a);
    `save`_('vals.dat',a,b);
    clear a
    clear b
    load('vals.dat','a','b');
    
    // Binary format readable by Scilab 5.4.X and Scilab 6 family
    a=`eye`_(2,2);b=`ones`_(a);
    `save`_("val.sod", "a", "b");
    clear a
    clear b
    load("val.sod", "a", "b");




See Also
~~~~~~~~


+ `save`_ Save a variable or a serie of variables in a binary file
+ `read`_ matrices read
+ `listvarinfile`_ list of variables in a saved data file
+ `save_format`_ format of files produced by "save"
+ `exec`_ script file execution
+ `mopen`_ open a file in Scilab




History
~~~~~~~
Version Description 5.0.0 All `uimenu`_ or `uicontrol`_ handles are
also loaded by this function. 5.4.0

+ The load function is able to handle both Scilab 5 and SOD (Scilab 6
  format) by default.
+ The Scilab 5.X format is deprecated and will be removed with Scilab
  6.
+ Using load with a file descriptor as first input argument is
  deprecated and will be removed with Scilab 6.


.. _uicontrol: uicontrol.html
.. _exec: exec.html
.. _graphics_entities: graphics_entities.html
.. _read: read.html
.. _save_format: save_format.html
.. _listvarinfile: listvarinfile.html
.. _mopen: mopen.html
.. _save: save.html
.. _uimenu: uimenu.html


