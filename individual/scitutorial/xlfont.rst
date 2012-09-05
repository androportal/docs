


xlfont
======

load a font in the graphic context or query loaded font



Calling Sequence
~~~~~~~~~~~~~~~~


::

    xlfont(font-name)
    xlfont(font-filename)
    xlfont('reset')
    xlfont(font-name,font-id)
    xlfont(font-filename,font-id)
    xlfont(font-name,font-id,bold)
    xlfont(font-name,font-id,bold,italic)
    fonts=xlfont('AVAILABLE_FONTS')
    fonts=xlfont()




Arguments
~~~~~~~~~

:font-name string, name of the font family.
: :font-filename string, filename of a true type font.
: :font-id integer >= 0 .
: :fonts a column vector of font names.
: :bold a boolean %t if bold
: :italic a boolean %t if italic
:



Description
~~~~~~~~~~~

Without any argument, `xlfont()` returns the list of currently loaded
fonts.

xlfont('AVAILABLE_FONTS') returns list of fonts available on your
system.

xlfont('reset') reset to initial index list of fonts.

With arguments, `xlfont` is used to load a new font at different sizes
in the graphics context.

Default family fonts are "Monospaced" (0), "Symbol" (1), "Serif" (2),
"Serif Italic" (3), "Serif Bold" (4), "Serif Bold Italic" (5),
"SansSerif" (6), "SansSerif Italic" (7), "SansSerif Bold" (8),
"SansSerif Bold Italic" (9). These default fonts are automatically
loaded when needed and so `xlfont` is not really required for them. In
fact `xlfont` is essentially useful to load a new font.



Examples
~~~~~~~~


::

    xlfont('reset');
    xlfont()
    
    // Caution : this example may not work if your system have not Monospaced font.
    xlfont("Monospaced",10,%t,%t);
    `xstring`_(1,0,'A title');
    figure_entity = `gcf`_();
    axes_entity = figure_entity.children;
    title_entity = axes_entity.children;
    title_entity.font_style = 10;
    
    xlfont('reset');




See Also
~~~~~~~~


+ `getfont`_ dialog to select font .Obsolete function.


.. _getfont: getfont.html


