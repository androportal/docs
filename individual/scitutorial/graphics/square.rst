====
"square"
====

Scilab Function Last update : April 1993
**square** - set scales for isometric plot (change the size of the
window)



Calling Sequence
~~~~~~~~~~~~~~~~

square(xmin,ymin,xmax,ymax)




Parameters
~~~~~~~~~~


+ **xmin,xmax,ymin,ymax** : four real values




Description
~~~~~~~~~~~

**square** is used to have isometric scales on the x and y axes. The
requested values **xmin, xmax, ymin, ymax** are the boundaries of the
graphics frame and **square** changes the graphics window dimensions
in order to have an isometric plot. **square** set the current
graphics scales and can be used in conjunction with graphics routines
which request the current graphics scale (for instance **fstrf="x0z"**
in **plot2d** ).



Examples
~~~~~~~~


::

    
    
    t=[0:0.1:2*%pi]';
    plot2d(sin(t),cos(t))
    xbasc()
    square(-1,-1,1,1)
    plot2d(sin(t),cos(t))
    xset("default")
     
      




See Also
~~~~~~~~

` **isoview** `_,` **xsetech** `_,



Author
~~~~~~

Steer S.

.. _
      : ://./graphics/xsetech.htm
.. _
      : ://./graphics/isoview.htm


