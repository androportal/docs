


addcolor
========

add new colors to the current colormap



Calling Sequence
~~~~~~~~~~~~~~~~


::

    new=addcolor(c)




Arguments
~~~~~~~~~

:new ids of the colors defined in c in the new color table.
: :c matrix with 3 columns, RGB color definition.
:



Description
~~~~~~~~~~~

`addcolor` adds new colors given in the `c` argument to the current
colormap. `c` must be a matrix with 3 columns `[R G B]` `R` is red
component, `G` is green component, `B` is blue component). Each entry
in `c` must be a non negative number less or equal to 1.

The ids of the new colors are returned into `new`.

If a color defined in `c` is already present in the current colormap
it is not added.



Sample
~~~~~~



Examples
~~~~~~~~


::

    `plot3d`_();
    h = `gcf`_();
    h.color_map = `jetcolormap`_(16);
    addcolor(`name2rgb`_('grey')/255);




See Also
~~~~~~~~


+ `colormap`_ using colormaps
+ `name2rgb`_ returns the RGB values of a named color


.. _name2rgb: name2rgb.html
.. _colormap: colormap.html


