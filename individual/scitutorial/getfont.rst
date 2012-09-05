****


getfont
=======

dialog to select font **.Obsolete function.**



Calling Sequence
~~~~~~~~~~~~~~~~


::

    [fId,fSize]=getfont()
    [fId,fSize]=getfont(str)
    fnt=getfont()
    fnt=getfont(str)
    fnt=getfont(S=str,font=[fId,fSize])




Arguments
~~~~~~~~~

:str character (e.g. "a")
: :fId integer, the number of the selected font
: :fSize integer, the size of the selected font
: :fnt vector [fId,fSize]
:



Description
~~~~~~~~~~~

This function designed to work with the `xset`_ function **is also
obsolete** .Use the property editor `ged`_ instead.

`getfont` opens a graphic window to select a font. User has to select
a font and a size clicking on the corresponding displayed character.
Killing a keyboard key changes the displayed character.



Examples
~~~~~~~~


::

    [fId,fSize]=getfont();
    `xset`_("font",fId,fSize)
    `plot2d`_(0,0,rect=[0 0 10 10],axesflag=0)
    `xstring`_(5,5,"string")




See Also
~~~~~~~~


+ `ged`_ Scilab Graphic Editor
+ `text_properties`_ description of the Text entity properties


.. _ged: ged.html
.. _xset: xset.html
.. _text_properties: text_properties.html


