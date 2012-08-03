====
"colordef"
====

Scilab Function Last update : 14/06/2005
**colordef** - Set default color values to display different color
schemes



Calling Sequence
~~~~~~~~~~~~~~~~

colordef(color_scheme)
colordef(f,color_scheme)
colordef('new',color_scheme)




Parameters
~~~~~~~~~~


+ **color_scheme** : a character string with possible value: 'white',
  'black','none'
+ **f** : a handle on a graphic figure




Description
~~~~~~~~~~~

**** **colordef('white')** sets the default figure (see ` **gdf** `_)
  colormap to **jetcolormap(64)** , the default figure background color
  to light gray and the default axes (see ` **gda** `_) background color
  to white, the axes lines foreground and font color to black.
**** **colordef('black')** sets the default figure (see ` **gdf** `_)
  colormap to **jetcolormap(64)** , the default figure background color
  to dark gray and the default axes (see ` **gda** `_) background color
  to black, the axes lines foreground and font color to white.
**** **colordef('none')** sets the default figure (see ` **gdf** `_)
  colormap to **hsvcolormap(64)** , the default figure background color
  to dark gray and the default axes (see ` **gda** `_) background color
  to black, the axes lines foreground and font color to white.
**** **colordef(f,color_scheme)** sets the color properties of figure
  given by the handle **f** as well as the color properties of its
  current axes.
**** **colordef('new',color_scheme)** creates a new graphic window and
  its color properties as well as the properties of its axes.




Examples
~~~~~~~~


::

    
       // Add here scilab instructions and comments
      




See Also
~~~~~~~~

` ** gdf** `_,` ** gda** `_,` ** figure_properties** `_,` **
axes_properties** `_,



Authors
~~~~~~~

**S. Steer** INRIA


.. _
      : ://./graphics/gdf.htm
.. _
      : ://./graphics/gda.htm
.. _
      : ://./graphics/axes_properties.htm
.. _
      : ://./graphics/figure_properties.htm


