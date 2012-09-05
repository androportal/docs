


rgb2name
========

returns the name of a color



Calling Sequence
~~~~~~~~~~~~~~~~


::

    names=rgb2name(r,g,b)
    names=rgb2name(rgb)




Arguments
~~~~~~~~~

:r,g,b RGB integer values of a color.
: :rgb vector of RGB integer values of a color.
: :names names of the color.
:



Description
~~~~~~~~~~~

`rgb2name` returns the color name corresponding to the RGB values
given by its argument. A vector of color names can also be returned if
the color has more than 1 name. `r`, `g` and `b` must be integers
between 0 and 255 corresponding to colors components red, green and
blue. As usual 0 means no intensity and 255 means all the intensity of
the color. RGB values can also be given by a vector `[r,g,b]`.

If no color is found `[]` is returned.

The list of all known colors is given by `color_list`_.



Examples
~~~~~~~~


::

    rgb2name(255,128,128)
    rgb2name([255 215 0])
    // get color #10 of the current colormap and find its name
    cmap=`get`_(`gcf`_(),"color_map");
    rgb2name(cmap(10,:)*255)




See Also
~~~~~~~~


+ `color`_ returns the color id of a color
+ `color_list`_ list of named colors
+ `name2rgb`_ returns the RGB values of a named color


.. _name2rgb: name2rgb.html
.. _color: color.html
.. _color_list: color_list.html


