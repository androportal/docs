====
"xinit"
====

Scilab Function Last update : 19/05/2004
**xinit** - initialisation of a graphics driver



Calling Sequence
~~~~~~~~~~~~~~~~

xinit([driver-name])




Parameters
~~~~~~~~~~


+ **driver-name** : string.




Description
~~~~~~~~~~~

Initialisation of the given driver.

For X Window **driver-name** can be a string which gives the name of a
display and a new graphics window is created. If the argument is
omitted the value of the environment variable DISPLAY is used if it
exists or the value "unix:0.0" is used.

For the Postscript, Xfig or Gif driver, **driver-name** is a name of
the file where all the graphics operations are recorded.

Note that in Postscript case the generated file is not a complete
postscript file. It should be converted using the BEpsf or Blatexpr
shell programs (see printing)



Examples
~~~~~~~~


::

    
    
    driver("Pos")
    xinit("foo.ps")
    plot2d()
    xend()
    driver("X11")
     
      




See Also
~~~~~~~~

` **xbasimp** `_,` **xend** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xbasimp.htm
.. _
      : ://./graphics/xend.htm


