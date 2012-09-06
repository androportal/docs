


uigetcolor
==========

Opens a dialog for selecting a color.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    uigetcolor()
    RGB = uigetcolor([title])
    RGB = uigetcolor([title,] defaultRGB)
    RGB = uigetcolor([title,] defaultRed, defaultGreen, defaultBlue)
    [R, G, B] = uigetcolor([title])
    [R, G, B] = uigetcolor([title,] defaultRGB)
    [R, G, B] = uigetcolor([title,] defaultRed, defaultGreen, defaultBlue)




Arguments
~~~~~~~~~

:title String: Optional argument, the title to display in the dialog.
  Default value is "Color Chooser".
: :defaultRGB 1x3 vector: the default values for Red, Green and Blue
  values given as a vector [red, green, blue].
: :defaultRed Scalar: the default value for red.
: :defaultGreen Scalar: the default value for green.
: :defaultBlue Scalar: the default value for blue.
: :RGB 1x3 vector: the values for Red, Green and Blue values given as
  a vector [red, green, blue] or [] if the user cancels.
: :R Scalar: the value for red or [] if the user cancels.
: :G Scalar: the value for green or [] if the user cancels.
: :B Scalar: the value for blue or [] if the user cancels.
:



Description
~~~~~~~~~~~

Creates a dialog window for selecting a color. All (default and
returned) values must be in the interval [0 255].



Examples
~~~~~~~~


::

    uigetcolor()
    [R, G, B] = uigetcolor([255 128 0])
    RBG = uigetcolor(0, 128, 255)
    RBG = uigetcolor("My color chooser", 0, 128, 255)




See Also
~~~~~~~~


+ `getcolor`_ opens a dialog to show colors in the current colormap


.. _getcolor: getcolor.html


