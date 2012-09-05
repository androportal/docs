


colordef
========

Set default color values to display different color schemes



Calling Sequence
~~~~~~~~~~~~~~~~


::

    colordef(color_scheme)
    colordef(f,color_scheme)
    colordef('new',color_scheme)




Arguments
~~~~~~~~~

:color_scheme a character string with possible value: 'white',
  'black','none'
: :f a handle on a graphic figure
:



Description
~~~~~~~~~~~


+ `colordef('white')` sets the default figure (see `gdf`_) colormap to
  `jetcolormap(64)`, the default figure background color to light gray
  and the default axes (see `gda`_) background color to white, the axes
  lines foreground and font color to black.
+ `colordef('black')` sets the default figure (see `gdf`_) colormap to
  `jetcolormap(64)`, the default figure background color to dark gray
  and the default axes (see `gda`_) background color to black, the axes
  lines foreground and font color to white.
+ `colordef('none')` sets the default figure (see `gdf`_) colormap to
  `hsvcolormap(64)`, the default figure background color to dark gray
  and the default axes (see `gda`_) background color to black, the axes
  lines foreground and font color to white.
+ `colordef(f,color_scheme)` sets the color properties of figure given
  by the handle `f` as well as the color properties of its current axes.
+ `colordef('new',color_scheme)` creates a new graphic window and its
  color properties as well as the properties of its axes.




Sample
~~~~~~



Examples
~~~~~~~~


::






See Also
~~~~~~~~


+ `gdf`_ Return handle of default figure.
+ `gda`_ Return handle of default axes.
+ `figure_properties`_ description of the graphics figure entity
  properties
+ `axes_properties`_ description of the axes entity properties


.. _gda: gda.html
.. _axes_properties: axes_properties.html
.. _gdf: gdf.html
.. _figure_properties: figure_properties.html


