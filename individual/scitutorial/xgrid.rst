


xgrid
=====

add a grid on a 2D plot



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xgrid([style])




Arguments
~~~~~~~~~

:style integer
:



Description
~~~~~~~~~~~

`xgrid` adds a grid on a 2D plot. `style` is the dash id or the color
id to use for the grid plotting. Use `xset()` for the meaning of id.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=[0:0.1:2*%pi]';
    `plot2d`_(`sin`_(x))
    xgrid(2)




See Also
~~~~~~~~


+ `xset`_ set values of the graphics context.This function is
  obsolete.
+ `plot2d`_ 2D plot


.. _plot2d: plot2d.html
.. _xset: xset.html


