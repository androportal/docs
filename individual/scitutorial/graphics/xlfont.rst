====
"xlfont"
====

Scilab Function Last update : 13/12/2005
**xlfont** - load a font in the graphic context or query loaded font



Calling Sequence
~~~~~~~~~~~~~~~~

xlfont(font-name,font-id)
fonts=xlfont()




Parameters
~~~~~~~~~~


+ **font-name** : string, name of the font family.
+ **font-id** : integer between 0 and 10.
+ **fonts** : a column vector of currently loaded font names.




Description
~~~~~~~~~~~

Without any argument, **xlfont()** returns the list of currently
loaded fonts.

With arguments, **xlfont** is used to load a new font at different
sizes in the graphics context. The font must be available with size 8,
10, 12, 14, 18 and 24.

Default fonts are "Courier Roman" (0), "Symbol" (1), "Times Roman"
(2), "Times Italic" (3), "Times Bold" (4), "Times Bold Italic" (5),
"Helvetica" (6), "Helvetica Oblique" (7), "Helvetica Bold" (8),
"Helvetica Bold Oblique" (9). These default fonts are automaticaly
loaded when needed and so **xlfont** is not really required for them.
In fact **xlfont** is essentially useful to load a new font.

font-name can be of 2 types:

**-** if it contains the character "%", it is supposed to be an X11
  font name with %s in the size field of the name, for example **"-b&h
  -lucidabright-demibold-r-normal--%s-*-75-75-p-*-iso8859-1"**
**-** if it does not contain the character "%", it is supposed to be
  an alias name and the fonts aliased by **font-name08,...,font-name24**
  are loaded.
**font-id**: give the id **font-id** to the loaded font **font-name**
  .


Currently this load font feature works only for screen drivers and not
for others (Postscript, Fig, Gif, PPM). If you export a graphical
screen output in Postscript, Fig, Gif or PPM while you have previously
loaded a new font, the behavior depends of the choice of the
identifier **font-id** for the loaded font :

**-**if **font-id=10** then the strings (drawn with this font) will be
  drawn with the default font (Times) at the same size;
**-**else the strings will be drawn with the default font
  corresponding to **font-id** .




Examples
~~~~~~~~


::

    
    
    // Caution : this example may not work if your system have not
    //           the schoolbook bold font 
    if MSDOS then
       xlfont("Century Schoolbook Bold",10)
    else
       xlfont("-adobe-new century schoolbook-bold-r-normal-*-%s-*-75-75-*-*-iso8859-1",10)
    end
    xset("font", 10, 4) // use Schoolbook bold at 18 pts
    plot2d()
     
      




See Also
~~~~~~~~

` **xset** `_,` **getfont** `_,



Author
~~~~~~

J.Ph.C.

.. _
      : ://./graphics/getfont.htm
.. _
      : ://./graphics/xset.htm


