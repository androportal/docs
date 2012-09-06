


color
=====

returns the color id of a color



Calling Sequence
~~~~~~~~~~~~~~~~


::

    id=color(name)
    id=color(r,g,b)




Arguments
~~~~~~~~~

:name name of a color.
: :r,g,b RGB integer values of a color.
: :id id of the color.
:



Description
~~~~~~~~~~~

`color` returns the color id corresponding to its argument:


+ `name` must be the name of a known color (see `color_list`_).
+ `r`, `g` and `b` must be integers between 0 and 255 corresponding to
  colors components red, green and blue. As usual 0 means no intensity
  and 255 means all the intensity of the color.


If the requested color does not exist in the current colormap it is
added to the colormap. If no window exists, the color is added to the
default figure colormap.

This function can be used to specify the foreground or background
colors when plotting.



Sample
~~~~~~



Examples
~~~~~~~~


::

    x=`linspace`_(-2*%pi,2*%pi,100)';
    // using existing colors
    `plot2d`_(x,[`sin`_(x),`cos`_(x)],style=[color("red"),color("green")]);
    // new colors: there are added to the colormap
    e=`gce`_(); p1=e.children(1); p2=e.children(2);
    p1.foreground=color("purple"); p2.foreground=color("navy blue");
    // using RGV values
    p1.foreground=color(255,128,128);




See Also
~~~~~~~~


+ `colormap`_ using colormaps
+ `color_list`_ list of named colors
+ `getcolor`_ opens a dialog to show colors in the current colormap


.. _colormap: colormap.html
.. _color_list: color_list.html
.. _getcolor: getcolor.html


