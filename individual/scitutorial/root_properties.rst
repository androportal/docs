


root_properties
===============

description of the root object properties.



Description
~~~~~~~~~~~

The root object is a virtual object used to get the computer screen
properties. Use `get` function with *0* as first argument to access
its properties.

:Root properties
    :screensize_px: The screen size in pixels.
    : :screensize_pt: The screen size in points.
    : :screensize_mm: The screen size in millimeters.
    : :screensize_cm: The screen size in centimeters.
    : :screensize_in: The screen size in inches.
    : :screensize_norm: The normalized screen size.
    : :screendepth: The number of bits used to encode colors.
    :

:



Examples
~~~~~~~~


::

    `get`_(0, "screensize_px")
    `get`_(0, "screendepth")




See Also
~~~~~~~~


+ `get`_ Retrieve a property value from a graphics entity or an User
  Interface object.


.. _get: get.html


