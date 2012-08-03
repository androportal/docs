====
"getcolor"
====

Scilab Function Last update : 12/04/2004
**getcolor** - opens a dialog to show colors in the current colormap



Calling Sequence
~~~~~~~~~~~~~~~~

c=getcolor(title,[cini])
c=getcolor()




Parameters
~~~~~~~~~~


+ **title** : string, dialog title.
+ **cini** : initial selected color id. Default value is 1.
+ **c** : selected color id or [] if the user has clicked on the
  "Cancel" button.




Description
~~~~~~~~~~~

**getcolor** opens a window displaying the palette of the current
colormap. The user can click on a color to show its id and RGB values.
**getcolor** returns the id of the selected color or [] if the user
has clicked on the "Cancel" button



See Also
~~~~~~~~

` **color** `_,` **colormap** `_,` **getmark** `_,` **getfont** `_,

.. _
      : ://./graphics/color.htm
.. _
      : ://./graphics/getfont.htm
.. _
      : ://./graphics/colormap.htm
.. _
      : ://./graphics/getmark.htm


