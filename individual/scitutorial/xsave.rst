


xsave
=====

save graphics into a file



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xsave(filename,[win_num])




Arguments
~~~~~~~~~

:file_name string, name of the file.
: :win_num integer, the graphics window number. If not given, the
  current graphics window is used.
:



Description
~~~~~~~~~~~

`xsave` saves the graphics contained in the graphics window `win_num`
in the binary file `file_name`. and can be reloaded with `xload`.

Since Scilab 5.0, all `uimenu`_ or `uicontrol`_ handles are also
saved.

For graphics `xsave(file_name,win_num)` use preferabily
`save(file_name,scf(win_num))`.



Examples
~~~~~~~~


::

    t=0:0.01:10;
    `subplot`_(211),`plot2d`_(t,`sin`_(t))
    `subplot`_(212),`plot2d`_(t,`sin`_(3*t))
    xsave(TMPDIR + "/foo.scg", `gcf`_())
    `clf`_()
    `xload`_(TMPDIR + "/foo.scg")
    
    a=`gca`_();
    curve=a.children.children; //handle on the curve
    `save`_(TMPDIR + "/foo.scg", "curve")
    `delete`_(curve)
    `load`_(TMPDIR + "/foo.scg")




See Also
~~~~~~~~


+ `xload`_ load a saved graphics
+ `save`_ Save a variable or a serie of variables in a binary file
+ `load`_ Load a saved variable or a serie of variables


.. _uicontrol: uicontrol.html
.. _load: load.html
.. _save: save.html
.. _xload: xload.html
.. _uimenu: uimenu.html


