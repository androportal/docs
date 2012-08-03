====
"driver"
====

Scilab Function Last update : April 1993
**driver** - select a graphics driver



Calling Sequence
~~~~~~~~~~~~~~~~

driver(driver_name)
current_driver=driver()




Parameters
~~~~~~~~~~


+ **driver_name** : string, driver to be selected.




Description
~~~~~~~~~~~

This function is used to select a graphics driver, or with no
arguments to get the current graphics driver name. Most of the time, a
user can ignore this function and change the driver by calling high
level functions such as **xbasc** or **xbasimp** . The selected driver
can be one of the followings:

**"X11"**: output to the screen of the computer.
**"Pos"**: output into Postscript format.
**"Rec"**: output to the screen of the computer with recording of all
  the graphics commands. This is the default driver.
**"Fig"**: output into XFig format. Clipping of objects is not
  provided in XFig.
**"GIF"**: output into Gif format based on gd
  (http://www.boutell.com/gd)
**"PPM"**: output into PPM format based on gd
  (http://www.boutell.com/gd)




Remark
~~~~~~

To convert "GIF" or "PPM" files to other image format or for building
animation one can use the "convert" program for ImageMagic
(http://www.imagemagick.org/) For example if one has generated a
sequence of Gif files named **img*.gif** it is possible to build an
animated Gif file (named anim.gif) by

::

    
    
    convert -delay 10  img*.gif anim.gif  
       
        





See Also
~~~~~~~~

` **xtape** `_,` **xbasc** `_,` **xbasimp** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/xbasimp.htm
.. _
      : ://./graphics/xtape.htm
.. _
      : ://./graphics/xbasc.htm


