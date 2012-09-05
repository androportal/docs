****


clear_pixmap
============

erase the pixmap buffer **This function is obsolete.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    clear_pixmap()




Description
~~~~~~~~~~~

If a graphic window `pixmap` property is `"on"` the drawings are send
to a pixmap memory instead of the screen display.



The `clear_pixmap()` instruction erase the pixmap, but not the screen.



The pixmap mode can be used to obtain smooth animations.

WARNING: This function is obsolete from Scilab 5.4.0 and is going to
be removed with Scilab 5.4.1 Please use `drawlater`_/`drawnow`_
instead.



See Also
~~~~~~~~


+ `figure_properties`_ description of the graphics figure entity
  properties
+ `show_pixmap`_ send the pixmap buffer to the screen This function is
  obsolete.
+ `drawlater`_ makes axes children invisible.
+ `drawnow`_ draw hidden graphics entities.




History
~~~~~~~
Version Description 5.4.0 Function clear_pixmap is obsolete.
.. _figure_properties: figure_properties.html
.. _drawnow: drawnow.html
.. _show_pixmap: show_pixmap.html
.. _drawlater: drawlater.html


