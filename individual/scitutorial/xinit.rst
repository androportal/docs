


xinit
=====

Initialization of a graphics driver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xinit(FileName)
    xinit()




Arguments
~~~~~~~~~

:FileName string: name of the export file.
:



Description
~~~~~~~~~~~

To export to a file, `FileName` must be specified. It is the name of
the file where all the graphics operations are recorded.

For screen drivers (X11 or Rec), `xinit` should be called without any
argument and it will open an empty graphic window.



Examples
~~~~~~~~


::

    `driver`_("Pos")
    xinit(TMPDIR+"/foo.ps")
    `plot2d`_()
    `xend`_()
    `driver`_("X11")



::

    `driver`_("PNG")
    xinit(TMPDIR+"/foo.png")
    `plot3d`_()
    `xend`_()
    `driver`_("X11")




See Also
~~~~~~~~


+ `driver`_ Select a graphics driver
+ `xend`_ Close a graphics export session
+ `scf`_ set the current graphic figure (window)


.. _driver: driver.html
.. _scf: scf.html
.. _xend: xend.html


