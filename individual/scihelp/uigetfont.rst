


uigetfont
=========

Opens a dialog for selecting a font.



Calling Sequence
~~~~~~~~~~~~~~~~


::

    uigetfont()
    
    [fontname [,fontsize [,bold [,italic]]]] = uigetfont([defaultfontname [,defaultfontsize [,defaultbold [,defaultitalic]]]]);
    
    [fontname ,fontsize ,bold ,italic] = uigetfont(defaultfontname ,defaultfontsize ,defaultbold ,defaultitalic);




Arguments
~~~~~~~~~

:defaultfontname String: the default font name to select in the
  dialog.
: :defaultfontsize Scalar: the default font size to select in the
  dialog.
: :defaultbold Boolean: the default bold attribute in the dialog (%T
  for bold font, %F otherwise).
: :defaultitalic Boolean: the default italic attribute in the dialog
  (%T for bold font, %F otherwise).
: :fontname The selected font name ("" if the user cancels).
: :fontsize The selected font size ([] if the user cancels).
: :bold %T if bold attribute has been selected, %F otherwise ([] if
  the user cancels).
: :italic %T if italic attribute has been selected, %F otherwise ([]
  if the user cancels).
:



Description
~~~~~~~~~~~

Creates a dialog window for selecting a font.



Examples
~~~~~~~~


::

    uigetfont()
    uigetfont("arial")
    uigetfont("arial", 24)
    uigetfont("arial", 24, %T)
    uigetfont("arial", 24, %T, %F)




See Also
~~~~~~~~


+ `getfont`_ dialog to select font .Obsolete function.


.. _getfont: getfont.html


