


xload
=====

load a saved graphics



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xload(file_name,[win_num])




Arguments
~~~~~~~~~

:file_name string, name of the file.
: :win_num integer, the graphics window number. If not given, the
  current graphics window is used.
:



Description
~~~~~~~~~~~

`xload` reloads the graphics contained in the file `file_name` in the
graphics window `win_num`.

Since Scilab 5.0, all `uimenu`_ or `uicontrol`_ handles are also
loaded.

For files containing graphics, the `load` function can be used instead
of `xload`. `xload` does not restore the window number, the window
size nor the window dimensions.



Examples
~~~~~~~~


::

    t=0:0.01:10;
    `subplot`_(211),`plot2d`_(t,`sin`_(t))
    `subplot`_(212),`plot2d`_(t,`sin`_(3*t))
    `xsave`_(TMPDIR + "/foo.scg", `gcf`_())
    `clf`_()
    xload(TMPDIR + "/foo.scg")
    
    a=`gca`_();
    curve=a.children.children; //handle on the curve
    `save`_(TMPDIR + "/foo.scg", "curve")
    `delete`_(curve)
    `load`_(TMPDIR + "/foo.scg")




See Also
~~~~~~~~


+ `xsave`_ save graphics into a file
+ `load`_ Load a saved variable or a serie of variables
+ `save`_ Save a variable or a serie of variables in a binary file


.. _uicontrol: uicontrol.html
.. _load: load.html
.. _save: save.html
.. _xsave: xsave.html
.. _uimenu: uimenu.html


