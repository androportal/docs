


figure
======

create a figure



Calling Sequence
~~~~~~~~~~~~~~~~


::

    f = figure(num);
    f = figure("PropertyName1", Propertyvalue1, ..., ..., "PropertyNameN", PropertyvalueN);




Description
~~~~~~~~~~~

This routine creates a figure. If an ID is given, the figure
corresponding to this ID is created. Otherwise, the window is created
with the first free ID, that is the lowest integer not already used by
a window.



Arguments
~~~~~~~~~

:num ID of the window to create. If not specified, the first free ID
  is used.
: :PropertyName{1, ..., N} character string name of a property to set.
  One of the property names listed below.
: :PropertyValue{1, ..., N} scilab object value to give to the
  corresponding property.
: :f handle of the newly created window.
:



Properties
~~~~~~~~~~

:BackgroundColor [1,3] real vector or string Background color of the
  figure. A color is specified as Red, Green and Blue values. Those
  values are real in [0,1]. The color can be given as a real vector, ie
  [R,G,B] or a string where each value is separated by a "|", ie "R|G|B"
: :Figure_name character string, allows to set the title of the
  figure.
: :ForegroundColor [1,3] real vector or string Foreground color of the
  figure. A color is specified as Red, Green and Blue values. Those
  values are real in [0,1]. The color can be given as a real vector, ie
  [R,G,B] or a string where each value is separated by a "|", ie "R|G|B"
: :Position allows to control the geometrical aspect of the figure. It
  is a [1,4] real vector [x y width height] where the letters stand for
  the x location of the top left corner, the y location of the top left
  corner, the width and the height of the virtual graphics window (the
  part of the figure which contains uicontrols and graphics). See the
  **axes_size** property description in `figure properties`_ help page.
  One can also set this property by giving a string where the fields are
  separated by a "|", ie "x|y|width|height".
: :Tag string this property is generally used to identify the figure.
  It allows to give it a "name". Mainly used in conjontion with
  findobj().
: :Userdata this can be used to associate some Scilab objects to a
  fugure.
:



Examples
~~~~~~~~


::

    // Create figure having figure_id==3
    h=figure(3);
    // Add a text uicontrol in figure 3
    `uicontrol`_(h, "style", "text", ...
                 "string", "This is a figure", ...
                 "position", [50 70 100 100], ...
                 "fontsize",15);
    
    // Create figure having figure_id==1
    figure();
    // Add a text uicontrol in figure 1
    `uicontrol`_("style", "text", ...
              "string", "Another figure", ...
              "position", [50 70 100 100], ...
              "fontsize", 15);
    
    // Close current figure (ie figure 1)
    `close`_();
    // close figure 3
    `close`_(h);




See Also
~~~~~~~~


+ `close`_ close a figure
+ `gcf`_ Return handle of current graphic window.


.. _figure properties: figure_properties.html
.. _gcf: gcf.html
.. _close: close.html


