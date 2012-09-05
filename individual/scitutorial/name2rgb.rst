


name2rgb
========

returns the RGB values of a named color



Calling Sequence
~~~~~~~~~~~~~~~~


::

    rgb=name2rgb(name)




Arguments
~~~~~~~~~

:name name of the color.
: :rgb vector of RGB integer values of a color.
:



Description
~~~~~~~~~~~

`name2rgb` returns the RGB values of a color given by its name. The
result is a vector `[r,g,b]` where `r`, `g` and `b` are integers
between 0 and 255 corresponding to colors components red, green and
blue. As usual 0 means no intensity and 255 means all the intensity of
the color.

If no color is found `[]` is returned.

The list of all known colors is given by `color_list`_.



Sample
~~~~~~



Examples
~~~~~~~~


::

    rgb=name2rgb("gold")
    `rgb2name`_(rgb)




See Also
~~~~~~~~


+ `color`_ returns the color id of a color
+ `color_list`_ list of named colors
+ `rgb2name`_ returns the name of a color


.. _rgb2name: rgb2name.html
.. _color: color.html
.. _color_list: color_list.html


