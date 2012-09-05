


xclear
======

clears a graphics window



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xclear([window-id])




Arguments
~~~~~~~~~

:window-id integer scalar or vector
:



Description
~~~~~~~~~~~

Without any argument, this function clears the current graphic figure
by turning its visibility to 'off'. Otherwise it clears the graphics
figures whose numbers are included in the vector `window-id`. For
example `xclear(1:3)` clears windows 1, 2 and 3. If one of the windows
does not exist, then it is automatically created.

Function `xclear` is obsolete. To clear a figure, please use instead
the `clf` function or the `visible` property.



Examples
~~~~~~~~


::

    `plot2d`_();
    `scf`_();
    `plot3d`_();
    xclear(0); // clear the first graphic
    xclear(); // clear the current figure




See Also
~~~~~~~~


+ `clf`_ clear or reset the current graphic figure (window) to default
  values


.. _clf: clf.html


