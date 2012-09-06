


isoview
=======

set scales for isometric plot (do not change the size of the window)



Calling Sequence
~~~~~~~~~~~~~~~~


::

    isoview(xmin,xmax,ymin,ymax)




Arguments
~~~~~~~~~

:xmin,xmax,ymin,ymax four real values
:



Description
~~~~~~~~~~~

This function is obsolete, use preferably the `frameflag=4` plot2d
option which enable window resizing.

`isoview` is used to have isometric scales on the x and y axes. It
does not change the size of the graphics window. The rectangle `xmin,
xmax, ymin, ymax` will be contained in the computed frame of the
graphics window. `isoview` set the current graphics scales and can be
used in conjunction with graphics routines which request the current
graphics scale (for instance `strf="x0z"` in `plot2d`).



Sample
~~~~~~



Examples
~~~~~~~~


::

    t=[0:0.1:2*%pi]';
    `plot2d`_(`sin`_(t),`cos`_(t))
    `clf`_()
    isoview(-1,1,-1,1)
    `plot2d`_(`sin`_(t),`cos`_(t),1,"001")
    
    `plot2d`_(`sin`_(t),`cos`_(t),frameflag=4)




See Also
~~~~~~~~


+ `square`_ set scales for isometric plot (change the size of the
  window)
+ `xsetech`_ set the sub-window of a graphics window for plotting


.. _square: square.html
.. _xsetech: xsetech.html


