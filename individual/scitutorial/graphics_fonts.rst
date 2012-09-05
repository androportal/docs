


graphics_fonts
==============

description of fonts used in graphic figures



Description
~~~~~~~~~~~

Some Graphic entities such as Text, Axes, Label or Legend entities
display one or more character strings in graphic figures. The
appearance of the displayed strings can be modified by specifying
different fonts and character sizes.



:Changing font Fonts used in graphic figures are selected from a set
  of fonts called loaded fonts. In other words, the loaded fonts are the
  ones currenlty available in graphic figures. The list of these fonts
  can be obtained using the `xlfont` function without argument. By
  default, Scilab contains a set of 11 loaded fonts. This set can be
  modified and extended using the `xlfont` function with a font name as
  argument. The added font can either be loaded from a file or be one of
  the system. To know the list of fonts available on the system use the
  `xlfont('AVAILABLE_FONTS')` command. For more information on how to
  manipulate fonts see `xlfont`_. Here is the list of the 11 default
  fonts. **Font number** **Font Family** **Bold** **Italic** 0
  Monospaced No No 1 ScilabSymbols No No 2 Serif No No 3 Serif No Yes 4
  Serif Yes No 5 Serif Yes Yes 6 SansSerif No No 7 SansSerif No Yes 8
  SansSerif Yes No 9 SansSerif Yes Yes 10 SansSerif Yes Yes The font
  used by a graphic entities can be modified with its `font_style`
  property. This is a positive integer referecing one of the loaded
  fonts. Its value must be between 0, referecing the first font, and the
  number of loaded fonts minus one, referencing the last font. The
  `fractional_font` controls the font anti-aliasing. Its value can be
  either `'on'` or `'off'`. If its value is `'on'` the font is smoothed,
  otherwise it's not.
: :Changing character size The text size of a graphic entity is
  modified using the `font_size` property. It is a scalar specifying the
  displayed character size. The Scilab character size is different from
  the Java size. Here is the equivalence between the two scales.
  **Scilab Size** **Java Size** 0 8 1 10 2 12 3 14 4 18 5 24 6 30 7 36 8
  42 9 48 10 54 The character size might not be an integer. In this
  case, the result depends on the entities `fractional_font` property.
  If `fractional_font` property is `'on'` then the displayed font size
  is interpolated between the two closest integer. For example, a font
  size of 2.5 displays characters with a Java size of 13. If
  `fractional_font` property is `'off'` then the displayed font size is
  truncated to its integer part. For example, a font size of 2.5
  displays characters using a Java size of 12.
:



See Also
~~~~~~~~


+ `xlfont`_ load a font in the graphic context or query loaded font
+ `graphics_entities`_ description of the graphics entities data
  structures


.. _graphics_entities: graphics_entities.html
.. _xlfont: xlfont.html


