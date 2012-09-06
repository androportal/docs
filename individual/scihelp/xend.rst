


xend
====

Close a graphics export session



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xend()




Description
~~~~~~~~~~~

`xend` is used to close a graphics session. When working on the export
of a graphic, `xend` closes the file which was opened by `xinit`.



Examples
~~~~~~~~


::

    `driver`_("Pos")
    `xinit`_("foo.ps")
    `plot2d`_()
    xend()
    `driver`_("X11")




See Also
~~~~~~~~


+ `driver`_ Select a graphics driver
+ `xinit`_ Initialization of a graphics driver


.. _driver: driver.html
.. _xinit: xinit.html


