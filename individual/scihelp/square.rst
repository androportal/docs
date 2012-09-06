


square
======

set scales for isometric plot (change the size of the window)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    square(xmin,ymin,xmax,ymax)




Arguments
~~~~~~~~~

:xmin,xmax,ymin,ymax four real values
:



Description
~~~~~~~~~~~

`square` is used to have isometric scales on the x and y axes. The
requested values `xmin, xmax, ymin, ymax` are the boundaries of the
graphics frame and `square` changes the graphics window dimensions in
order to have an isometric plot. `square` set the current graphics
scales and can be used in conjunction with graphics routines which
request the current graphics scale (for instance `fstrf="x0z"` in
`plot2d`).



Examples
~~~~~~~~


::

    t=[0:0.1:2*%pi]';
    `plot2d`_(`sin`_(t),`cos`_(t))
    `clf`_()
    square(-1,-1,1,1)
    `plot2d`_(`sin`_(t),`cos`_(t))




See Also
~~~~~~~~


+ `isoview`_ set scales for isometric plot (do not change the size of
  the window)
+ `xsetech`_ set the sub-window of a graphics window for plotting


.. _isoview: isoview.html
.. _xsetech: xsetech.html


