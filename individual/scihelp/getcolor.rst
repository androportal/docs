


getcolor
========

opens a dialog to show colors in the current colormap



Calling Sequence
~~~~~~~~~~~~~~~~


::

    c=getcolor(title,[cini])
    c=getcolor()




Arguments
~~~~~~~~~

:title string, dialog title.
: :cini initial selected color id. Default value is 1.
: :c selected color id or [] if the selection is cancelled.
:



Description
~~~~~~~~~~~

`getcolor` opens a window displaying the palette of the current
colormap. The user can click on a color to show its id and RGB values.
`getcolor` returns the id of the selected color or [] if the "Cancel"
button has been clicked or the window closed.



See Also
~~~~~~~~


+ `color`_ returns the color id of a color
+ `colormap`_ using colormaps
+ `getmark`_ dialog to select mark (symbol). Obsolete function
+ `getfont`_ dialog to select font .Obsolete function.


.. _getmark: getmark.html
.. _getfont: getfont.html
.. _colormap: colormap.html
.. _color: color.html


