


driver
======

Select a graphics driver



Calling Sequence
~~~~~~~~~~~~~~~~


::

    current_driver=driver()
    driver(driver_name)
    previous_driver = driver(driver_name)




Arguments
~~~~~~~~~

:driver_name string, driver to be selected (case insensitive).
current_driver string, selected driver.
previous_driver string, driver previously selected.
:



Description
~~~~~~~~~~~


This function provides a switch between the different drivers for
export or display.

Direct rendering on the screen or off-screen export without any
graphical user interface. This is available in the mode scilab-adv-cli
(or also called -nw)

Used without any input argument, the driver function returns the
current graphics driver name.




Screen output
~~~~~~~~~~~~~

To display graphic into a new window instead of off-screen format.
This is the default behavior of Scilab.

:X11 or Rec output to the screen of the computer.
:



Supported vectorial formats
~~~~~~~~~~~~~~~~~~~~~~~~~~~

The selected driver can be one of the following vectorial format:

:Pos or ps output into Postscript format.
: :PDF output into PDF format.
: :SVG output into SVG format.
:



Supported bitmap formats
~~~~~~~~~~~~~~~~~~~~~~~~

The selected driver can be one of the following vectorial bitmap:

:GIF output into GIF format.
: :PNG output into PNG format.
: :JPEG or JPG output into JPEG format.
: :BMP output into BMP format.
: :PPM output into portable pixmap format (PPM) format.
:



Remark
~~~~~~

To redirect the graphic output to a GIF file (which will be written in
the current directory), you can use the following example:


::

    previous_driver = driver('GIF');
    `xinit`_(TMPDIR+'/mygiffile.gif');
    `plot3d`_();
    `xend`_();
    driver(previous_driver); // Bring back the previous behavior of Scilab


For example if one has generated a sequence of GIF files named
`img*.gif` it is possible to build an animated GIF file (named
anim.gif) by


::

    convert -delay 10  img*.gif anim.gif




See Also
~~~~~~~~


+ `xinit`_ Initialization of a graphics driver
+ `xend`_ Close a graphics export session




History
~~~~~~~
Version Description 5.4.0

+ Return the previous driver value.
+ Enable off-screen. Scilab exports graphics without opening a new
  window.
+ Support of new bitmap formats: PNG, JPEG and BMP.
+ Support of new vectorial formats: PDF and SVG.
+ The function accepts lower and upper case argument.
+ Fig driver is no longer supported.


.. _xend: xend.html
.. _xinit: xinit.html


